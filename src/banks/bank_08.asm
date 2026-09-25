; PRG bank $08: ROM file $020010-$02400F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank08_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank08_MapTileServiceDirectory:
        db   $88,$B1,$F1,$B5,$C7,$84,$E5,$86 ; 8000 88 B1 F1 B5 C7 84 E5 86  ........
        db   $D3,$85,$B8,$B6,$5D,$B7,$F2,$86 ; 8008 D3 85 B8 B6 5D B7 F2 86  ....]...
        db   $E3,$AE,$6A,$B0,$2E,$B2,$76,$86 ; 8010 E3 AE 6A B0 2E B2 76 86  ..j...v.
        db   $F7,$B7,$68,$86,$0E,$B7,$1C,$B7 ; 8018 F7 B7 68 86 0E B7 1C B7  ..h.....
        db   $0E,$B6,$10,$87,$96,$87,$E5,$B4 ; 8020 0E B6 10 87 96 87 E5 B4  ........
        db   $AE,$B7,$C2,$84,$9B,$97,$D0,$A1 ; 8028 AE B7 C2 84 9B 97 D0 A1  ........
        db   $DB,$8A,$0D,$A8,$04,$B3,$94,$BE ; 8030 DB 8A 0D A8 04 B3 94 BE  ........
        db   $25,$B7,$97,$80                 ; 8038 25 B7 97 80              %...
; ----------------------------------------------------------------------------
Bank08_MapTileServices:
        lda     #$00                            ; 803C A9 00                    ..
        ldx     #$1F                            ; 803E A2 1F                    ..
MapTileSystem_Branch_8040:
        sta     $6F20,x                         ; 8040 9D 20 6F                 . o
        sta     $6F40,x                         ; 8043 9D 40 6F                 .@o
        sta     $7600,x                         ; 8046 9D 00 76                 ..v
        dex                                     ; 8049 CA                       .
        bpl     MapTileSystem_Branch_8040       ; 804A 10 F4                    ..
        ldx     #$9F                            ; 804C A2 9F                    ..
MapTileSystem_Branch_804E:
        sta     $761F,x                         ; 804E 9D 1F 76                 ..v
        dex                                     ; 8051 CA                       .
        bne     MapTileSystem_Branch_804E       ; 8052 D0 FA                    ..
        rts                                     ; 8054 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8055:
        ldx     $09                             ; 8055 A6 09                    ..
        lda     $80B3,x                         ; 8057 BD B3 80                 ...
        sta     $0E                             ; 805A 85 0E                    ..
        lda     $80B4,x                         ; 805C BD B4 80                 ...
        sta     $0F                             ; 805F 85 0F                    ..
        lda     $28                             ; 8061 A5 28                    .(
        asl     a                               ; 8063 0A                       .
        ldx     $09                             ; 8064 A6 09                    ..
        beq     MapTileSystem_Branch_806A       ; 8066 F0 02                    ..
        adc     $07                             ; 8068 65 07                    e.
MapTileSystem_Branch_806A:
        sta     $00                             ; 806A 85 00                    ..
        lda     #$00                            ; 806C A9 00                    ..
        sta     $01                             ; 806E 85 01                    ..
        ldx     #$05                            ; 8070 A2 05                    ..
MapTileSystem_Branch_8072:
        asl     $00                             ; 8072 06 00                    ..
        rol     $01                             ; 8074 26 01                    &.
        dex                                     ; 8076 CA                       .
        bne     MapTileSystem_Branch_8072       ; 8077 D0 F9                    ..
        ldx     #$0E                            ; 8079 A2 0E                    ..
        ldy     $01                             ; 807B A4 01                    ..
        lda     $00                             ; 807D A5 00                    ..
        jmp     LowerFixedEngine_Entry_C81D     ; 807F 4C 1D C8                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8082:
        ldy     #$00                            ; 8082 A0 00                    ..
MapTileSystem_Branch_8084:
        lda     ($0E),y                         ; 8084 B1 0E                    ..
        sta     $0A,y                           ; 8086 99 0A 00                 ...
        iny                                     ; 8089 C8                       .
        cpy     #$02                            ; 808A C0 02                    ..
        bne     MapTileSystem_Branch_8084       ; 808C D0 F6                    ..
        lda     SaveCurrentChapterMinus1        ; 808E AD 5A 61                 .Za
        cmp     #$01                            ; 8091 C9 01                    ..
        beq     MapTileSystem_Branch_80B2       ; 8093 F0 1D                    ..
        cmp     #$02                            ; 8095 C9 02                    ..
MapTileSystem_Entry_8097:
        beq     MapTileSystem_Branch_80AB       ; 8097 F0 12                    ..
MapTileSystem_Branch_8099:
        lda     $0A                             ; 8099 A5 0A                    ..
        bne     MapTileSystem_Branch_80B2       ; 809B D0 15                    ..
        lda     $0B                             ; 809D A5 0B                    ..
        cmp     #$17                            ; 809F C9 17                    ..
        bne     MapTileSystem_Branch_80B2       ; 80A1 D0 0F                    ..
        lda     #$00                            ; 80A3 A9 00                    ..
        sta     $0A                             ; 80A5 85 0A                    ..
        lda     #$12                            ; 80A7 A9 12                    ..
        sta     $0B                             ; 80A9 85 0B                    ..
MapTileSystem_Branch_80AB:
        lda     $6286                           ; 80AB AD 86 62                 ..b
        and     #$10                            ; 80AE 29 10                    ).
        bne     MapTileSystem_Branch_8099       ; 80B0 D0 E7                    ..
MapTileSystem_Branch_80B2:
        rts                                     ; 80B2 60                       `
; ----------------------------------------------------------------------------
        db   $DB                             ; 80B3 DB                       .
        db   $8A,$9B,$97                     ; 80B4 8A 9B 97                 ...
; ----------------------------------------------------------------------------
MapTileSystem_Entry_80B7:
        lda     $80C2                           ; 80B7 AD C2 80                 ...
        sta     $0E                             ; 80BA 85 0E                    ..
        lda     $80C3                           ; 80BC AD C3 80                 ...
        sta     $0F                             ; 80BF 85 0F                    ..
        rts                                     ; 80C1 60                       `
; ----------------------------------------------------------------------------
        db   $BB                             ; 80C2 BB                       .
        db   $8A                             ; 80C3 8A                       .
; ----------------------------------------------------------------------------
MapTileSystem_Entry_80C4:
        ldy     #$00                            ; 80C4 A0 00                    ..
        lda     ($0E),y                         ; 80C6 B1 0E                    ..
        sta     $0B                             ; 80C8 85 0B                    ..
        iny                                     ; 80CA C8                       .
        lda     ($0E),y                         ; 80CB B1 0E                    ..
        sta     $0A                             ; 80CD 85 0A                    ..
        iny                                     ; 80CF C8                       .
        lda     ($0E),y                         ; 80D0 B1 0E                    ..
        sta     $0C                             ; 80D2 85 0C                    ..
        rts                                     ; 80D4 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_80D5:
        lda     #$00                            ; 80D5 A9 00                    ..
        sta     $76                             ; 80D7 85 76                    .v
        lda     $0A                             ; 80D9 A5 0A                    ..
        and     #$07                            ; 80DB 29 07                    ).
        sta     $01                             ; 80DD 85 01                    ..
        lda     $0B                             ; 80DF A5 0B                    ..
        sta     $00                             ; 80E1 85 00                    ..
        ldx     $09                             ; 80E3 A6 09                    ..
        bne     MapTileSystem_Branch_8132       ; 80E5 D0 4B                    .K
        ldx     #$00                            ; 80E7 A2 00                    ..
        ldy     $01                             ; 80E9 A4 01                    ..
        lda     $00                             ; 80EB A5 00                    ..
        asl     $00                             ; 80ED 06 00                    ..
        rol     $01                             ; 80EF 26 01                    &.
        jsr     LowerFixedEngine_Entry_C81D     ; 80F1 20 1D C8                  ..
        lda     $8235                           ; 80F4 AD 35 82                 .5.
        ldy     $8236                           ; 80F7 AC 36 82                 .6.
        ldx     #$00                            ; 80FA A2 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; 80FC 20 1D C8                  ..
        ldy     #$02                            ; 80FF A0 02                    ..
        lda     ($00),y                         ; 8101 B1 00                    ..
        sta     $0C                             ; 8103 85 0C                    ..
        dey                                     ; 8105 88                       .
        lda     ($00),y                         ; 8106 B1 00                    ..
        lsr     a                               ; 8108 4A                       J
        lsr     a                               ; 8109 4A                       J
        lsr     a                               ; 810A 4A                       J
        lsr     a                               ; 810B 4A                       J
        sta     $08                             ; 810C 85 08                    ..
        lda     ($00),y                         ; 810E B1 00                    ..
        and     #$04                            ; 8110 29 04                    ).
        lsr     a                               ; 8112 4A                       J
        lsr     a                               ; 8113 4A                       J
        sta     $76                             ; 8114 85 76                    .v
        lda     ($00),y                         ; 8116 B1 00                    ..
        and     #$03                            ; 8118 29 03                    ).
        tax                                     ; 811A AA                       .
        dey                                     ; 811B 88                       .
        lda     ($00),y                         ; 811C B1 00                    ..
        sta     $00                             ; 811E 85 00                    ..
        stx     $01                             ; 8120 86 01                    ..
        lda     $08                             ; 8122 A5 08                    ..
        cmp     #$0F                            ; 8124 C9 0F                    ..
        beq     MapTileSystem_Branch_812F       ; 8126 F0 07                    ..
        cmp     #$0E                            ; 8128 C9 0E                    ..
        bne     MapTileSystem_Branch_814A       ; 812A D0 1E                    ..
        jmp     MapTileSystem_Branch_81E8       ; 812C 4C E8 81                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_812F:
        jmp     MapTileSystem_Branch_81C6       ; 812F 4C C6 81                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8132:
        lda     $0A                             ; 8132 A5 0A                    ..
        and     #$03                            ; 8134 29 03                    ).
        sta     $01                             ; 8136 85 01                    ..
        lda     $0C                             ; 8138 A5 0C                    ..
        lsr     a                               ; 813A 4A                       J
        lsr     a                               ; 813B 4A                       J
        cmp     #$3F                            ; 813C C9 3F                    .?
        beq     MapTileSystem_Branch_812F       ; 813E F0 EF                    ..
        sta     $08                             ; 8140 85 08                    ..
        lda     $0A                             ; 8142 A5 0A                    ..
        and     #$04                            ; 8144 29 04                    ).
        lsr     a                               ; 8146 4A                       J
        lsr     a                               ; 8147 4A                       J
        sta     $76                             ; 8148 85 76                    .v
MapTileSystem_Branch_814A:
        ldx     #$04                            ; 814A A2 04                    ..
MapTileSystem_Branch_814C:
        asl     $00                             ; 814C 06 00                    ..
        rol     $01                             ; 814E 26 01                    &.
        dex                                     ; 8150 CA                       .
        bne     MapTileSystem_Branch_814C       ; 8151 D0 F9                    ..
        lda     $09                             ; 8153 A5 09                    ..
        asl     a                               ; 8155 0A                       .
        ora     $76                             ; 8156 05 76                    .v
        asl     a                               ; 8158 0A                       .
        tax                                     ; 8159 AA                       .
        lda     Bank08_GraphicsBasePointers,x   ; 815A BD 29 82                 .).
        ldy     $822A,x                         ; 815D BC 2A 82                 .*.
        ldx     #$00                            ; 8160 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; 8162 20 1D C8                  ..
        ldx     $09                             ; 8165 A6 09                    ..
        lda     $8237,x                         ; 8167 BD 37 82                 .7.
        sta     $02                             ; 816A 85 02                    ..
        lda     $8238,x                         ; 816C BD 38 82                 .8.
        sta     $03                             ; 816F 85 03                    ..
        lda     $08                             ; 8171 A5 08                    ..
        asl     a                               ; 8173 0A                       .
        adc     $08                             ; 8174 65 08                    e.
        ldx     #$02                            ; 8176 A2 02                    ..
        jsr     LowerFixedEngine_Entry_C813     ; 8178 20 13 C8                  ..
        lda     $00                             ; 817B A5 00                    ..
        sta     $0100                           ; 817D 8D 00 01                 ...
        lda     $01                             ; 8180 A5 01                    ..
        sta     $0101                           ; 8182 8D 01 01                 ...
        ldy     #$00                            ; 8185 A0 00                    ..
MapTileSystem_Branch_8187:
        tya                                     ; 8187 98                       .
        pha                                     ; 8188 48                       H
        lda     ($02),y                         ; 8189 B1 02                    ..
        php                                     ; 818B 08                       .
        ldy     #$00                            ; 818C A0 00                    ..
        plp                                     ; 818E 28                       (
        bpl     MapTileSystem_Branch_8193       ; 818F 10 02                    ..
        ldy     #$FF                            ; 8191 A0 FF                    ..
MapTileSystem_Branch_8193:
        sta     $72                             ; 8193 85 72                    .r
        sty     $73                             ; 8195 84 73                    .s
        asl     $72                             ; 8197 06 72                    .r
        rol     $73                             ; 8199 26 73                    &s
        asl     $72                             ; 819B 06 72                    .r
        rol     $73                             ; 819D 26 73                    &s
        asl     $72                             ; 819F 06 72                    .r
        rol     $73                             ; 81A1 26 73                    &s
        asl     $72                             ; 81A3 06 72                    .r
        rol     $73                             ; 81A5 26 73                    &s
        lda     $72                             ; 81A7 A5 72                    .r
        ldy     $73                             ; 81A9 A4 73                    .s
        ldx     #$00                            ; 81AB A2 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; 81AD 20 1D C8                  ..
        pla                                     ; 81B0 68                       h
        tay                                     ; 81B1 A8                       .
        asl     a                               ; 81B2 0A                       .
        tax                                     ; 81B3 AA                       .
        lda     $00                             ; 81B4 A5 00                    ..
        sta     $0102,x                         ; 81B6 9D 02 01                 ...
        lda     $01                             ; 81B9 A5 01                    ..
        sta     $0103,x                         ; 81BB 9D 03 01                 ...
        iny                                     ; 81BE C8                       .
        cpy     #$03                            ; 81BF C0 03                    ..
        bne     MapTileSystem_Branch_8187       ; 81C1 D0 C4                    ..
        jmp     MapTileSystem_Branch_8981       ; 81C3 4C 81 89                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_81C6:
        lda     $8225                           ; 81C6 AD 25 82                 .%.
        ldy     $8226                           ; 81C9 AC 26 82                 .&.
        asl     $00                             ; 81CC 06 00                    ..
        rol     $01                             ; 81CE 26 01                    &.
        asl     $00                             ; 81D0 06 00                    ..
        rol     $01                             ; 81D2 26 01                    &.
        asl     $00                             ; 81D4 06 00                    ..
        rol     $01                             ; 81D6 26 01                    &.
        ldx     #$00                            ; 81D8 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; 81DA 20 1D C8                  ..
        ldy     #$07                            ; 81DD A0 07                    ..
MapTileSystem_Branch_81DF:
        lda     ($00),y                         ; 81DF B1 00                    ..
        sta     $0100,y                         ; 81E1 99 00 01                 ...
        dey                                     ; 81E4 88                       .
        bpl     MapTileSystem_Branch_81DF       ; 81E5 10 F8                    ..
        rts                                     ; 81E7 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_81E8:
        lda     #$11                            ; 81E8 A9 11                    ..
        sta     $76                             ; 81EA 85 76                    .v
        lda     $8227                           ; 81EC AD 27 82                 .'.
        ldy     $8228                           ; 81EF AC 28 82                 .(.
        asl     $00                             ; 81F2 06 00                    ..
        rol     $01                             ; 81F4 26 01                    &.
        ldx     #$00                            ; 81F6 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; 81F8 20 1D C8                  ..
        ldy     #$01                            ; 81FB A0 01                    ..
        lda     ($00),y                         ; 81FD B1 00                    ..
        sta     $0101                           ; 81FF 8D 01 01                 ...
        sta     $0103                           ; 8202 8D 03 01                 ...
        sta     $0105                           ; 8205 8D 05 01                 ...
        sta     $0107                           ; 8208 8D 07 01                 ...
        dey                                     ; 820B 88                       .
        lda     ($00),y                         ; 820C B1 00                    ..
        sta     $0100                           ; 820E 8D 00 01                 ...
        ldx     #$00                            ; 8211 A2 00                    ..
MapTileSystem_Branch_8213:
        clc                                     ; 8213 18                       .
        adc     #$10                            ; 8214 69 10                    i.
        sta     $0102,x                         ; 8216 9D 02 01                 ...
        bcc     MapTileSystem_Branch_821E       ; 8219 90 03                    ..
        inc     $0103,x                         ; 821B FE 03 01                 ...
MapTileSystem_Branch_821E:
        inx                                     ; 821E E8                       .
        inx                                     ; 821F E8                       .
        cpx     #$06                            ; 8220 E0 06                    ..
        bne     MapTileSystem_Branch_8213       ; 8222 D0 EF                    ..
        rts                                     ; 8224 60                       `
; ----------------------------------------------------------------------------
        db   $8D                             ; 8225 8D                       .
        db   $A2                             ; 8226 A2                       .
        db   $B7                             ; 8227 B7                       .
        db   $AE                             ; 8228 AE                       .
Bank08_GraphicsBasePointers:
        db   $00                             ; 8229 00                       .
        db   $80,$01,$7F,$14,$9E,$00,$00,$04 ; 822A 80 01 7F 14 9E 00 00 04  ........
        db   $B3,$97,$80                     ; 8232 B3 97 80                 ...
        db   $0D                             ; 8235 0D                       .
        db   $A8                             ; 8236 A8                       .
        db   $BB                             ; 8237 BB                       .
        db   $A1,$D0,$A1                     ; 8238 A1 D0 A1                 ...
        db   $00                             ; 823B 00                       .
        db   $76                             ; 823C 76                       v
; ----------------------------------------------------------------------------
MapTileSystem_Entry_823D:
        lda     #$8D                            ; 823D A9 8D                    ..
        sta     $04                             ; 823F 85 04                    ..
        lda     $823B                           ; 8241 AD 3B 82                 .;.
        sta     $00                             ; 8244 85 00                    ..
        lda     $823C                           ; 8246 AD 3C 82                 .<.
        sta     $01                             ; 8249 85 01                    ..
        lda     $16                             ; 824B A5 16                    ..
        asl     a                               ; 824D 0A                       .
        asl     a                               ; 824E 0A                       .
        ldx     #$00                            ; 824F A2 00                    ..
        jsr     LowerFixedEngine_Entry_C813     ; 8251 20 13 C8                  ..
MapTileSystem_Branch_8254:
        ldx     #$00                            ; 8254 A2 00                    ..
MapTileSystem_Branch_8256:
        lda     $0100,x                         ; 8256 BD 00 01                 ...
        sta     $02                             ; 8259 85 02                    ..
        lda     $0101,x                         ; 825B BD 01 01                 ...
        sta     $03                             ; 825E 85 03                    ..
        txa                                     ; 8260 8A                       .
        pha                                     ; 8261 48                       H
        ldx     $79                             ; 8262 A6 79                    .y
MapTileSystem_Branch_8264:
        dex                                     ; 8264 CA                       .
        dex                                     ; 8265 CA                       .
        cpx     #$FE                            ; 8266 E0 FE                    ..
        beq     MapTileSystem_Branch_828D       ; 8268 F0 23                    .#
        lda     $7700,x                         ; 826A BD 00 77                 ..w
        cmp     $02                             ; 826D C5 02                    ..
        bne     MapTileSystem_Branch_8264       ; 826F D0 F3                    ..
        lda     $7701,x                         ; 8271 BD 01 77                 ..w
        cmp     $03                             ; 8274 C5 03                    ..
        bne     MapTileSystem_Branch_8264       ; 8276 D0 EC                    ..
        txa                                     ; 8278 8A                       .
        lsr     a                               ; 8279 4A                       J
        clc                                     ; 827A 18                       .
        adc     $04                             ; 827B 65 04                    e.
        tay                                     ; 827D A8                       .
        pla                                     ; 827E 68                       h
        pha                                     ; 827F 48                       H
        tax                                     ; 8280 AA                       .
        lda     #$00                            ; 8281 A9 00                    ..
        sta     $0100,x                         ; 8283 9D 00 01                 ...
        sta     $0101,x                         ; 8286 9D 01 01                 ...
        tya                                     ; 8289 98                       .
        jmp     MapTileSystem_Branch_8291       ; 828A 4C 91 82                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_828D:
        lda     $18                             ; 828D A5 18                    ..
        inc     $18                             ; 828F E6 18                    ..
MapTileSystem_Branch_8291:
        tax                                     ; 8291 AA                       .
        pla                                     ; 8292 68                       h
        pha                                     ; 8293 48                       H
        ldy     $09                             ; 8294 A4 09                    ..
        bne     MapTileSystem_Branch_82B0       ; 8296 D0 18                    ..
        lsr     a                               ; 8298 4A                       J
        tay                                     ; 8299 A8                       .
        txa                                     ; 829A 8A                       .
        sta     ($00),y                         ; 829B 91 00                    ..
MapTileSystem_Branch_829D:
        pla                                     ; 829D 68                       h
        pha                                     ; 829E 48                       H
        tax                                     ; 829F AA                       .
        lda     $0100,x                         ; 82A0 BD 00 01                 ...
        ora     $0101,x                         ; 82A3 1D 01 01                 ...
        beq     MapTileSystem_Branch_82AD       ; 82A6 F0 05                    ..
        ldy     $79                             ; 82A8 A4 79                    .y
        jmp     MapTileSystem_Branch_831F       ; 82AA 4C 1F 83                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_82AD:
        jmp     MapTileSystem_Branch_832F       ; 82AD 4C 2F 83                 L/.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_82B0:
        tay                                     ; 82B0 A8                       .
        txa                                     ; 82B1 8A                       .
        sta     ($00),y                         ; 82B2 91 00                    ..
        iny                                     ; 82B4 C8                       .
        pla                                     ; 82B5 68                       h
        pha                                     ; 82B6 48                       H
        lsr     a                               ; 82B7 4A                       J
        tax                                     ; 82B8 AA                       .
        inx                                     ; 82B9 E8                       .
        lda     #$55                            ; 82BA A9 55                    .U
        sta     $02                             ; 82BC 85 02                    ..
        lda     $7A                             ; 82BE A5 7A                    .z
        beq     MapTileSystem_Branch_82C2       ; 82C0 F0 00                    ..
MapTileSystem_Branch_82C2:
        lda     $0A                             ; 82C2 A5 0A                    ..
        and     #$F0                            ; 82C4 29 F0                    ).
        pha                                     ; 82C6 48                       H
        lda     $7A                             ; 82C7 A5 7A                    .z
        beq     MapTileSystem_Branch_8305       ; 82C9 F0 3A                    .:
        lda     $74                             ; 82CB A5 74                    .t
        lsr     a                               ; 82CD 4A                       J
        sta     $75                             ; 82CE 85 75                    .u
        beq     MapTileSystem_Branch_8305       ; 82D0 F0 33                    .3
        lda     $0A                             ; 82D2 A5 0A                    ..
MapTileSystem_Branch_82D4:
        pla                                     ; 82D4 68                       h
        asl     a                               ; 82D5 0A                       .
        php                                     ; 82D6 08                       .
        asl     a                               ; 82D7 0A                       .
        php                                     ; 82D8 08                       .
        asl     a                               ; 82D9 0A                       .
        php                                     ; 82DA 08                       .
        lsr     a                               ; 82DB 4A                       J
        lsr     a                               ; 82DC 4A                       J
        plp                                     ; 82DD 28                       (
        bcc     MapTileSystem_Branch_82E2       ; 82DE 90 02                    ..
        ora     #$80                            ; 82E0 09 80                    ..
MapTileSystem_Branch_82E2:
        plp                                     ; 82E2 28                       (
        bcc     MapTileSystem_Branch_82E7       ; 82E3 90 02                    ..
        ora     #$10                            ; 82E5 09 10                    ..
MapTileSystem_Branch_82E7:
        plp                                     ; 82E7 28                       (
        bcc     MapTileSystem_Branch_82EC       ; 82E8 90 02                    ..
        ora     #$40                            ; 82EA 09 40                    .@
MapTileSystem_Branch_82EC:
        pha                                     ; 82EC 48                       H
        asl     $02                             ; 82ED 06 02                    ..
        dec     $75                             ; 82EF C6 75                    .u
        bne     MapTileSystem_Branch_82D4       ; 82F1 D0 E1                    ..
        pla                                     ; 82F3 68                       h
        sta     $75                             ; 82F4 85 75                    .u
        lda     $74                             ; 82F6 A5 74                    .t
        cmp     #$04                            ; 82F8 C9 04                    ..
        php                                     ; 82FA 08                       .
        cmp     #$06                            ; 82FB C9 06                    ..
        lda     $75                             ; 82FD A5 75                    .u
        bcs     MapTileSystem_Branch_833A       ; 82FF B0 39                    .9
        plp                                     ; 8301 28                       (
        bcc     MapTileSystem_Branch_8307       ; 8302 90 03                    ..
        pha                                     ; 8304 48                       H
MapTileSystem_Branch_8305:
        pla                                     ; 8305 68                       h
        lsr     a                               ; 8306 4A                       J
MapTileSystem_Branch_8307:
        lsr     a                               ; 8307 4A                       J
MapTileSystem_Branch_8308:
        asl     a                               ; 8308 0A                       .
        dex                                     ; 8309 CA                       .
        bne     MapTileSystem_Branch_8308       ; 830A D0 FC                    ..
        and     $02                             ; 830C 25 02                    %.
        and     #$C0                            ; 830E 29 C0                    ).
        pha                                     ; 8310 48                       H
        lda     $0C                             ; 8311 A5 0C                    ..
        and     #$03                            ; 8313 29 03                    ).
        tsx                                     ; 8315 BA                       .
        ora     $0101,x                         ; 8316 1D 01 01                 ...
        sta     ($00),y                         ; 8319 91 00                    ..
        pla                                     ; 831B 68                       h
        jmp     MapTileSystem_Branch_829D       ; 831C 4C 9D 82                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_831F:
        inc     $79                             ; 831F E6 79                    .y
        inc     $79                             ; 8321 E6 79                    .y
        lda     $0100,x                         ; 8323 BD 00 01                 ...
        sta     $7700,y                         ; 8326 99 00 77                 ..w
        lda     $0101,x                         ; 8329 BD 01 01                 ...
        sta     $7701,y                         ; 832C 99 01 77                 ..w
MapTileSystem_Branch_832F:
        pla                                     ; 832F 68                       h
        tax                                     ; 8330 AA                       .
        inx                                     ; 8331 E8                       .
        inx                                     ; 8332 E8                       .
        cpx     #$08                            ; 8333 E0 08                    ..
        beq     MapTileSystem_Branch_839E       ; 8335 F0 67                    .g
        jmp     MapTileSystem_Branch_8256       ; 8337 4C 56 82                 LV.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_833A:
        plp                                     ; 833A 28                       (
        jmp     MapTileSystem_Branch_8307       ; 833B 4C 07 83                 L..
; ----------------------------------------------------------------------------
        db   $00                             ; 833E 00                       .
        db   $72                             ; 833F 72                       r
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8340:
        lda     $16                             ; 8340 A5 16                    ..
        sta     $00                             ; 8342 85 00                    ..
        lda     #$00                            ; 8344 A9 00                    ..
        sta     $01                             ; 8346 85 01                    ..
        asl     $00                             ; 8348 06 00                    ..
        rol     $01                             ; 834A 26 01                    &.
        asl     $00                             ; 834C 06 00                    ..
        rol     $01                             ; 834E 26 01                    &.
        asl     $00                             ; 8350 06 00                    ..
        rol     $01                             ; 8352 26 01                    &.
        lda     $833E                           ; 8354 AD 3E 83                 .>.
        ldy     $833F                           ; 8357 AC 3F 83                 .?.
        ldx     #$00                            ; 835A A2 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; 835C 20 1D C8                  ..
        jmp     MapTileSystem_Branch_8254       ; 835F 4C 54 82                 LT.
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8362:
        ldx     $09                             ; 8362 A6 09                    ..
        lda     $8389,x                         ; 8364 BD 89 83                 ...
        sta     $19                             ; 8367 85 19                    ..
        lda     $838A,x                         ; 8369 BD 8A 83                 ...
        sta     $1A                             ; 836C 85 1A                    ..
        lda     $18                             ; 836E A5 18                    ..
        sta     $00                             ; 8370 85 00                    ..
        lda     #$00                            ; 8372 A9 00                    ..
        sta     $01                             ; 8374 85 01                    ..
        ldx     #$04                            ; 8376 A2 04                    ..
MapTileSystem_Branch_8378:
        clc                                     ; 8378 18                       .
        asl     $00                             ; 8379 06 00                    ..
        rol     $01                             ; 837B 26 01                    &.
        dex                                     ; 837D CA                       .
        bne     MapTileSystem_Branch_8378       ; 837E D0 F8                    ..
        lda     $00                             ; 8380 A5 00                    ..
        ldy     $01                             ; 8382 A4 01                    ..
        ldx     #$19                            ; 8384 A2 19                    ..
        jmp     LowerFixedEngine_Entry_C81D     ; 8386 4C 1D C8                 L..
; ----------------------------------------------------------------------------
        db   $00                             ; 8389 00                       .
        db   $10,$00,$00                     ; 838A 10 00 00                 ...
; ----------------------------------------------------------------------------
MapTileSystem_Entry_838D:
        lda     $0D                             ; 838D A5 0D                    ..
        bne     MapTileSystem_Branch_839E       ; 838F D0 0D                    ..
        lda     PPUSTATUS                       ; 8391 AD 02 20                 ..
        lda     $1A                             ; 8394 A5 1A                    ..
        sta     PPUADDR                         ; 8396 8D 06 20                 ..
        lda     $19                             ; 8399 A5 19                    ..
        sta     PPUADDR                         ; 839B 8D 06 20                 ..
MapTileSystem_Branch_839E:
        rts                                     ; 839E 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_839F:
        inc     $050B                           ; 839F EE 0B 05                 ...
        ldx     $050A                           ; 83A2 AE 0A 05                 ...
        lda     $1A                             ; 83A5 A5 1A                    ..
        ora     #$80                            ; 83A7 09 80                    ..
        sta     $0300,x                         ; 83A9 9D 00 03                 ...
        inx                                     ; 83AC E8                       .
        lda     #$00                            ; 83AD A9 00                    ..
        sta     $0300,x                         ; 83AF 9D 00 03                 ...
        inx                                     ; 83B2 E8                       .
        lda     $19                             ; 83B3 A5 19                    ..
        sta     $0300,x                         ; 83B5 9D 00 03                 ...
        inx                                     ; 83B8 E8                       .
        stx     $050A                           ; 83B9 8E 0A 05                 ...
        rts                                     ; 83BC 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_83BD:
        ldx     #$00                            ; 83BD A2 00                    ..
MapTileSystem_Branch_83BF:
        lda     $0100,x                         ; 83BF BD 00 01                 ...
        sta     $00                             ; 83C2 85 00                    ..
        lda     $0101,x                         ; 83C4 BD 01 01                 ...
        sta     $01                             ; 83C7 85 01                    ..
        txa                                     ; 83C9 8A                       .
        pha                                     ; 83CA 48                       H
        lda     $00                             ; 83CB A5 00                    ..
        ora     $01                             ; 83CD 05 01                    ..
        beq     MapTileSystem_Branch_83E5       ; 83CF F0 14                    ..
        lda     #$0C                            ; 83D1 A9 0C                    ..
        ldx     $09                             ; 83D3 A6 09                    ..
        beq     MapTileSystem_Branch_83D9       ; 83D5 F0 02                    ..
        lda     #$0D                            ; 83D7 A9 0D                    ..
MapTileSystem_Branch_83D9:
        clc                                     ; 83D9 18                       .
        adc     $76                             ; 83DA 65 76                    ev
        jsr     LowerFixedEngine_Entry_C7E1     ; 83DC 20 E1 C7                  ..
        jsr     MapTileSystem_Entry_89C9        ; 83DF 20 C9 89                  ..
        jsr     MapTileSystem_Entry_83F4        ; 83E2 20 F4 83                  ..
MapTileSystem_Branch_83E5:
        pla                                     ; 83E5 68                       h
        tax                                     ; 83E6 AA                       .
        inx                                     ; 83E7 E8                       .
        inx                                     ; 83E8 E8                       .
        cpx     #$08                            ; 83E9 E0 08                    ..
        bne     MapTileSystem_Branch_83BF       ; 83EB D0 D2                    ..
        lda     $0D                             ; 83ED A5 0D                    ..
        beq     MapTileSystem_Branch_8405       ; 83EF F0 14                    ..
        jmp     LowerFixedEngine_Entry_C62D     ; 83F1 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
MapTileSystem_Entry_83F4:
        lda     $0D                             ; 83F4 A5 0D                    ..
        bne     MapTileSystem_Branch_8406       ; 83F6 D0 0E                    ..
        ldy     #$00                            ; 83F8 A0 00                    ..
MapTileSystem_Branch_83FA:
        lda     $0108,y                         ; 83FA B9 08 01                 ...
        sta     PPUDATA                         ; 83FD 8D 07 20                 ..
        iny                                     ; 8400 C8                       .
        cpy     #$10                            ; 8401 C0 10                    ..
        bne     MapTileSystem_Branch_83FA       ; 8403 D0 F5                    ..
MapTileSystem_Branch_8405:
        rts                                     ; 8405 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8406:
        jsr     MapTileSystem_Entry_839F        ; 8406 20 9F 83                  ..
        ldy     #$00                            ; 8409 A0 00                    ..
        lda     $050A                           ; 840B AD 0A 05                 ...
        pha                                     ; 840E 48                       H
        tax                                     ; 840F AA                       .
MapTileSystem_Branch_8410:
        lda     $0108,y                         ; 8410 B9 08 01                 ...
        sta     $0300,x                         ; 8413 9D 00 03                 ...
        inx                                     ; 8416 E8                       .
        iny                                     ; 8417 C8                       .
        cpy     #$10                            ; 8418 C0 10                    ..
        bne     MapTileSystem_Branch_8410       ; 841A D0 F4                    ..
        stx     $050A                           ; 841C 8E 0A 05                 ...
        pla                                     ; 841F 68                       h
        tax                                     ; 8420 AA                       .
        dex                                     ; 8421 CA                       .
        dex                                     ; 8422 CA                       .
        lda     $0300,x                         ; 8423 BD 00 03                 ...
        clc                                     ; 8426 18                       .
        adc     #$10                            ; 8427 69 10                    i.
        sta     $0300,x                         ; 8429 9D 00 03                 ...
        lda     #$10                            ; 842C A9 10                    ..
        ldx     #$19                            ; 842E A2 19                    ..
        jmp     LowerFixedEngine_Entry_C813     ; 8430 4C 13 C8                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8433:
        lda     $8450                           ; 8433 AD 50 84                 .P.
        sta     $00                             ; 8436 85 00                    ..
        lda     $8451                           ; 8438 AD 51 84                 .Q.
        sta     $01                             ; 843B 85 01                    ..
        lda     $16                             ; 843D A5 16                    ..
        ldx     #$00                            ; 843F A2 00                    ..
        jsr     LowerFixedEngine_Entry_C813     ; 8441 20 13 C8                  ..
        lda     $0A                             ; 8444 A5 0A                    ..
        lsr     a                               ; 8446 4A                       J
        lsr     a                               ; 8447 4A                       J
        lsr     a                               ; 8448 4A                       J
        and     #$03                            ; 8449 29 03                    ).
        ldx     #$00                            ; 844B A2 00                    ..
        sta     ($00,x)                         ; 844D 81 00                    ..
        rts                                     ; 844F 60                       `
; ----------------------------------------------------------------------------
        db   $C0                             ; 8450 C0                       .
        db   $76                             ; 8451 76                       v
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8452:
        ldx     $16                             ; 8452 A6 16                    ..
        cpx     #$20                            ; 8454 E0 20                    .
        bcs     MapTileSystem_Branch_8467       ; 8456 B0 0F                    ..
        lda     $0A                             ; 8458 A5 0A                    ..
        lsr     a                               ; 845A 4A                       J
        lsr     a                               ; 845B 4A                       J
        lsr     a                               ; 845C 4A                       J
        lsr     a                               ; 845D 4A                       J
        lsr     a                               ; 845E 4A                       J
        sta     $6F20,x                         ; 845F 9D 20 6F                 . o
        lda     $0C                             ; 8462 A5 0C                    ..
        sta     $6F40,x                         ; 8464 9D 40 6F                 .@o
MapTileSystem_Branch_8467:
        rts                                     ; 8467 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8468:
        ldx     #$00                            ; 8468 A2 00                    ..
MapTileSystem_Branch_846A:
        pla                                     ; 846A 68                       h
        sta     $00,x                           ; 846B 95 00                    ..
        inx                                     ; 846D E8                       .
        cpx     #$10                            ; 846E E0 10                    ..
        bne     MapTileSystem_Branch_846A       ; 8470 D0 F8                    ..
        rts                                     ; 8472 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8473:
        jsr     MapTileSystem_Entry_8082        ; 8473 20 82 80                  ..
MapTileSystem_Entry_8476:
        lda     $0A                             ; 8476 A5 0A                    ..
        and     #$07                            ; 8478 29 07                    ).
        cmp     #$07                            ; 847A C9 07                    ..
        beq     MapTileSystem_Branch_84B1       ; 847C F0 33                    .3
        jsr     MapTileSystem_Entry_8433        ; 847E 20 33 84                  3.
        jsr     MapTileSystem_Entry_80D5        ; 8481 20 D5 80                  ..
        jsr     MapTileSystem_Entry_8452        ; 8484 20 52 84                  R.
        lda     $28                             ; 8487 A5 28                    .(
        beq     MapTileSystem_Branch_84AB       ; 8489 F0 20                    .
        lda     $16                             ; 848B A5 16                    ..
        cmp     #$20                            ; 848D C9 20                    .
        bcs     MapTileSystem_Branch_84AB       ; 848F B0 1A                    ..
        lda     $0A                             ; 8491 A5 0A                    ..
        and     #$E0                            ; 8493 29 E0                    ).
        bne     MapTileSystem_Branch_84A6       ; 8495 D0 0F                    ..
        lda     $0C                             ; 8497 A5 0C                    ..
        and     #$7F                            ; 8499 29 7F                    ).
        bne     MapTileSystem_Branch_84AB       ; 849B D0 0E                    ..
        ldx     $16                             ; 849D A6 16                    ..
        lda     $6E5E,x                         ; 849F BD 5E 6E                 .^n
        beq     MapTileSystem_Branch_84B1       ; 84A2 F0 0D                    ..
        bne     MapTileSystem_Branch_84AB       ; 84A4 D0 05                    ..
MapTileSystem_Branch_84A6:
        ldx     $16                             ; 84A6 A6 16                    ..
        dec     $6E5E,x                         ; 84A8 DE 5E 6E                 .^n
MapTileSystem_Branch_84AB:
        jsr     MapTileSystem_Entry_823D        ; 84AB 20 3D 82                  =.
        jsr     MapTileSystem_Entry_83BD        ; 84AE 20 BD 83                  ..
MapTileSystem_Branch_84B1:
        lda     #$02                            ; 84B1 A9 02                    ..
        clc                                     ; 84B3 18                       .
        adc     $0E                             ; 84B4 65 0E                    e.
        sta     $0E                             ; 84B6 85 0E                    ..
        bcc     MapTileSystem_Branch_84BC       ; 84B8 90 02                    ..
        inc     $0F                             ; 84BA E6 0F                    ..
MapTileSystem_Branch_84BC:
        rts                                     ; 84BC 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_84BD:
        sta     $16                             ; 84BD 85 16                    ..
        jmp     MapTileSystem_Branch_8473       ; 84BF 4C 73 84                 Ls.
; ----------------------------------------------------------------------------
MapTileSystem_Entry_84C2:
        tay                                     ; 84C2 A8                       .
        lda     #$01                            ; 84C3 A9 01                    ..
        bne     MapTileSystem_Branch_84CA       ; 84C5 D0 03                    ..
MapTileSystem_Entry_84C7:
        tay                                     ; 84C7 A8                       .
        lda     #$00                            ; 84C8 A9 00                    ..
MapTileSystem_Branch_84CA:
        sta     $0D                             ; 84CA 85 0D                    ..
        ldx     #$0F                            ; 84CC A2 0F                    ..
MapTileSystem_Branch_84CE:
        lda     $00,x                           ; 84CE B5 00                    ..
        pha                                     ; 84D0 48                       H
        dex                                     ; 84D1 CA                       .
        bpl     MapTileSystem_Branch_84CE       ; 84D2 10 FA                    ..
        tya                                     ; 84D4 98                       .
        bne     MapTileSystem_Branch_84E3       ; 84D5 D0 0C                    ..
        pha                                     ; 84D7 48                       H
        ldx     #$1F                            ; 84D8 A2 1F                    ..
        lda     #$FF                            ; 84DA A9 FF                    ..
MapTileSystem_Branch_84DC:
        sta     $6E5E,x                         ; 84DC 9D 5E 6E                 .^n
        dex                                     ; 84DF CA                       .
        bne     MapTileSystem_Branch_84DC       ; 84E0 D0 FA                    ..
        pla                                     ; 84E2 68                       h
MapTileSystem_Branch_84E3:
        brk                                     ; 84E3 00                       .
        db   $01,$E7                         ; 84E4 01 E7                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 84E6 00                       .
        db   $28,$0F                         ; 84E7 28 0F                    (.
; ----------------------------------------------------------------------------
        lda     $0514                           ; 84E9 AD 14 05                 ...
        sta     $05FD                           ; 84EC 8D FD 05                 ...
        jsr     Bank08_MapTileServices          ; 84EF 20 3C 80                  <.
        lda     #$00                            ; 84F2 A9 00                    ..
        sta     $6BDD                           ; 84F4 8D DD 6B                 ..k
        sta     $09                             ; 84F7 85 09                    ..
        sta     $05                             ; 84F9 85 05                    ..
        sta     $79                             ; 84FB 85 79                    .y
        sta     $7A                             ; 84FD 85 7A                    .z
        lda     #$8D                            ; 84FF A9 8D                    ..
        sta     $18                             ; 8501 85 18                    ..
        jsr     MapTileSystem_Entry_8362        ; 8503 20 62 83                  b.
        jsr     MapTileSystem_Entry_838D        ; 8506 20 8D 83                  ..
        jsr     MapTileSystem_Entry_8055        ; 8509 20 55 80                  U.
        lda     #$00                            ; 850C A9 00                    ..
MapTileSystem_Branch_850E:
        pha                                     ; 850E 48                       H
        jsr     MapTileSystem_Entry_84BD        ; 850F 20 BD 84                  ..
        pla                                     ; 8512 68                       h
        clc                                     ; 8513 18                       .
        adc     #$01                            ; 8514 69 01                    i.
        cmp     #$20                            ; 8516 C9 20                    .
        bne     MapTileSystem_Branch_850E       ; 8518 D0 F4                    ..
        lda     $07                             ; 851A A5 07                    ..
        bne     MapTileSystem_Branch_852F       ; 851C D0 11                    ..
        jsr     MapTileSystem_Entry_80B7        ; 851E 20 B7 80                  ..
        lda     #$20                            ; 8521 A9 20                    .
MapTileSystem_Branch_8523:
        pha                                     ; 8523 48                       H
        jsr     MapTileSystem_Entry_84BD        ; 8524 20 BD 84                  ..
        pla                                     ; 8527 68                       h
        clc                                     ; 8528 18                       .
        adc     #$01                            ; 8529 69 01                    i.
        cmp     #$30                            ; 852B C9 30                    .0
        bne     MapTileSystem_Branch_8523       ; 852D D0 F4                    ..
MapTileSystem_Branch_852F:
        jsr     MapTileSystem_Entry_853E        ; 852F 20 3E 85                  >.
        brk                                     ; 8532 00                       .
        db   $02,$DF                         ; 8533 02 DF                    ..
; ----------------------------------------------------------------------------
        jsr     MapTileSystem_Entry_8A2A        ; 8535 20 2A 8A                  *.
        jsr     MapTileSystem_Entry_8A85        ; 8538 20 85 8A                  ..
        jmp     MapTileSystem_Branch_8468       ; 853B 4C 68 84                 Lh.
; ----------------------------------------------------------------------------
MapTileSystem_Entry_853E:
        lda     #$20                            ; 853E A9 20                    .
        sta     $16                             ; 8540 85 16                    ..
        lda     $07                             ; 8542 A5 07                    ..
        beq     MapTileSystem_Branch_859A       ; 8544 F0 54                    .T
        ldx     #$00                            ; 8546 A2 00                    ..
        stx     $7684                           ; 8548 8E 84 76                 ..v
        stx     $7685                           ; 854B 8E 85 76                 ..v
        stx     $7686                           ; 854E 8E 86 76                 ..v
        stx     $7687                           ; 8551 8E 87 76                 ..v
        pha                                     ; 8554 48                       H
        lsr     a                               ; 8555 4A                       J
        lsr     a                               ; 8556 4A                       J
        tay                                     ; 8557 A8                       .
        ldx     $8AA2,y                         ; 8558 BE A2 8A                 ...
        pla                                     ; 855B 68                       h
        and     #$03                            ; 855C 29 03                    ).
        eor     #$03                            ; 855E 49 03                    I.
        tay                                     ; 8560 A8                       .
        txa                                     ; 8561 8A                       .
MapTileSystem_Branch_8562:
        cpy     #$00                            ; 8562 C0 00                    ..
        beq     MapTileSystem_Branch_856C       ; 8564 F0 06                    ..
        lsr     a                               ; 8566 4A                       J
        lsr     a                               ; 8567 4A                       J
        dey                                     ; 8568 88                       .
        jmp     MapTileSystem_Branch_8562       ; 8569 4C 62 85                 Lb.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_856C:
        and     #$03                            ; 856C 29 03                    ).
        asl     a                               ; 856E 0A                       .
        asl     a                               ; 856F 0A                       .
        tax                                     ; 8570 AA                       .
        ldy     #$00                            ; 8571 A0 00                    ..
MapTileSystem_Branch_8573:
        lda     $8AAF,x                         ; 8573 BD AF 8A                 ...
        sta     $0A,y                           ; 8576 99 0A 00                 ...
        iny                                     ; 8579 C8                       .
        inx                                     ; 857A E8                       .
        cpy     #$02                            ; 857B C0 02                    ..
        bne     MapTileSystem_Branch_8573       ; 857D D0 F4                    ..
        txa                                     ; 857F 8A                       .
        pha                                     ; 8580 48                       H
        jsr     MapTileSystem_Entry_8476        ; 8581 20 76 84                  v.
        pla                                     ; 8584 68                       h
        tax                                     ; 8585 AA                       .
        ldy     #$00                            ; 8586 A0 00                    ..
MapTileSystem_Branch_8588:
        lda     $8AAF,x                         ; 8588 BD AF 8A                 ...
        sta     $0A,y                           ; 858B 99 0A 00                 ...
        iny                                     ; 858E C8                       .
        inx                                     ; 858F E8                       .
        cpy     #$02                            ; 8590 C0 02                    ..
        bne     MapTileSystem_Branch_8588       ; 8592 D0 F4                    ..
        inc     $16                             ; 8594 E6 16                    ..
        jsr     MapTileSystem_Entry_8476        ; 8596 20 76 84                  v.
        rts                                     ; 8599 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_859A:
        rts                                     ; 859A 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_859B:
        pha                                     ; 859B 48                       H
        and     #$7F                            ; 859C 29 7F                    ).
        cmp     #$53                            ; 859E C9 53                    .S
        bcc     MapTileSystem_Branch_85A6       ; 85A0 90 04                    ..
        sbc     #$0B                            ; 85A2 E9 0B                    ..
        bne     MapTileSystem_Branch_85BA       ; 85A4 D0 14                    ..
MapTileSystem_Branch_85A6:
        cmp     #$50                            ; 85A6 C9 50                    .P
        bcs     MapTileSystem_Branch_85BA       ; 85A8 B0 10                    ..
        cmp     #$48                            ; 85AA C9 48                    .H
        bcc     MapTileSystem_Branch_85BA       ; 85AC 90 0C                    ..
        sbc     #$48                            ; 85AE E9 48                    .H
        sta     $0E                             ; 85B0 85 0E                    ..
        pla                                     ; 85B2 68                       h
        and     #$80                            ; 85B3 29 80                    ).
        ora     $0E                             ; 85B5 05 0E                    ..
        pha                                     ; 85B7 48                       H
        and     #$7F                            ; 85B8 29 7F                    ).
MapTileSystem_Branch_85BA:
        sta     $0E                             ; 85BA 85 0E                    ..
        bne     MapTileSystem_Branch_85CD       ; 85BC D0 0F                    ..
        lda     $62A5                           ; 85BE AD A5 62                 ..b
        bpl     MapTileSystem_Branch_85CD       ; 85C1 10 0A                    ..
        lda     SaveHeroGender                  ; 85C3 AD 5C 61                 .\a
        and     #$01                            ; 85C6 29 01                    ).
        asl     a                               ; 85C8 0A                       .
        asl     a                               ; 85C9 0A                       .
        asl     a                               ; 85CA 0A                       .
        sta     $0E                             ; 85CB 85 0E                    ..
MapTileSystem_Branch_85CD:
        pla                                     ; 85CD 68                       h
        and     #$80                            ; 85CE 29 80                    ).
        sta     $7A                             ; 85D0 85 7A                    .z
        rts                                     ; 85D2 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_85D3:
        jsr     MapTileSystem_Entry_859B        ; 85D3 20 9B 85                  ..
        lda     #$00                            ; 85D6 A9 00                    ..
        sta     $05                             ; 85D8 85 05                    ..
        sta     $0D                             ; 85DA 85 0D                    ..
        sta     $79                             ; 85DC 85 79                    .y
        lda     $18                             ; 85DE A5 18                    ..
        sta     $04                             ; 85E0 85 04                    ..
MapTileSystem_Branch_85E2:
        ldx     #$0F                            ; 85E2 A2 0F                    ..
MapTileSystem_Branch_85E4:
        lda     $00,x                           ; 85E4 B5 00                    ..
        pha                                     ; 85E6 48                       H
        dex                                     ; 85E7 CA                       .
        bpl     MapTileSystem_Branch_85E4       ; 85E8 10 FA                    ..
        ldx     #$0F                            ; 85EA A2 0F                    ..
        sta     $07                             ; 85EC 85 07                    ..
        lda     #$02                            ; 85EE A9 02                    ..
        sta     $09                             ; 85F0 85 09                    ..
        lda     $0E                             ; 85F2 A5 0E                    ..
        asl     a                               ; 85F4 0A                       .
        clc                                     ; 85F5 18                       .
        adc     $0E                             ; 85F6 65 0E                    e.
        sta     $0E                             ; 85F8 85 0E                    ..
        lda     #$00                            ; 85FA A9 00                    ..
        adc     #$00                            ; 85FC 69 00                    i.
        sta     $0F                             ; 85FE 85 0F                    ..
        ldx     #$03                            ; 8600 A2 03                    ..
MapTileSystem_Branch_8602:
        asl     $0E                             ; 8602 06 0E                    ..
        rol     $0F                             ; 8604 26 0F                    &.
        dex                                     ; 8606 CA                       .
        bne     MapTileSystem_Branch_8602       ; 8607 D0 F9                    ..
        lda     $8649                           ; 8609 AD 49 86                 .I.
        ldy     $864A                           ; 860C AC 4A 86                 .J.
        ldx     #$0E                            ; 860F A2 0E                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; 8611 20 1D C8                  ..
        lda     $7A                             ; 8614 A5 7A                    .z
        beq     MapTileSystem_Branch_861D       ; 8616 F0 05                    ..
        lda     #$0C                            ; 8618 A9 0C                    ..
        jsr     LowerFixedEngine_Entry_C813     ; 861A 20 13 C8                  ..
MapTileSystem_Branch_861D:
        lda     #$00                            ; 861D A9 00                    ..
        sta     $74                             ; 861F 85 74                    .t
        ldy     #$08                            ; 8621 A0 08                    ..
MapTileSystem_Branch_8623:
        jsr     MapTileSystem_Entry_864B        ; 8623 20 4B 86                  K.
        lda     $7A                             ; 8626 A5 7A                    .z
        bne     MapTileSystem_Branch_862F       ; 8628 D0 05                    ..
        lda     #$03                            ; 862A A9 03                    ..
        jsr     LowerFixedEngine_Entry_C813     ; 862C 20 13 C8                  ..
MapTileSystem_Branch_862F:
        lda     $7A                             ; 862F A5 7A                    .z
        beq     MapTileSystem_Branch_8641       ; 8631 F0 0E                    ..
        lda     $74                             ; 8633 A5 74                    .t
        and     #$01                            ; 8635 29 01                    ).
        beq     MapTileSystem_Branch_8641       ; 8637 F0 08                    ..
        lda     #$00                            ; 8639 A9 00                    ..
        sta     $79                             ; 863B 85 79                    .y
        lda     $18                             ; 863D A5 18                    ..
        sta     $04                             ; 863F 85 04                    ..
MapTileSystem_Branch_8641:
        inc     $74                             ; 8641 E6 74                    .t
        dey                                     ; 8643 88                       .
        bne     MapTileSystem_Branch_8623       ; 8644 D0 DD                    ..
        jmp     MapTileSystem_Branch_8468       ; 8646 4C 68 84                 Lh.
; ----------------------------------------------------------------------------
        db   $9B                             ; 8649 9B                       .
        db   $97                             ; 864A 97                       .
; ----------------------------------------------------------------------------
MapTileSystem_Entry_864B:
        txa                                     ; 864B 8A                       .
        pha                                     ; 864C 48                       H
        tya                                     ; 864D 98                       .
        pha                                     ; 864E 48                       H
        jsr     MapTileSystem_Entry_8362        ; 864F 20 62 83                  b.
        jsr     MapTileSystem_Entry_838D        ; 8652 20 8D 83                  ..
        jsr     MapTileSystem_Entry_80C4        ; 8655 20 C4 80                  ..
        jsr     MapTileSystem_Entry_80D5        ; 8658 20 D5 80                  ..
        jsr     MapTileSystem_Entry_8340        ; 865B 20 40 83                  @.
        jsr     MapTileSystem_Entry_83BD        ; 865E 20 BD 83                  ..
        inc     $16                             ; 8661 E6 16                    ..
        pla                                     ; 8663 68                       h
        tay                                     ; 8664 A8                       .
        pla                                     ; 8665 68                       h
        tax                                     ; 8666 AA                       .
        rts                                     ; 8667 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8668:
        sta     $0E                             ; 8668 85 0E                    ..
        lda     $050B                           ; 866A AD 0B 05                 ...
        beq     MapTileSystem_Branch_8672       ; 866D F0 03                    ..
        jsr     LowerFixedEngine_Entry_C62D     ; 866F 20 2D C6                  -.
MapTileSystem_Branch_8672:
        ldy     #$01                            ; 8672 A0 01                    ..
        bne     MapTileSystem_Branch_867A       ; 8674 D0 04                    ..
MapTileSystem_Entry_8676:
        sta     $0E                             ; 8676 85 0E                    ..
        ldy     #$00                            ; 8678 A0 00                    ..
MapTileSystem_Branch_867A:
        sty     $0D                             ; 867A 84 0D                    ..
        lda     $0E                             ; 867C A5 0E                    ..
        pha                                     ; 867E 48                       H
        and     #$80                            ; 867F 29 80                    ).
        sta     $7A                             ; 8681 85 7A                    .z
        pla                                     ; 8683 68                       h
        and     #$7F                            ; 8684 29 7F                    ).
        sta     $0E                             ; 8686 85 0E                    ..
        lda     #$00                            ; 8688 A9 00                    ..
        sta     $79                             ; 868A 85 79                    .y
        sta     $6BDD                           ; 868C 8D DD 6B                 ..k
        lda     #$01                            ; 868F A9 01                    ..
        sta     $05                             ; 8691 85 05                    ..
        txa                                     ; 8693 8A                       .
        cmp     #$04                            ; 8694 C9 04                    ..
        php                                     ; 8696 08                       .
        asl     a                               ; 8697 0A                       .
        asl     a                               ; 8698 0A                       .
        asl     a                               ; 8699 0A                       .
        sta     $16                             ; 869A 85 16                    ..
        plp                                     ; 869C 28                       (
        bcc     MapTileSystem_Branch_86CD       ; 869D 90 2E                    ..
        sta     $72                             ; 869F 85 72                    .r
        lda     #$00                            ; 86A1 A9 00                    ..
        sta     $73                             ; 86A3 85 73                    .s
        asl     $72                             ; 86A5 06 72                    .r
        rol     $73                             ; 86A7 26 73                    &s
        asl     $72                             ; 86A9 06 72                    .r
        rol     $73                             ; 86AB 26 73                    &s
        asl     $72                             ; 86AD 06 72                    .r
        rol     $73                             ; 86AF 26 73                    &s
        lda     $833E                           ; 86B1 AD 3E 83                 .>.
        ldy     $833F                           ; 86B4 AC 3F 83                 .?.
        ldx     #$72                            ; 86B7 A2 72                    .r
        jsr     LowerFixedEngine_Entry_C81D     ; 86B9 20 1D C8                  ..
        ldy     #$00                            ; 86BC A0 00                    ..
        sty     $05                             ; 86BE 84 05                    ..
        sty     $79                             ; 86C0 84 79                    .y
        lda     ($72),y                         ; 86C2 B1 72                    .r
        sta     $18                             ; 86C4 85 18                    ..
        sta     $04                             ; 86C6 85 04                    ..
        lda     $0E                             ; 86C8 A5 0E                    ..
        jmp     MapTileSystem_Branch_85E2       ; 86CA 4C E2 85                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_86CD:
        asl     a                               ; 86CD 0A                       .
        asl     a                               ; 86CE 0A                       .
        stx     $18                             ; 86CF 86 18                    ..
        sec                                     ; 86D1 38                       8
        sbc     $18                             ; 86D2 E5 18                    ..
        sbc     $18                             ; 86D4 E5 18                    ..
        sbc     $18                             ; 86D6 E5 18                    ..
        sbc     $18                             ; 86D8 E5 18                    ..
        sbc     $18                             ; 86DA E5 18                    ..
        sta     $18                             ; 86DC 85 18                    ..
        sta     $04                             ; 86DE 85 04                    ..
        lda     $0E                             ; 86E0 A5 0E                    ..
        jmp     MapTileSystem_Branch_85E2       ; 86E2 4C E2 85                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Entry_86E5:
        lda     #$20                            ; 86E5 A9 20                    .
        sta     $16                             ; 86E7 85 16                    ..
        lda     #$6C                            ; 86E9 A9 6C                    .l
        sta     $18                             ; 86EB 85 18                    ..
        lda     #$00                            ; 86ED A9 00                    ..
        sta     $6BDD                           ; 86EF 8D DD 6B                 ..k
MapTileSystem_Entry_86F2:
        ldx     #$00                            ; 86F2 A2 00                    ..
MapTileSystem_Branch_86F4:
        lda     $8703,x                         ; 86F4 BD 03 87                 ...
        cmp     #$FF                            ; 86F7 C9 FF                    ..
        beq     MapTileSystem_Branch_8702       ; 86F9 F0 07                    ..
        sta     $0609,x                         ; 86FB 9D 09 06                 ...
        inx                                     ; 86FE E8                       .
        jmp     MapTileSystem_Branch_86F4       ; 86FF 4C F4 86                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8702:
        rts                                     ; 8702 60                       `
; ----------------------------------------------------------------------------
        db   $30,$12,$19,$30,$17,$26,$30,$24 ; 8703 30 12 19 30 17 26 30 24  0..0.&0$
        db   $13,$30,$26,$04,$FF             ; 870B 13 30 26 04 FF           .0&..
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8710:
        sta     $16                             ; 8710 85 16                    ..
        lda     $28                             ; 8712 A5 28                    .(
        beq     MapTileSystem_Branch_8773       ; 8714 F0 5D                    .]
        cmp     #$1E                            ; 8716 C9 1E                    ..
        beq     MapTileSystem_Branch_8773       ; 8718 F0 59                    .Y
        lda     #$00                            ; 871A A9 00                    ..
        sta     $09                             ; 871C 85 09                    ..
        sta     $0D                             ; 871E 85 0D                    ..
        sta     $05                             ; 8720 85 05                    ..
        sta     $79                             ; 8722 85 79                    .y
        lda     #$18                            ; 8724 A9 18                    ..
        sta     $0A                             ; 8726 85 0A                    ..
        lda     #$11                            ; 8728 A9 11                    ..
        sta     $0B                             ; 872A 85 0B                    ..
        lda     #$1A                            ; 872C A9 1A                    ..
        sta     $0C                             ; 872E 85 0C                    ..
        jsr     MapTileSystem_Entry_8433        ; 8730 20 33 84                  3.
        jsr     MapTileSystem_Entry_80D5        ; 8733 20 D5 80                  ..
        jsr     MapTileSystem_Entry_8452        ; 8736 20 52 84                  R.
        lda     $823B                           ; 8739 AD 3B 82                 .;.
        sta     $00                             ; 873C 85 00                    ..
        lda     $823C                           ; 873E AD 3C 82                 .<.
        sta     $01                             ; 8741 85 01                    ..
        lda     $16                             ; 8743 A5 16                    ..
        asl     a                               ; 8745 0A                       .
        asl     a                               ; 8746 0A                       .
        ldx     #$00                            ; 8747 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C813     ; 8749 20 13 C8                  ..
        ldy     #$00                            ; 874C A0 00                    ..
        lda     #$FC                            ; 874E A9 FC                    ..
        sta     ($00),y                         ; 8750 91 00                    ..
        sta     $18                             ; 8752 85 18                    ..
        lda     #$FD                            ; 8754 A9 FD                    ..
        iny                                     ; 8756 C8                       .
        sta     ($00),y                         ; 8757 91 00                    ..
        iny                                     ; 8759 C8                       .
        lda     #$FE                            ; 875A A9 FE                    ..
        sta     ($00),y                         ; 875C 91 00                    ..
        iny                                     ; 875E C8                       .
        lda     #$FF                            ; 875F A9 FF                    ..
        sta     ($00),y                         ; 8761 91 00                    ..
        ldx     #$00                            ; 8763 A2 00                    ..
        jsr     MapTileSystem_Entry_8774        ; 8765 20 74 87                  t.
        lda     #$FD                            ; 8768 A9 FD                    ..
        sta     $18                             ; 876A 85 18                    ..
MapTileSystem_Branch_876C:
        jsr     MapTileSystem_Entry_8774        ; 876C 20 74 87                  t.
        inc     $18                             ; 876F E6 18                    ..
        bmi     MapTileSystem_Branch_876C       ; 8771 30 F9                    0.
MapTileSystem_Branch_8773:
        rts                                     ; 8773 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8774:
        txa                                     ; 8774 8A                       .
        pha                                     ; 8775 48                       H
        jsr     MapTileSystem_Entry_8362        ; 8776 20 62 83                  b.
        jsr     MapTileSystem_Entry_838D        ; 8779 20 8D 83                  ..
        pla                                     ; 877C 68                       h
        tax                                     ; 877D AA                       .
        pha                                     ; 877E 48                       H
        lda     $0100,x                         ; 877F BD 00 01                 ...
        sta     $00                             ; 8782 85 00                    ..
        lda     $0101,x                         ; 8784 BD 01 01                 ...
        sta     $01                             ; 8787 85 01                    ..
        lda     #$0C                            ; 8789 A9 0C                    ..
        jsr     LowerFixedEngine_Entry_C7E1     ; 878B 20 E1 C7                  ..
        jsr     MapTileSystem_Entry_83F4        ; 878E 20 F4 83                  ..
        pla                                     ; 8791 68                       h
        tax                                     ; 8792 AA                       .
        inx                                     ; 8793 E8                       .
        inx                                     ; 8794 E8                       .
        rts                                     ; 8795 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8796:
        sta     $0C                             ; 8796 85 0C                    ..
        pha                                     ; 8798 48                       H
        lda     #$00                            ; 8799 A9 00                    ..
        sta     $09                             ; 879B 85 09                    ..
        jsr     MapTileSystem_Entry_8055        ; 879D 20 55 80                  U.
        pla                                     ; 87A0 68                       h
        cmp     #$18                            ; 87A1 C9 18                    ..
        bcs     MapTileSystem_Branch_87D1       ; 87A3 B0 2C                    .,
        ldx     PlayerLocalX                    ; 87A5 A6 44                    .D
        ldy     PlayerLocalY                    ; 87A7 A4 45                    .E
        jsr     LowerFixedEngine_Entry_D3E6     ; 87A9 20 E6 D3                  ..
        sta     $03                             ; 87AC 85 03                    ..
        jsr     MapTileSystem_Entry_8800        ; 87AE 20 00 88                  ..
        jsr     MapTileSystem_Entry_880E        ; 87B1 20 0E 88                  ..
        sta     $02                             ; 87B4 85 02                    ..
        ldx     PlayerLocalX                    ; 87B6 A6 44                    .D
        ldy     PlayerLocalY                    ; 87B8 A4 45                    .E
        stx     $04                             ; 87BA 86 04                    ..
        sty     $05                             ; 87BC 84 05                    ..
        lda     $3D                             ; 87BE A5 3D                    .=
        beq     MapTileSystem_Branch_87E2       ; 87C0 F0 20                    .
        cmp     #$01                            ; 87C2 C9 01                    ..
        beq     MapTileSystem_Branch_87DB       ; 87C4 F0 15                    ..
        cmp     #$02                            ; 87C6 C9 02                    ..
        beq     MapTileSystem_Branch_87D4       ; 87C8 F0 0A                    ..
        dex                                     ; 87CA CA                       .
        stx     $04                             ; 87CB 86 04                    ..
        dex                                     ; 87CD CA                       .
        jmp     MapTileSystem_Branch_87E6       ; 87CE 4C E6 87                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_87D1:
        jmp     MapTileSystem_Branch_883F       ; 87D1 4C 3F 88                 L?.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_87D4:
        iny                                     ; 87D4 C8                       .
        sty     $05                             ; 87D5 84 05                    ..
        iny                                     ; 87D7 C8                       .
        jmp     MapTileSystem_Branch_87E6       ; 87D8 4C E6 87                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_87DB:
        inx                                     ; 87DB E8                       .
        stx     $04                             ; 87DC 86 04                    ..
        inx                                     ; 87DE E8                       .
        jmp     MapTileSystem_Branch_87E6       ; 87DF 4C E6 87                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_87E2:
        dey                                     ; 87E2 88                       .
        sty     $05                             ; 87E3 84 05                    ..
        dey                                     ; 87E5 88                       .
MapTileSystem_Branch_87E6:
        jsr     LowerFixedEngine_Entry_D3E6     ; 87E6 20 E6 D3                  ..
        sta     $06                             ; 87E9 85 06                    ..
        jsr     MapTileSystem_Entry_8800        ; 87EB 20 00 88                  ..
        jsr     MapTileSystem_Entry_880E        ; 87EE 20 0E 88                  ..
        ldx     $06                             ; 87F1 A6 06                    ..
        cmp     $02                             ; 87F3 C5 02                    ..
        bcc     MapTileSystem_Branch_87F9       ; 87F5 90 02                    ..
        ldx     $03                             ; 87F7 A6 03                    ..
MapTileSystem_Branch_87F9:
        txa                                     ; 87F9 8A                       .
        ldx     $04                             ; 87FA A6 04                    ..
        ldy     $05                             ; 87FC A4 05                    ..
        clc                                     ; 87FE 18                       .
        rts                                     ; 87FF 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8800:
        asl     a                               ; 8800 0A                       .
        tay                                     ; 8801 A8                       .
        lda     ($0E),y                         ; 8802 B1 0E                    ..
        and     #$03                            ; 8804 29 03                    ).
        sta     $01                             ; 8806 85 01                    ..
        iny                                     ; 8808 C8                       .
        lda     ($0E),y                         ; 8809 B1 0E                    ..
        sta     $00                             ; 880B 85 00                    ..
        rts                                     ; 880D 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_880E:
        ldx     #$00                            ; 880E A2 00                    ..
MapTileSystem_Branch_8810:
        lda     $882B,x                         ; 8810 BD 2B 88                 .+.
        cmp     #$FF                            ; 8813 C9 FF                    ..
        beq     MapTileSystem_Branch_8829       ; 8815 F0 12                    ..
        cmp     $01                             ; 8817 C5 01                    ..
        bne     MapTileSystem_Branch_8822       ; 8819 D0 07                    ..
        lda     $882A,x                         ; 881B BD 2A 88                 .*.
        cmp     $00                             ; 881E C5 00                    ..
        beq     MapTileSystem_Branch_8827       ; 8820 F0 05                    ..
MapTileSystem_Branch_8822:
        inx                                     ; 8822 E8                       .
        inx                                     ; 8823 E8                       .
        jmp     MapTileSystem_Branch_8810       ; 8824 4C 10 88                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8827:
        txa                                     ; 8827 8A                       .
        lsr     a                               ; 8828 4A                       J
MapTileSystem_Branch_8829:
        rts                                     ; 8829 60                       `
; ----------------------------------------------------------------------------
        db   $74                             ; 882A 74                       t
        db   $00,$35,$00,$42,$00,$78,$00,$31 ; 882B 00 35 00 42 00 78 00 31  .5.B.x.1
        db   $00,$1A,$00,$1C,$00,$13,$00,$FF ; 8833 00 1A 00 1C 00 13 00 FF  ........
        db   $FF                             ; 883B FF                       .
; ----------------------------------------------------------------------------
MapTileSystem_Branch_883C:
        jmp     MapTileSystem_Branch_8855       ; 883C 4C 55 88                 LU.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_883F:
        cmp     #$1C                            ; 883F C9 1C                    ..
        bcs     MapTileSystem_Branch_883C       ; 8841 B0 F9                    ..
        lda     #$24                            ; 8843 A9 24                    .$
        sta     $0C                             ; 8845 85 0C                    ..
        jsr     MapTileSystem_Entry_896F        ; 8847 20 6F 89                  o.
        pha                                     ; 884A 48                       H
        ldx     PlayerLocalX                    ; 884B A6 44                    .D
        ldy     PlayerLocalY                    ; 884D A4 45                    .E
        jmp     MapTileSystem_Entry_893D        ; 884F 4C 3D 89                 L=.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8852:
        jmp     MapTileSystem_Branch_88FE       ; 8852 4C FE 88                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8855:
        cmp     #$20                            ; 8855 C9 20                    .
        bcs     MapTileSystem_Branch_8852       ; 8857 B0 F9                    ..
        ldx     PlayerLocalX                    ; 8859 A6 44                    .D
        ldy     PlayerLocalY                    ; 885B A4 45                    .E
        lda     $3D                             ; 885D A5 3D                    .=
        beq     MapTileSystem_Branch_8893       ; 885F F0 32                    .2
        cmp     #$01                            ; 8861 C9 01                    ..
        beq     MapTileSystem_Branch_88B1       ; 8863 F0 4C                    .L
        cmp     #$02                            ; 8865 C9 02                    ..
        beq     MapTileSystem_Branch_88D0       ; 8867 F0 67                    .g
        dex                                     ; 8869 CA                       .
        jsr     MapTileSystem_Entry_8957        ; 886A 20 57 89                  W.
        sta     $02                             ; 886D 85 02                    ..
        dex                                     ; 886F CA                       .
        dey                                     ; 8870 88                       .
        jsr     MapTileSystem_Entry_8957        ; 8871 20 57 89                  W.
        cmp     $02                             ; 8874 C5 02                    ..
        beq     MapTileSystem_Branch_8879       ; 8876 F0 01                    ..
        iny                                     ; 8878 C8                       .
MapTileSystem_Branch_8879:
        dex                                     ; 8879 CA                       .
        stx     $04                             ; 887A 86 04                    ..
        stx     $06                             ; 887C 86 06                    ..
        sty     $05                             ; 887E 84 05                    ..
        sty     $09                             ; 8880 84 09                    ..
        iny                                     ; 8882 C8                       .
        sty     $07                             ; 8883 84 07                    ..
        sty     $0B                             ; 8885 84 0B                    ..
        dey                                     ; 8887 88                       .
        inx                                     ; 8888 E8                       .
        inx                                     ; 8889 E8                       .
        inx                                     ; 888A E8                       .
        stx     $08                             ; 888B 86 08                    ..
        stx     $0A                             ; 888D 86 0A                    ..
        dex                                     ; 888F CA                       .
        dex                                     ; 8890 CA                       .
        bne     MapTileSystem_Branch_88ED       ; 8891 D0 5A                    .Z
MapTileSystem_Branch_8893:
        dey                                     ; 8893 88                       .
        jsr     MapTileSystem_Entry_8957        ; 8894 20 57 89                  W.
        sta     $02                             ; 8897 85 02                    ..
        dey                                     ; 8899 88                       .
        dex                                     ; 889A CA                       .
        jsr     MapTileSystem_Entry_8957        ; 889B 20 57 89                  W.
        cmp     $02                             ; 889E C5 02                    ..
        beq     MapTileSystem_Branch_88A3       ; 88A0 F0 01                    ..
        inx                                     ; 88A2 E8                       .
MapTileSystem_Branch_88A3:
        dey                                     ; 88A3 88                       .
        sty     $05                             ; 88A4 84 05                    ..
        sty     $07                             ; 88A6 84 07                    ..
        iny                                     ; 88A8 C8                       .
        stx     $04                             ; 88A9 86 04                    ..
        inx                                     ; 88AB E8                       .
        stx     $06                             ; 88AC 86 06                    ..
        dex                                     ; 88AE CA                       .
        bne     MapTileSystem_Branch_88ED       ; 88AF D0 3C                    .<
MapTileSystem_Branch_88B1:
        inx                                     ; 88B1 E8                       .
        jsr     MapTileSystem_Entry_8957        ; 88B2 20 57 89                  W.
        sta     $02                             ; 88B5 85 02                    ..
        dey                                     ; 88B7 88                       .
        jsr     MapTileSystem_Entry_8957        ; 88B8 20 57 89                  W.
        cmp     $02                             ; 88BB C5 02                    ..
        beq     MapTileSystem_Branch_88C0       ; 88BD F0 01                    ..
        iny                                     ; 88BF C8                       .
MapTileSystem_Branch_88C0:
        inx                                     ; 88C0 E8                       .
        inx                                     ; 88C1 E8                       .
        stx     $04                             ; 88C2 86 04                    ..
        stx     $06                             ; 88C4 86 06                    ..
        sty     $05                             ; 88C6 84 05                    ..
        iny                                     ; 88C8 C8                       .
        sty     $07                             ; 88C9 84 07                    ..
        dey                                     ; 88CB 88                       .
        dex                                     ; 88CC CA                       .
        dex                                     ; 88CD CA                       .
        bne     MapTileSystem_Branch_88ED       ; 88CE D0 1D                    ..
MapTileSystem_Branch_88D0:
        iny                                     ; 88D0 C8                       .
        jsr     MapTileSystem_Entry_8957        ; 88D1 20 57 89                  W.
        sta     $02                             ; 88D4 85 02                    ..
        dex                                     ; 88D6 CA                       .
        jsr     MapTileSystem_Entry_8957        ; 88D7 20 57 89                  W.
        cmp     $02                             ; 88DA C5 02                    ..
        beq     MapTileSystem_Branch_88DF       ; 88DC F0 01                    ..
        inx                                     ; 88DE E8                       .
MapTileSystem_Branch_88DF:
        iny                                     ; 88DF C8                       .
        iny                                     ; 88E0 C8                       .
        sty     $05                             ; 88E1 84 05                    ..
        sty     $07                             ; 88E3 84 07                    ..
        stx     $04                             ; 88E5 86 04                    ..
        inx                                     ; 88E7 E8                       .
        stx     $04                             ; 88E8 86 04                    ..
        dex                                     ; 88EA CA                       .
        dey                                     ; 88EB 88                       .
        dey                                     ; 88EC 88                       .
MapTileSystem_Branch_88ED:
        stx     $51                             ; 88ED 86 51                    .Q
        sty     $52                             ; 88EF 84 52                    .R
        ldx     $04                             ; 88F1 A6 04                    ..
        ldy     $05                             ; 88F3 A4 05                    ..
        jsr     LowerFixedEngine_Entry_D3E6     ; 88F5 20 E6 D3                  ..
        sta     $53                             ; 88F8 85 53                    .S
        lda     #$00                            ; 88FA A9 00                    ..
        sec                                     ; 88FC 38                       8
        rts                                     ; 88FD 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_88FE:
        ldy     #$00                            ; 88FE A0 00                    ..
        sta     $0C                             ; 8900 85 0C                    ..
        jsr     MapTileSystem_Entry_896F        ; 8902 20 6F 89                  o.
        sta     $0540                           ; 8905 8D 40 05                 .@.
        jsr     MapTileSystem_Entry_896F        ; 8908 20 6F 89                  o.
        jsr     MapTileSystem_Entry_896F        ; 890B 20 6F 89                  o.
        sta     $0541                           ; 890E 8D 41 05                 .A.
        ldx     PlayerLocalX                    ; 8911 A6 44                    .D
        ldy     PlayerLocalY                    ; 8913 A4 45                    .E
        jsr     MapTileSystem_Entry_893D        ; 8915 20 3D 89                  =.
        dex                                     ; 8918 CA                       .
        jsr     MapTileSystem_Entry_8957        ; 8919 20 57 89                  W.
        inx                                     ; 891C E8                       .
        cmp     #$20                            ; 891D C9 20                    .
        bcc     MapTileSystem_Branch_8926       ; 891F 90 05                    ..
        cmp     #$24                            ; 8921 C9 24                    .$
        bcs     MapTileSystem_Branch_8926       ; 8923 B0 01                    ..
        dex                                     ; 8925 CA                       .
MapTileSystem_Branch_8926:
        jsr     MapTileSystem_Entry_893D        ; 8926 20 3D 89                  =.
        stx     $053E                           ; 8929 8E 3E 05                 .>.
        sty     $053F                           ; 892C 8C 3F 05                 .?.
        ldx     #$00                            ; 892F A2 00                    ..
        lda     $28                             ; 8931 A5 28                    .(
        cmp     #$32                            ; 8933 C9 32                    .2
        bne     MapTileSystem_Branch_8939       ; 8935 D0 02                    ..
        ldx     #$02                            ; 8937 A2 02                    ..
MapTileSystem_Branch_8939:
        lda     #$01                            ; 8939 A9 01                    ..
        sec                                     ; 893B 38                       8
        rts                                     ; 893C 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_893D:
        lda     $3D                             ; 893D A5 3D                    .=
        beq     MapTileSystem_Branch_8955       ; 893F F0 14                    ..
        cmp     #$01                            ; 8941 C9 01                    ..
        beq     MapTileSystem_Branch_8951       ; 8943 F0 0C                    ..
        cmp     #$02                            ; 8945 C9 02                    ..
        beq     MapTileSystem_Branch_894D       ; 8947 F0 04                    ..
        dex                                     ; 8949 CA                       .
        jmp     MapTileSystem_Branch_8956       ; 894A 4C 56 89                 LV.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_894D:
        dey                                     ; 894D 88                       .
        jmp     MapTileSystem_Branch_8956       ; 894E 4C 56 89                 LV.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8951:
        inx                                     ; 8951 E8                       .
        jmp     MapTileSystem_Branch_8956       ; 8952 4C 56 89                 LV.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8955:
        dey                                     ; 8955 88                       .
MapTileSystem_Branch_8956:
        rts                                     ; 8956 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8957:
        txa                                     ; 8957 8A                       .
        pha                                     ; 8958 48                       H
        tya                                     ; 8959 98                       .
        pha                                     ; 895A 48                       H
        jsr     LowerFixedEngine_Entry_D3E6     ; 895B 20 E6 D3                  ..
        and     #$1F                            ; 895E 29 1F                    ).
        tax                                     ; 8960 AA                       .
        lda     $6F40,x                         ; 8961 BD 40 6F                 .@o
        and     #$7F                            ; 8964 29 7F                    ).
        sta     $03                             ; 8966 85 03                    ..
        pla                                     ; 8968 68                       h
        tay                                     ; 8969 A8                       .
        pla                                     ; 896A 68                       h
        tax                                     ; 896B AA                       .
        lda     $03                             ; 896C A5 03                    ..
        rts                                     ; 896E 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_896F:
        lda     $6F40,y                         ; 896F B9 40 6F                 .@o
        and     #$7F                            ; 8972 29 7F                    ).
        cmp     $0C                             ; 8974 C5 0C                    ..
        beq     MapTileSystem_Branch_897E       ; 8976 F0 06                    ..
        iny                                     ; 8978 C8                       .
        cpy     #$20                            ; 8979 C0 20                    .
        bne     MapTileSystem_Entry_896F        ; 897B D0 F2                    ..
        rts                                     ; 897D 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_897E:
        tya                                     ; 897E 98                       .
        iny                                     ; 897F C8                       .
        rts                                     ; 8980 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8981:
        lda     $09                             ; 8981 A5 09                    ..
        beq     MapTileSystem_Branch_89C8       ; 8983 F0 43                    .C
        lda     $7A                             ; 8985 A5 7A                    .z
        beq     MapTileSystem_Branch_89C8       ; 8987 F0 3F                    .?
        lda     $74                             ; 8989 A5 74                    .t
        lsr     a                               ; 898B 4A                       J
        beq     MapTileSystem_Branch_89C8       ; 898C F0 3A                    .:
        sta     $75                             ; 898E 85 75                    .u
MapTileSystem_Branch_8990:
        lda     $0100                           ; 8990 AD 00 01                 ...
        pha                                     ; 8993 48                       H
        lda     $0101                           ; 8994 AD 01 01                 ...
        pha                                     ; 8997 48                       H
        lda     $0104                           ; 8998 AD 04 01                 ...
        sta     $0100                           ; 899B 8D 00 01                 ...
        lda     $0105                           ; 899E AD 05 01                 ...
        sta     $0101                           ; 89A1 8D 01 01                 ...
        lda     $0106                           ; 89A4 AD 06 01                 ...
        sta     $0104                           ; 89A7 8D 04 01                 ...
        lda     $0107                           ; 89AA AD 07 01                 ...
        sta     $0105                           ; 89AD 8D 05 01                 ...
        lda     $0102                           ; 89B0 AD 02 01                 ...
        sta     $0106                           ; 89B3 8D 06 01                 ...
        lda     $0103                           ; 89B6 AD 03 01                 ...
        sta     $0107                           ; 89B9 8D 07 01                 ...
        pla                                     ; 89BC 68                       h
        sta     $0103                           ; 89BD 8D 03 01                 ...
        pla                                     ; 89C0 68                       h
        sta     $0102                           ; 89C1 8D 02 01                 ...
        dec     $75                             ; 89C4 C6 75                    .u
        bne     MapTileSystem_Branch_8990       ; 89C6 D0 C8                    ..
MapTileSystem_Branch_89C8:
        rts                                     ; 89C8 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_89C9:
        lda     $09                             ; 89C9 A5 09                    ..
        beq     MapTileSystem_Branch_89C8       ; 89CB F0 FB                    ..
        lda     $7A                             ; 89CD A5 7A                    .z
        beq     MapTileSystem_Branch_89C8       ; 89CF F0 F7                    ..
        lda     $74                             ; 89D1 A5 74                    .t
        lsr     a                               ; 89D3 4A                       J
        beq     MapTileSystem_Branch_89C8       ; 89D4 F0 F2                    ..
        sta     $75                             ; 89D6 85 75                    .u
MapTileSystem_Branch_89D8:
        lda     #$80                            ; 89D8 A9 80                    ..
        sta     $02                             ; 89DA 85 02                    ..
MapTileSystem_Branch_89DC:
        jsr     MapTileSystem_Entry_8A00        ; 89DC 20 00 8A                  ..
        lda     $03                             ; 89DF A5 03                    ..
        pha                                     ; 89E1 48                       H
        lsr     $02                             ; 89E2 46 02                    F.
        bne     MapTileSystem_Branch_89DC       ; 89E4 D0 F6                    ..
        ror     $02                             ; 89E6 66 02                    f.
MapTileSystem_Branch_89E8:
        jsr     MapTileSystem_Entry_8A15        ; 89E8 20 15 8A                  ..
        lda     $03                             ; 89EB A5 03                    ..
        pha                                     ; 89ED 48                       H
        lsr     $02                             ; 89EE 46 02                    F.
        bne     MapTileSystem_Branch_89E8       ; 89F0 D0 F6                    ..
        ldx     #$0F                            ; 89F2 A2 0F                    ..
MapTileSystem_Branch_89F4:
        pla                                     ; 89F4 68                       h
        sta     $0108,x                         ; 89F5 9D 08 01                 ...
        dex                                     ; 89F8 CA                       .
        bpl     MapTileSystem_Branch_89F4       ; 89F9 10 F9                    ..
        dec     $75                             ; 89FB C6 75                    .u
        bne     MapTileSystem_Branch_89D8       ; 89FD D0 D9                    ..
        rts                                     ; 89FF 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8A00:
        lda     #$00                            ; 8A00 A9 00                    ..
        sta     $03                             ; 8A02 85 03                    ..
        ldx     #$07                            ; 8A04 A2 07                    ..
MapTileSystem_Branch_8A06:
        clc                                     ; 8A06 18                       .
        lda     $0108,x                         ; 8A07 BD 08 01                 ...
        and     $02                             ; 8A0A 25 02                    %.
        beq     MapTileSystem_Branch_8A0F       ; 8A0C F0 01                    ..
        sec                                     ; 8A0E 38                       8
MapTileSystem_Branch_8A0F:
        rol     $03                             ; 8A0F 26 03                    &.
        dex                                     ; 8A11 CA                       .
        bpl     MapTileSystem_Branch_8A06       ; 8A12 10 F2                    ..
        rts                                     ; 8A14 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8A15:
        lda     #$00                            ; 8A15 A9 00                    ..
        sta     $03                             ; 8A17 85 03                    ..
        ldx     #$07                            ; 8A19 A2 07                    ..
MapTileSystem_Branch_8A1B:
        clc                                     ; 8A1B 18                       .
        lda     $0110,x                         ; 8A1C BD 10 01                 ...
        and     $02                             ; 8A1F 25 02                    %.
        beq     MapTileSystem_Branch_8A24       ; 8A21 F0 01                    ..
        sec                                     ; 8A23 38                       8
MapTileSystem_Branch_8A24:
        rol     $03                             ; 8A24 26 03                    &.
        dex                                     ; 8A26 CA                       .
        bpl     MapTileSystem_Branch_8A1B       ; 8A27 10 F2                    ..
        rts                                     ; 8A29 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8A2A:
        lda     CurrentTilesetCandidate         ; 8A2A A5 65                    .e
        cmp     #$03                            ; 8A2C C9 03                    ..
        bne     MapTileSystem_Branch_8A3F       ; 8A2E D0 0F                    ..
        lda     $41                             ; 8A30 A5 41                    .A
        bmi     MapTileSystem_Branch_8A43       ; 8A32 30 0F                    0.
        lda     #$80                            ; 8A34 A9 80                    ..
        sta     $6F41                           ; 8A36 8D 41 6F                 .Ao
        lda     #$00                            ; 8A39 A9 00                    ..
        sta     $6F54                           ; 8A3B 8D 54 6F                 .To
MapTileSystem_Branch_8A3E:
        rts                                     ; 8A3E 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8A3F:
        lda     $41                             ; 8A3F A5 41                    .A
        bpl     MapTileSystem_Branch_8A3E       ; 8A41 10 FB                    ..
MapTileSystem_Branch_8A43:
        ldx     #$00                            ; 8A43 A2 00                    ..
MapTileSystem_Branch_8A45:
        lda     $8A6C,x                         ; 8A45 BD 6C 8A                 .l.
        bmi     MapTileSystem_Branch_8A57       ; 8A48 30 0D                    0.
        cmp     CurrentMapNumber                ; 8A4A C5 63                    .c
        beq     MapTileSystem_Branch_8A58       ; 8A4C F0 0A                    ..
        ora     #$80                            ; 8A4E 09 80                    ..
        cmp     CurrentMapNumber                ; 8A50 C5 63                    .c
        beq     MapTileSystem_Branch_8A58       ; 8A52 F0 04                    ..
MapTileSystem_Branch_8A54:
        inx                                     ; 8A54 E8                       .
        bne     MapTileSystem_Branch_8A45       ; 8A55 D0 EE                    ..
MapTileSystem_Branch_8A57:
        rts                                     ; 8A57 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_8A58:
        lda     $8A73,x                         ; 8A58 BD 73 8A                 .s.
        cmp     CurrentSubmapNumber             ; 8A5B C5 64                    .d
        bne     MapTileSystem_Branch_8A54       ; 8A5D D0 F5                    ..
        lda     $8A79,x                         ; 8A5F BD 79 8A                 .y.
        tay                                     ; 8A62 A8                       .
        lda     $8A7F,x                         ; 8A63 BD 7F 8A                 ...
        sta     $6F40,y                         ; 8A66 99 40 6F                 .@o
        jmp     MapTileSystem_Branch_8A54       ; 8A69 4C 54 8A                 LT.
; ----------------------------------------------------------------------------
        db   $1C,$48,$00,$00,$00,$00,$FF     ; 8A6C 1C 48 00 00 00 00 FF     .H.....
        db   $00,$08,$00,$00,$00,$00         ; 8A73 00 08 00 00 00 00        ......
        db   $12,$1F,$10,$11,$14,$15         ; 8A79 12 1F 10 11 14 15        ......
        db   $05,$08,$A2,$A2,$A2,$A2         ; 8A7F 05 08 A2 A2 A2 A2        ......
; ----------------------------------------------------------------------------
MapTileSystem_Entry_8A85:
        ldx     $28                             ; 8A85 A6 28                    .(
        cpx     #$0F                            ; 8A87 E0 0F                    ..
        bcs     MapTileSystem_Branch_8A91       ; 8A89 B0 06                    ..
        lda     $8A92,x                         ; 8A8B BD 92 8A                 ...
        sta     $058C                           ; 8A8E 8D 8C 05                 ...
MapTileSystem_Branch_8A91:
        rts                                     ; 8A91 60                       `
; ----------------------------------------------------------------------------
        db   $00,$04,$04,$00,$04,$04,$04,$04 ; 8A92 00 04 04 00 04 04 04 04  ........
        db   $04,$00,$03,$04,$04,$02,$00,$08 ; 8A9A 04 00 03 04 04 02 00 08  ........
        db   $15,$55,$55,$55,$00,$00,$00,$40 ; 8AA2 15 55 55 55 00 00 00 40  .UUU...@
        db   $AA,$AA,$82,$50,$00             ; 8AAA AA AA 82 50 00           ...P.
        db   $07,$00,$07,$00,$08,$1B,$07,$00 ; 8AAF 07 00 07 00 08 1B 07 00  ........
        db   $08,$1D,$08,$1D,$00,$00,$00,$01 ; 8AB7 08 1D 08 1D 00 00 00 01  ........
        db   $00,$02,$00,$03,$00,$04,$00,$05 ; 8ABF 00 02 00 03 00 04 00 05  ........
        db   $00,$06,$00,$07,$00,$08,$00,$09 ; 8AC7 00 06 00 07 00 08 00 09  ........
        db   $00,$0A,$00,$0B,$00,$0C,$00,$0D ; 8ACF 00 0A 00 0B 00 0C 00 0D  ........
        db   $00,$0E,$00,$0F                 ; 8AD7 00 0E 00 0F              ....
Bank08_Tilesets:
        db   $00,$10,$18,$15,$10,$1A,$10,$13 ; 8ADB 00 10 18 15 10 1A 10 13  ........
        db   $10,$14,$18,$1C,$08,$16,$11,$C2 ; 8AE3 10 14 18 1C 08 16 11 C2  ........
        db   $0A,$37,$0A,$38,$01,$C3,$08,$21 ; 8AEB 0A 37 0A 38 01 C3 08 21  .7.8...!
        db   $08,$19,$18,$20,$08,$1E,$08,$1F ; 8AF3 08 19 18 20 08 1E 08 1F  ... ....
        db   $18,$18,$18,$24,$08,$22,$08,$23 ; 8AFB 18 18 18 24 08 22 08 23  ...$.".#
        db   $0A,$3A,$11,$86,$00,$17,$0A,$3B ; 8B03 0A 3A 11 86 00 17 0A 3B  .:.....;
        db   $19,$6A,$19,$6B,$19,$6A,$19,$6B ; 8B0B 19 6A 19 6B 19 6A 19 6B  .j.k.j.k
        db   $19,$6A,$0A,$3C,$0A,$3D,$07,$00 ; 8B13 19 6A 0A 3C 0A 3D 07 00  .j.<.=..
        db   $01,$E3,$10,$1A,$18,$1C,$10,$25 ; 8B1B 01 E3 10 1A 18 1C 10 25  .......%
        db   $10,$13,$08,$74,$28,$75,$A8,$76 ; 8B23 10 13 08 74 28 75 A8 76  ...t(u.v
        db   $08,$5E,$18,$29,$08,$31,$00,$5F ; 8B2B 08 5E 18 29 08 31 00 5F  .^.).1._
        db   $00,$36,$18,$34,$18,$2F,$08,$26 ; 8B33 00 36 18 34 18 2F 08 26  .6.4./.&
        db   $08,$3A,$08,$50,$18,$2D,$18,$2E ; 8B3B 08 3A 08 50 18 2D 18 2E  .:.P.-..
        db   $18,$2C,$08,$51,$08,$52,$08,$53 ; 8B43 18 2C 08 51 08 52 08 53  .,.Q.R.S
        db   $08,$59,$08,$54,$0A,$16,$08,$55 ; 8B4B 08 59 08 54 0A 16 08 55  .Y.T...U
        db   $08,$5A,$08,$56,$08,$57,$08,$58 ; 8B53 08 5A 08 56 08 57 08 58  .Z.V.W.X
        db   $01,$E3,$10,$1A,$18,$1C,$10,$25 ; 8B5B 01 E3 10 1A 18 1C 10 25  .......%
        db   $10,$13,$08,$74,$28,$75,$A8,$76 ; 8B63 10 13 08 74 28 75 A8 76  ...t(u.v
        db   $08,$31,$10,$32,$08,$65,$18,$49 ; 8B6B 08 31 10 32 08 65 18 49  .1.2.e.I
        db   $18,$3D,$00,$36,$18,$34,$18,$2F ; 8B73 18 3D 00 36 18 34 18 2F  .=.6.4./
        db   $08,$26,$08,$3A,$08,$50,$18,$2D ; 8B7B 08 26 08 3A 08 50 18 2D  .&.:.P.-
        db   $18,$2E,$18,$46,$18,$2C,$08,$51 ; 8B83 18 2E 18 46 18 2C 08 51  ...F.,.Q
        db   $08,$52,$08,$53,$08,$54,$0A,$16 ; 8B8B 08 52 08 53 08 54 0A 16  .R.S.T..
        db   $08,$55,$08,$56,$08,$57,$08,$58 ; 8B93 08 55 08 56 08 57 08 58  .U.V.W.X
        db   $01,$E3,$08,$74,$18,$35,$28,$75 ; 8B9B 01 E3 08 74 18 35 28 75  ...t.5(u
        db   $A8,$76,$18,$5B,$18,$5C,$08,$5E ; 8BA3 A8 76 18 5B 18 5C 08 5E  .v.[.\.^
        db   $08,$31,$18,$2F,$08,$26,$08,$3A ; 8BAB 08 31 18 2F 08 26 08 3A  .1./.&.:
        db   $18,$2D,$18,$2E,$18,$37,$18,$38 ; 8BB3 18 2D 18 2E 18 37 18 38  .-...7.8
        db   $11,$C1,$18,$46,$00,$61,$18,$2C ; 8BBB 11 C1 18 46 00 61 18 2C  ...F.a.,
        db   $18,$45,$08,$3C,$00,$2A,$18,$3E ; 8BC3 18 45 08 3C 00 2A 18 3E  .E.<.*.>
        db   $18,$30,$18,$4A,$00,$60,$08,$5D ; 8BCB 18 30 18 4A 00 60 08 5D  .0.J.`.]
        db   $08,$2B,$10,$3B,$18,$4E,$19,$76 ; 8BD3 08 2B 10 3B 18 4E 19 76  .+.;.N.v
        db   $01,$E3,$10,$1A,$18,$1C,$10,$25 ; 8BDB 01 E3 10 1A 18 1C 10 25  .......%
        db   $10,$13,$18,$35,$19,$1A,$19,$70 ; 8BE3 10 13 18 35 19 1A 19 70  ...5...p
        db   $19,$1B,$19,$17,$19,$19,$19,$18 ; 8BEB 19 1B 19 17 19 19 19 18  ........
        db   $18,$5B,$19,$85,$07,$00,$18,$44 ; 8BF3 18 5B 19 85 07 00 18 44  .[.....D
        db   $10,$3F,$18,$33,$18,$3D,$00,$60 ; 8BFB 10 3F 18 33 18 3D 00 60  .?.3.=.`
        db   $18,$73,$18,$26,$18,$37,$18,$38 ; 8C03 18 73 18 26 18 37 18 38  .s.&.7.8
        db   $18,$2F,$18,$46,$00,$61,$18,$45 ; 8C0B 18 2F 18 46 00 61 18 45  ./.F.a.E
        db   $18,$30,$18,$4E,$08,$2B,$18,$43 ; 8C13 18 30 18 4E 08 2B 18 43  .0.N.+.C
        db   $01,$E3,$10,$1A,$18,$1C,$10,$25 ; 8C1B 01 E3 10 1A 18 1C 10 25  .......%
        db   $10,$13,$08,$74,$28,$75,$A8,$76 ; 8C23 10 13 08 74 28 75 A8 76  ...t(u.v
        db   $18,$29,$88,$65,$07,$00,$10,$3B ; 8C2B 18 29 88 65 07 00 10 3B  .).e...;
        db   $08,$4B,$18,$49,$18,$3D,$00,$36 ; 8C33 08 4B 18 49 18 3D 00 36  .K.I.=.6
        db   $18,$48,$18,$34,$18,$2F,$08,$26 ; 8C3B 18 48 18 34 18 2F 08 26  .H.4./.&
        db   $08,$3A,$18,$2D,$18,$2E,$18,$46 ; 8C43 08 3A 18 2D 18 2E 18 46  .:.-...F
        db   $00,$61,$18,$2C,$00,$2A,$18,$3E ; 8C4B 00 61 18 2C 00 2A 18 3E  .a.,.*.>
        db   $18,$4E,$08,$3C,$18,$6C,$08,$2B ; 8C53 18 4E 08 3C 18 6C 08 2B  .N.<.l.+
        db   $01,$E3,$10,$1A,$18,$1C,$10,$25 ; 8C5B 01 E3 10 1A 18 1C 10 25  .......%
        db   $10,$13,$11,$C2,$08,$74,$28,$75 ; 8C63 10 13 11 C2 08 74 28 75  .....t(u
        db   $A8,$76,$18,$5B,$18,$5C,$08,$5E ; 8C6B A8 76 18 5B 18 5C 08 5E  .v.[.\.^
        db   $18,$29,$10,$3B,$18,$33,$18,$3D ; 8C73 18 29 10 3B 18 33 18 3D  .).;.3.=
        db   $00,$5F,$00,$36,$08,$47,$08,$39 ; 8C7B 00 5F 00 36 08 47 08 39  ._.6.G.9
        db   $18,$34,$18,$2F,$08,$26,$08,$3A ; 8C83 18 34 18 2F 08 26 08 3A  .4./.&.:
        db   $08,$50,$18,$2D,$18,$2E,$18,$46 ; 8C8B 08 50 18 2D 18 2E 18 46  .P.-...F
        db   $18,$2C,$08,$3C,$19,$76,$00,$60 ; 8C93 18 2C 08 3C 19 76 00 60  .,.<.v.`
        db   $01,$E3,$10,$1A,$18,$1C,$10,$25 ; 8C9B 01 E3 10 1A 18 1C 10 25  .......%
        db   $10,$13,$08,$74,$18,$35,$18,$29 ; 8CA3 10 13 08 74 18 35 18 29  ...t.5.)
        db   $28,$75,$A8,$76,$48,$27,$C8,$28 ; 8CAB 28 75 A8 76 48 27 C8 28  (u.vH'.(
        db   $18,$5B,$18,$5C,$10,$3B,$10,$3F ; 8CB3 18 5B 18 5C 10 3B 10 3F  .[.\.;.?
        db   $08,$4B,$18,$49,$18,$3D,$00,$36 ; 8CBB 08 4B 18 49 18 3D 00 36  .K.I.=.6
        db   $18,$2F,$08,$50,$08,$26,$08,$3A ; 8CC3 18 2F 08 50 08 26 08 3A  ./.P.&.:
        db   $18,$37,$18,$38,$18,$45,$08,$3C ; 8CCB 18 37 18 38 18 45 08 3C  .7.8.E.<
        db   $18,$30,$00,$42,$08,$2B,$19,$76 ; 8CD3 18 30 00 42 08 2B 19 76  .0.B.+.v
        db   $01,$E3,$10,$1A,$18,$1C,$10,$25 ; 8CDB 01 E3 10 1A 18 1C 10 25  .......%
        db   $10,$13,$11,$C2,$08,$74,$18,$29 ; 8CE3 10 13 11 C2 08 74 18 29  .....t.)
        db   $28,$75,$A8,$76,$18,$5B,$08,$5E ; 8CEB 28 75 A8 76 18 5B 08 5E  (u.v.[.^
        db   $08,$31,$08,$40,$08,$41,$10,$32 ; 8CF3 08 31 08 40 08 41 10 32  .1.@.A.2
        db   $10,$3B,$18,$33,$18,$49,$18,$3D ; 8CFB 10 3B 18 33 18 49 18 3D  .;.3.I.=
        db   $00,$5F,$00,$36,$18,$34,$18,$2F ; 8D03 00 5F 00 36 18 34 18 2F  ._.6.4./
        db   $08,$3A,$08,$26,$18,$2D,$18,$2E ; 8D0B 08 3A 08 26 18 2D 18 2E  .:.&.-..
        db   $18,$2C,$18,$3E,$08,$2B,$19,$76 ; 8D13 18 2C 18 3E 08 2B 19 76  .,.>.+.v
        db   $01,$E3,$00,$60,$10,$3B,$08,$74 ; 8D1B 01 E3 00 60 10 3B 08 74  ...`.;.t
        db   $18,$4E,$00,$42,$28,$75,$A8,$76 ; 8D23 18 4E 00 42 28 75 A8 76  .N.B(u.v
        db   $08,$65,$19,$19,$18,$5B,$18,$5C ; 8D2B 08 65 19 19 18 5B 18 5C  .e...[.\
        db   $08,$1B,$08,$3A,$08,$26,$18,$2D ; 8D33 08 1B 08 3A 08 26 18 2D  ...:.&.-
        db   $18,$2E,$08,$50,$18,$2C,$18,$46 ; 8D3B 18 2E 08 50 18 2C 18 46  ...P.,.F
        db   $11,$C1,$18,$4A,$18,$6C,$18,$72 ; 8D43 11 C1 18 4A 18 6C 18 72  ...J.l.r
        db   $08,$66,$80,$64,$08,$4C,$08,$4D ; 8D4B 08 66 80 64 08 4C 08 4D  .f.d.L.M
        db   $18,$6D,$18,$6E,$18,$6F,$18,$70 ; 8D53 18 6D 18 6E 18 6F 18 70  .m.n.o.p
        db   $10,$1A,$01,$E3,$10,$25,$10,$13 ; 8D5B 10 1A 01 E3 10 25 10 13  .....%..
        db   $10,$3B,$08,$74,$28,$75,$A8,$76 ; 8D63 10 3B 08 74 28 75 A8 76  .;.t(u.v
        db   $08,$65,$C8,$67,$E8,$68,$48,$69 ; 8D6B 08 65 C8 67 E8 68 48 69  .e.g.hHi
        db   $68,$6A,$18,$5B,$00,$36,$18,$34 ; 8D73 68 6A 18 5B 00 36 18 34  hj.[.6.4
        db   $08,$7F,$08,$80,$08,$77,$18,$1C ; 8D7B 08 7F 08 80 08 77 18 1C  .....w..
        db   $08,$81,$08,$82,$08,$26,$08,$AB ; 8D83 08 81 08 82 08 26 08 AB  .....&..
        db   $18,$2F,$08,$3A,$18,$49,$18,$2C ; 8D8B 18 2F 08 3A 18 49 18 2C  ./.:.I.,
        db   $18,$2D,$18,$2E,$18,$6B,$08,$50 ; 8D93 18 2D 18 2E 18 6B 08 50  .-...k.P
        db   $10,$1A,$18,$1C,$01,$E3,$10,$25 ; 8D9B 10 1A 18 1C 01 E3 10 25  .......%
        db   $10,$13,$08,$74,$28,$75,$A8,$76 ; 8DA3 10 13 08 74 28 75 A8 76  ...t(u.v
        db   $08,$65,$18,$5B,$18,$5C,$00,$36 ; 8DAB 08 65 18 5B 18 5C 00 36  .e.[.\.6
        db   $48,$69,$68,$6A,$C8,$67,$E8,$68 ; 8DB3 48 69 68 6A C8 67 E8 68  Hihj.g.h
        db   $08,$7F,$08,$80,$08,$83,$08,$84 ; 8DBB 08 7F 08 80 08 83 08 84  ........
        db   $08,$81,$08,$82,$00,$4F,$08,$5D ; 8DC3 08 81 08 82 00 4F 08 5D  .....O.]
        db   $18,$33,$18,$2F,$08,$3A,$08,$26 ; 8DCB 18 33 18 2F 08 3A 08 26  .3./.:.&
        db   $18,$7A,$18,$2C,$18,$6B,$01,$69 ; 8DD3 18 7A 18 2C 18 6B 01 69  .z.,.k.i
        db   $10,$1A,$18,$1C,$01,$E3,$10,$25 ; 8DDB 10 1A 18 1C 01 E3 10 25  .......%
        db   $10,$13,$10,$3B,$00,$71,$08,$74 ; 8DE3 10 13 10 3B 00 71 08 74  ...;.q.t
        db   $18,$4E,$00,$42,$28,$75,$A8,$76 ; 8DEB 18 4E 00 42 28 75 A8 76  .N.B(u.v
        db   $18,$5B,$18,$5C,$08,$5E,$00,$36 ; 8DF3 18 5B 18 5C 08 5E 00 36  .[.\.^.6
        db   $18,$2F,$19,$76,$08,$3A,$08,$26 ; 8DFB 18 2F 19 76 08 3A 08 26  ./.v.:.&
        db   $18,$2D,$18,$2E,$18,$2C,$08,$50 ; 8E03 18 2D 18 2E 18 2C 08 50  .-...,.P
        db   $80,$64,$18,$79,$08,$4C,$18,$6D ; 8E0B 80 64 18 79 08 4C 18 6D  .d.y.L.m
        db   $18,$6E,$18,$6F,$08,$4D,$18,$70 ; 8E13 18 6E 18 6F 08 4D 18 70  .n.o.M.p
        db   $10,$1A,$01,$E3,$10,$13,$10,$25 ; 8E1B 10 1A 01 E3 10 13 10 25  .......%
        db   $10,$3B,$00,$71,$08,$74,$18,$4E ; 8E23 10 3B 00 71 08 74 18 4E  .;.q.t.N
        db   $00,$42,$28,$75,$A8,$76,$18,$5B ; 8E2B 00 42 28 75 A8 76 18 5B  .B(u.v.[
        db   $18,$5C,$08,$5D,$08,$1B,$00,$36 ; 8E33 18 5C 08 5D 08 1B 00 36  .\.]...6
        db   $18,$2F,$08,$3A,$08,$26,$18,$2C ; 8E3B 18 2F 08 3A 08 26 18 2C  ./.:.&.,
        db   $18,$2D,$18,$2E,$18,$46,$18,$3E ; 8E43 18 2D 18 2E 18 46 18 3E  .-...F.>
        db   $18,$62,$18,$63,$08,$4C,$18,$4A ; 8E4B 18 62 18 63 08 4C 18 4A  .b.c.L.J
        db   $08,$2B,$01,$69,$08,$4D,$19,$76 ; 8E53 08 2B 01 69 08 4D 19 76  .+.i.M.v
        db   $10,$1A,$01,$E3,$10,$25,$10,$3B ; 8E5B 10 1A 01 E3 10 25 10 3B  .....%.;
        db   $08,$74,$18,$29,$28,$75,$A8,$76 ; 8E63 08 74 18 29 28 75 A8 76  .t.)(u.v
        db   $88,$65,$18,$5B,$00,$36,$08,$39 ; 8E6B 88 65 18 5B 00 36 08 39  .e.[.6.9
        db   $08,$47,$18,$48,$18,$34,$18,$2F ; 8E73 08 47 18 48 18 34 18 2F  .G.H.4./
        db   $19,$6E,$19,$76,$08,$3A,$08,$26 ; 8E7B 19 6E 19 76 08 3A 08 26  .n.v.:.&
        db   $00,$4F,$18,$2D,$18,$2E,$08,$50 ; 8E83 00 4F 18 2D 18 2E 08 50  .O.-...P
        db   $18,$2C,$18,$3E,$18,$46,$00,$2A ; 8E8B 18 2C 18 3E 18 46 00 2A  .,.>.F.*
        db   $08,$2B,$08,$77,$07,$00,$18,$1C ; 8E93 08 2B 08 77 07 00 18 1C  .+.w....
        db   $10,$1A,$01,$E3,$00,$60,$10,$3B ; 8E9B 10 1A 01 E3 00 60 10 3B  .....`.;
        db   $00,$71,$08,$74,$18,$4E,$00,$42 ; 8EA3 00 71 08 74 18 4E 00 42  .q.t.N.B
        db   $28,$75,$A8,$76,$18,$2F,$19,$76 ; 8EAB 28 75 A8 76 18 2F 19 76  (u.v./.v
        db   $08,$3A,$08,$26,$08,$50,$18,$6C ; 8EB3 08 3A 08 26 08 50 18 6C  .:.&.P.l
        db   $08,$4C,$18,$6D,$18,$6E,$18,$6F ; 8EBB 08 4C 18 6D 18 6E 18 6F  .L.m.n.o
        db   $08,$4D,$18,$70,$08,$54,$08,$55 ; 8EC3 08 4D 18 70 08 54 08 55  .M.p.T.U
        db   $08,$51,$08,$52,$08,$53,$0A,$16 ; 8ECB 08 51 08 52 08 53 0A 16  .Q.R.S..
        db   $08,$56,$08,$57,$08,$58,$00,$5F ; 8ED3 08 56 08 57 08 58 00 5F  .V.W.X._
        db   $38,$85,$38,$86,$F8,$8D,$F8,$8E ; 8EDB 38 85 38 86 F8 8D F8 8E  8.8.....
        db   $B0,$8A,$10,$89,$90,$8B,$90,$8C ; 8EE3 B0 8A 10 89 90 8B 90 8C  ........
        db   $19,$76,$08,$88,$1A,$02,$19,$83 ; 8EEB 19 76 08 88 1A 02 19 83  .v......
        db   $10,$8F,$10,$90,$08,$87,$00,$D2 ; 8EF3 10 8F 10 90 08 87 00 D2  ........
        db   $01,$E3,$12,$11,$18,$95,$18,$96 ; 8EFB 01 E3 12 11 18 95 18 96  ........
        db   $11,$8C,$10,$C3,$18,$97,$18,$98 ; 8F03 11 8C 10 C3 18 97 18 98  ........
        db   $11,$8D,$48,$D0,$C8,$D1,$10,$C5 ; 8F0B 11 8D 48 D0 C8 D1 10 C5  ..H.....
        db   $00,$5F,$10,$26,$10,$C7,$10,$C6 ; 8F13 00 5F 10 26 10 C7 10 C6  ._.&....
        db   $B8,$9B,$39,$EB,$18,$A7,$18,$AA ; 8F1B B8 9B 39 EB 18 A7 18 AA  ..9.....
        db   $01,$E3,$02,$22,$18,$A6,$18,$A8 ; 8F23 01 E3 02 22 18 A6 18 A8  ..."....
        db   $18,$A0,$18,$CA,$18,$A5,$18,$A9 ; 8F2B 18 A0 18 CA 18 A5 18 A9  ........
        db   $12,$13,$11,$CB,$0A,$03,$0A,$04 ; 8F33 12 13 11 CB 0A 03 0A 04  ........
        db   $1A,$02,$19,$76,$0A,$05,$0A,$06 ; 8F3B 1A 02 19 76 0A 05 0A 06  ...v....
        db   $07,$00,$19,$BC,$1A,$14,$1A,$15 ; 8F43 07 00 19 BC 1A 14 1A 15  ........
        db   $08,$9B,$09,$EB,$08,$D6,$07,$00 ; 8F4B 08 9B 09 EB 08 D6 07 00  ........
        db   $1A,$12,$18,$9D,$18,$D5,$18,$D6 ; 8F53 1A 12 18 9D 18 D5 18 D6  ........
        db   $18,$9C,$01,$E3,$1A,$02,$10,$13 ; 8F5B 18 9C 01 E3 1A 02 10 13  ........
        db   $18,$9E,$08,$9E,$19,$BC,$18,$9D ; 8F63 18 9E 08 9E 19 BC 18 9D  ........
        db   $18,$9F,$08,$9F,$08,$78,$08,$A0 ; 8F6B 18 9F 08 9F 08 78 08 A0  .....x..
        db   $10,$1A,$B8,$9B,$08,$A1,$08,$A2 ; 8F73 10 1A B8 9B 08 A1 08 A2  ........
        db   $07,$00,$07,$00,$08,$A3,$08,$A4 ; 8F7B 07 00 07 00 08 A3 08 A4  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 8F83 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$08,$5D,$9A,$03,$9A,$04 ; 8F8B 07 00 08 5D 9A 03 9A 04  ...]....
        db   $00,$D2,$19,$76,$3A,$05,$3A,$06 ; 8F93 00 D2 19 76 3A 05 3A 06  ...v:.:.
        db   $88,$AC,$88,$AD,$A8,$B0,$C8,$B1 ; 8F9B 88 AC 88 AD A8 B0 C8 B1  ........
        db   $28,$AE,$48,$AF,$18,$9C,$18,$9D ; 8FA3 28 AE 48 AF 18 9C 18 9D  (.H.....
        db   $19,$BC,$18,$CB,$19,$7A,$08,$CA ; 8FAB 19 BC 18 CB 19 7A 08 CA  .....z..
        db   $18,$91,$18,$92,$19,$BA,$19,$BB ; 8FB3 18 91 18 92 19 BA 19 BB  ........
        db   $18,$93,$18,$94,$19,$77,$19,$78 ; 8FBB 18 93 18 94 19 77 19 78  .....w.x
        db   $08,$B3,$19,$76,$19,$79,$19,$FA ; 8FC3 08 B3 19 76 19 79 19 FA  ...v.y..
        db   $10,$B4,$01,$E3,$1A,$02,$07,$00 ; 8FCB 10 B4 01 E3 1A 02 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 8FD3 07 00 07 00 07 00 07 00  ........
        db   $88,$AC,$88,$AD,$A8,$B0,$C8,$B1 ; 8FDB 88 AC 88 AD A8 B0 C8 B1  ........
        db   $28,$AE,$48,$AF,$07,$00,$07,$00 ; 8FE3 28 AE 48 AF 07 00 07 00  (.H.....
        db   $18,$B7,$18,$B8,$08,$B5,$08,$B6 ; 8FEB 18 B7 18 B8 08 B5 08 B6  ........
        db   $18,$B9,$18,$BA,$1A,$02,$18,$9D ; 8FF3 18 B9 18 BA 1A 02 18 9D  ........
        db   $01,$E3,$07,$00,$19,$BC,$10,$B2 ; 8FFB 01 E3 07 00 19 BC 10 B2  ........
        db   $09,$EA,$01,$E9,$19,$76,$08,$B3 ; 9003 09 EA 01 E9 19 76 08 B3  .....v..
        db   $10,$B4,$07,$00,$07,$00,$07,$00 ; 900B 10 B4 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9013 07 00 07 00 07 00 07 00  ........
        db   $88,$BB,$88,$BC,$A8,$BF,$C8,$C0 ; 901B 88 BB 88 BC A8 BF C8 C0  ........
        db   $28,$BD,$48,$BE,$08,$C7,$08,$26 ; 9023 28 BD 48 BE 08 C7 08 26  (.H....&
        db   $10,$C1,$10,$C2,$08,$C3,$01,$E3 ; 902B 10 C1 10 C2 08 C3 01 E3  ........
        db   $08,$C5,$07,$00,$09,$7F,$09,$80 ; 9033 08 C5 07 00 09 7F 09 80  ........
        db   $08,$C6,$07,$00,$09,$81,$09,$82 ; 903B 08 C6 07 00 09 81 09 82  ........
        db   $1A,$02,$18,$49,$08,$A1,$08,$A2 ; 9043 1A 02 18 49 08 A1 08 A2  ...I....
        db   $08,$78,$09,$8C,$08,$A3,$08,$A4 ; 904B 08 78 09 8C 08 A3 08 A4  .x......
        db   $09,$84,$09,$8D,$19,$76,$07,$00 ; 9053 09 84 09 8D 19 76 07 00  .....v..
        db   $88,$BB,$88,$BC,$A8,$BF,$C8,$C0 ; 905B 88 BB 88 BC A8 BF C8 C0  ........
        db   $28,$BD,$48,$BE,$1A,$02,$08,$C5 ; 9063 28 BD 48 BE 1A 02 08 C5  (.H.....
        db   $09,$7F,$09,$80,$08,$C3,$08,$C6 ; 906B 09 7F 09 80 08 C3 08 C6  ........
        db   $09,$81,$09,$82,$10,$C1,$10,$C2 ; 9073 09 81 09 82 10 C1 10 C2  ........
        db   $08,$C7,$08,$26,$09,$74,$08,$C8 ; 907B 08 C7 08 26 09 74 08 C8  ...&.t..
        db   $09,$71,$09,$72,$09,$73,$08,$C9 ; 9083 09 71 09 72 09 73 08 C9  .q.r.s..
        db   $08,$A1,$08,$A2,$09,$75,$18,$C4 ; 908B 08 A1 08 A2 09 75 18 C4  .....u..
        db   $08,$A3,$08,$A4,$01,$E3,$19,$76 ; 9093 08 A3 08 A4 01 E3 19 76  .......v
        db   $07,$00,$B0,$9B,$01,$E3,$1A,$02 ; 909B 07 00 B0 9B 01 E3 1A 02  ........
        db   $1A,$07,$10,$9C,$10,$9D,$11,$BC ; 90A3 1A 07 10 9C 10 9D 11 BC  ........
        db   $1A,$08,$10,$CA,$11,$77,$11,$78 ; 90AB 1A 08 10 CA 11 77 11 78  .....w.x
        db   $11,$79,$11,$FA,$11,$7D,$11,$7E ; 90B3 11 79 11 FA 11 7D 11 7E  .y...}.~
        db   $11,$7A,$10,$CB,$11,$7B,$11,$7C ; 90BB 11 7A 10 CB 11 7B 11 7C  .z...{.|
        db   $08,$A0,$19,$76,$18,$78,$10,$13 ; 90C3 08 A0 19 76 18 78 10 13  ...v.x..
        db   $07,$00,$19,$EB,$50,$D0,$D0,$D1 ; 90CB 07 00 19 EB 50 D0 D0 D1  ....P...
        db   $11,$CC,$09,$D1,$07,$00,$07,$00 ; 90D3 11 CC 09 D1 07 00 07 00  ........
        db   $0A,$17,$0A,$18,$0A,$19,$18,$CC ; 90DB 0A 17 0A 18 0A 19 18 CC  ........
        db   $8A,$1A,$8A,$1C,$8A,$1B,$99,$DF ; 90E3 8A 1A 8A 1C 8A 1B 99 DF  ........
        db   $8A,$1D,$8A,$1E,$8A,$1F,$99,$87 ; 90EB 8A 1D 8A 1E 8A 1F 99 87  ........
        db   $30,$CE,$92,$23,$30,$CF,$0A,$21 ; 90F3 30 CE 92 23 30 CF 0A 21  0..#0..!
        db   $31,$BE,$31,$BD,$31,$BF,$19,$76 ; 90FB 31 BE 31 BD 31 BF 19 76  1.1.1..v
        db   $39,$E0,$8A,$20,$98,$CD,$98,$26 ; 9103 39 E0 8A 20 98 CD 98 26  9.. ...&
        db   $07,$00,$07,$00,$07,$00,$39,$C0 ; 910B 07 00 07 00 07 00 39 C0  ......9.
        db   $01,$E8,$B9,$DC,$99,$DD,$99,$DE ; 9113 01 E8 B9 DC 99 DD 99 DE  ........
        db   $2A,$09,$AA,$0A,$0A,$0B,$19,$76 ; 911B 2A 09 AA 0A 0A 0B 19 76  *......v
        db   $07,$00,$07,$00,$10,$95,$10,$96 ; 9123 07 00 07 00 10 95 10 96  ........
        db   $07,$00,$07,$00,$10,$97,$10,$98 ; 912B 07 00 07 00 10 97 10 98  ........
        db   $10,$B7,$10,$B8,$18,$D3,$18,$9D ; 9133 10 B7 10 B8 18 D3 18 9D  ........
        db   $10,$B9,$10,$BA,$18,$D4,$19,$BC ; 913B 10 B9 10 BA 18 D4 19 BC  ........
        db   $02,$02,$00,$D2,$07,$00,$07,$00 ; 9143 02 02 00 D2 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 914B 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9153 07 00 07 00 07 00 07 00  ........
        db   $88,$AC,$88,$AD,$A9,$8E,$C9,$8F ; 915B 88 AC 88 AD A9 8E C9 8F  ........
        db   $28,$AE,$48,$AF,$01,$E3,$10,$13 ; 9163 28 AE 48 AF 01 E3 10 13  (.H.....
        db   $18,$95,$18,$96,$18,$97,$18,$98 ; 916B 18 95 18 96 18 97 18 98  ........
        db   $1A,$02,$08,$99,$19,$BC,$18,$9D ; 9173 1A 02 08 99 19 BC 18 9D  ........
        db   $07,$00,$08,$9A,$18,$91,$18,$92 ; 917B 07 00 08 9A 18 91 18 92  ........
        db   $88,$7F,$88,$80,$18,$93,$18,$94 ; 9183 88 7F 88 80 18 93 18 94  ........
        db   $88,$81,$88,$82,$19,$76,$11,$C2 ; 918B 88 81 88 82 19 76 11 C2  .....v..
        db   $07,$00,$07,$00,$07,$00,$00,$D2 ; 9193 07 00 07 00 07 00 00 D2  ........
        db   $29,$90,$89,$91,$07,$00,$10,$13 ; 919B 29 90 89 91 07 00 10 13  ).......
        db   $07,$00,$09,$92,$09,$93,$89,$94 ; 91A3 07 00 09 92 09 93 89 94  ........
        db   $89,$95,$89,$96,$89,$97,$19,$98 ; 91AB 89 95 89 96 89 97 19 98  ........
        db   $19,$99,$89,$9A,$89,$9B,$10,$1A ; 91B3 19 99 89 9A 89 9B 10 1A  ........
        db   $89,$9C,$89,$9D,$09,$9E,$09,$9F ; 91BB 89 9C 89 9D 09 9E 09 9F  ........
        db   $09,$A0,$09,$A1,$09,$A2,$09,$A3 ; 91C3 09 A0 09 A1 09 A2 09 A3  ........
        db   $89,$A4,$07,$00,$09,$53,$08,$60 ; 91CB 89 A4 07 00 09 53 08 60  .....S.`
        db   $01,$E3,$08,$CA,$07,$00,$07,$00 ; 91D3 01 E3 08 CA 07 00 07 00  ........
        db   $10,$CC,$19,$98,$19,$99,$10,$CD ; 91DB 10 CC 19 98 19 99 10 CD  ........
        db   $01,$E8,$01,$E3,$08,$60,$29,$90 ; 91E3 01 E8 01 E3 08 60 29 90  .....`).
        db   $11,$DC,$09,$53,$09,$94,$09,$95 ; 91EB 11 DC 09 53 09 94 09 95  ...S....
        db   $89,$9A,$89,$9B,$11,$DD,$A9,$91 ; 91F3 89 9A 89 9B 11 DD A9 91  ........
        db   $01,$A5,$09,$92,$09,$93,$09,$96 ; 91FB 01 A5 09 92 09 93 09 96  ........
        db   $09,$97,$09,$A0,$09,$A1,$89,$9C ; 9203 09 97 09 A0 09 A1 89 9C  ........
        db   $89,$9D,$08,$CA,$11,$DE,$10,$26 ; 920B 89 9D 08 CA 11 DE 10 26  .......&
        db   $09,$A2,$09,$A3,$19,$76,$12,$0C ; 9213 09 A2 09 A3 19 76 12 0C  .....v..
        db   $10,$46,$B8,$9B,$1A,$02,$10,$74 ; 921B 10 46 B8 9B 1A 02 10 74  .F.....t
        db   $10,$3C,$18,$9D,$10,$2C,$10,$3E ; 9223 10 3C 18 9D 10 2C 10 3E  .<...,.>
        db   $07,$00,$10,$2D,$10,$2E,$08,$A0 ; 922B 07 00 10 2D 10 2E 08 A0  ...-....
        db   $19,$76,$38,$85,$38,$86,$F8,$8D ; 9233 19 76 38 85 38 86 F8 8D  .v8.8...
        db   $F8,$8E,$01,$E3,$07,$00,$07,$00 ; 923B F8 8E 01 E3 07 00 07 00  ........
        db   $9A,$03,$9A,$04,$07,$00,$07,$00 ; 9243 9A 03 9A 04 07 00 07 00  ........
        db   $3A,$05,$3A,$06,$07,$00,$07,$00 ; 924B 3A 05 3A 06 07 00 07 00  :.:.....
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9253 07 00 07 00 07 00 07 00  ........
        db   $09,$C4,$09,$C5,$09,$C6,$09,$C7 ; 925B 09 C4 09 C5 09 C6 09 C7  ........
        db   $09,$C9,$09,$C8,$09,$CA,$19,$CB ; 9263 09 C9 09 C8 09 CA 19 CB  ........
        db   $1A,$26,$1A,$27,$19,$CF,$19,$D0 ; 926B 1A 26 1A 27 19 CF 19 D0  .&.'....
        db   $1A,$28,$1A,$29,$01,$CD,$01,$CE ; 9273 1A 28 1A 29 01 CD 01 CE  .(.)....
        db   $1A,$2E,$1A,$2F,$07,$00,$07,$00 ; 927B 1A 2E 1A 2F 07 00 07 00  .../....
        db   $1A,$2A,$1A,$2B,$1A,$2C,$1A,$2D ; 9283 1A 2A 1A 2B 1A 2C 1A 2D  .*.+.,.-
        db   $1A,$30,$1A,$31,$1A,$32,$1A,$33 ; 928B 1A 30 1A 31 1A 32 1A 33  .0.1.2.3
        db   $1A,$24,$1A,$25,$11,$D1,$02,$36 ; 9293 1A 24 1A 25 11 D1 02 36  .$.%...6
        db   $19,$A6,$19,$A7,$19,$A8,$19,$A9 ; 929B 19 A6 19 A7 19 A8 19 A9  ........
        db   $19,$AA,$19,$AB,$19,$AC,$19,$AD ; 92A3 19 AA 19 AB 19 AC 19 AD  ........
        db   $19,$AE,$19,$AF,$19,$B0,$19,$B1 ; 92AB 19 AE 19 AF 19 B0 19 B1  ........
        db   $19,$B2,$19,$B3,$19,$B4,$19,$B5 ; 92B3 19 B2 19 B3 19 B4 19 B5  ........
        db   $19,$B6,$19,$B7,$19,$B8,$19,$B9 ; 92BB 19 B6 19 B7 19 B8 19 B9  ........
        db   $28,$75,$A8,$76,$08,$65,$08,$74 ; 92C3 28 75 A8 76 08 65 08 74  (u.v.e.t
        db   $09,$D2,$09,$D3,$09,$D4,$1A,$02 ; 92CB 09 D2 09 D3 09 D4 1A 02  ........
        db   $19,$D5,$08,$31,$19,$D6,$07,$00 ; 92D3 19 D5 08 31 19 D6 07 00  ...1....
        db   $29,$F4,$A9,$F3,$09,$EC,$08,$D7 ; 92DB 29 F4 A9 F3 09 EC 08 D7  ).......
        db   $10,$1A,$00,$60,$02,$34,$02,$35 ; 92E3 10 1A 00 60 02 34 02 35  ...`.4.5
        db   $08,$50,$09,$F1,$09,$F2,$08,$26 ; 92EB 08 50 09 F1 09 F2 08 26  .P.....&
        db   $09,$ED,$09,$EE,$09,$EF,$09,$F0 ; 92F3 09 ED 09 EE 09 EF 09 F0  ........
        db   $08,$D8,$08,$D9,$09,$F6,$09,$F7 ; 92FB 08 D8 08 D9 09 F6 09 F7  ........
        db   $09,$F5,$08,$CA,$19,$76,$07,$00 ; 9303 09 F5 08 CA 19 76 07 00  .....v..
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 930B 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9313 07 00 07 00 07 00 07 00  ........
        db   $11,$D7,$09,$D8,$09,$F5,$19,$F9 ; 931B 11 D7 09 D8 09 F5 19 F9  ........
        db   $09,$EC,$18,$4E,$09,$D9,$00,$60 ; 9323 09 EC 18 4E 09 D9 00 60  ...N...`
        db   $08,$26,$09,$F8,$02,$35,$02,$34 ; 932B 08 26 09 F8 02 35 02 34  .&...5.4
        db   $09,$F4,$09,$F3,$09,$DA,$19,$76 ; 9333 09 F4 09 F3 09 DA 19 76  .......v
        db   $07,$00,$07,$00,$09,$DB,$07,$00 ; 933B 07 00 07 00 09 DB 07 00  ........
        db   $07,$00,$07,$00,$01,$E3,$00,$61 ; 9343 07 00 07 00 01 E3 00 61  .......a
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 934B 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9353 07 00 07 00 07 00 07 00  ........
        db   $29,$F4,$A9,$F3,$09,$F5,$08,$D7 ; 935B 29 F4 A9 F3 09 F5 08 D7  ).......
        db   $07,$00,$08,$CA,$09,$EC,$00,$60 ; 9363 07 00 08 CA 09 EC 00 60  .......`
        db   $09,$71,$08,$DA,$09,$72,$09,$F6 ; 936B 09 71 08 DA 09 72 09 F6  .q...r..
        db   $09,$73,$09,$74,$09,$75,$09,$F7 ; 9373 09 73 09 74 09 75 09 F7  .s.t.u..
        db   $10,$1E,$10,$1F,$18,$DB,$18,$DC ; 937B 10 1E 10 1F 18 DB 18 DC  ........
        db   $10,$22,$10,$23,$18,$DD,$18,$DE ; 9383 10 22 10 23 18 DD 18 DE  .".#....
        db   $18,$DF,$18,$E0,$18,$E1,$18,$E2 ; 938B 18 DF 18 E0 18 E1 18 E2  ........
        db   $18,$E3,$08,$D8,$08,$D9,$08,$26 ; 9393 18 E3 08 D8 08 D9 08 26  .......&
        db   $39,$E6,$39,$E7,$39,$0D,$39,$0E ; 939B 39 E6 39 E7 39 0D 39 0E  9.9.9.9.
        db   $39,$06,$39,$07,$39,$08,$59,$09 ; 93A3 39 06 39 07 39 08 59 09  9.9.9.Y.
        db   $B9,$0A,$D9,$0B,$09,$0F,$09,$10 ; 93AB B9 0A D9 0B 09 0F 09 10  ........
        db   $09,$00,$09,$04,$08,$FF,$09,$01 ; 93B3 09 00 09 04 08 FF 09 01  ........
        db   $09,$03,$09,$02,$09,$11,$09,$12 ; 93BB 09 03 09 02 09 11 09 12  ........
        db   $99,$E4,$99,$0C,$99,$E5,$00,$60 ; 93C3 99 E4 99 0C 99 E5 00 60  .......`
        db   $09,$15,$09,$05,$08,$8F,$08,$90 ; 93CB 09 15 09 05 08 8F 08 90  ........
        db   $11,$13,$11,$14,$19,$76,$07,$00 ; 93D3 11 13 11 14 19 76 07 00  .....v..
        db   $08,$F8,$08,$F9,$08,$FA,$18,$2F ; 93DB 08 F8 08 F9 08 FA 18 2F  ......./
        db   $08,$FB,$08,$FC,$08,$FD,$08,$FE ; 93E3 08 FB 08 FC 08 FD 08 FE  ........
        db   $08,$FF,$09,$00,$09,$01,$09,$02 ; 93EB 08 FF 09 00 09 01 09 02  ........
        db   $09,$03,$09,$04,$09,$05,$07,$00 ; 93F3 09 03 09 04 09 05 07 00  ........
        db   $19,$85,$07,$00,$18,$1C,$10,$25 ; 93FB 19 85 07 00 18 1C 10 25  .......%
        db   $10,$13,$10,$1A,$18,$37,$18,$38 ; 9403 10 13 10 1A 18 37 18 38  .....7.8
        db   $18,$45,$18,$35,$07,$00,$07,$00 ; 940B 18 45 18 35 07 00 07 00  .E.5....
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9413 07 00 07 00 07 00 07 00  ........
        db   $88,$BB,$88,$BC,$A8,$BF,$C8,$C0 ; 941B 88 BB 88 BC A8 BF C8 C0  ........
        db   $28,$BD,$48,$BE,$08,$E4,$08,$E5 ; 9423 28 BD 48 BE 08 E4 08 E5  (.H.....
        db   $08,$26,$07,$00,$07,$00,$08,$EE ; 942B 08 26 07 00 07 00 08 EE  .&......
        db   $08,$F4,$08,$F5,$00,$60,$08,$EF ; 9433 08 F4 08 F5 00 60 08 EF  .....`..
        db   $08,$F6,$08,$F7,$08,$78,$08,$31 ; 943B 08 F6 08 F7 08 78 08 31  .....x.1
        db   $1A,$0D,$1A,$0E,$08,$F2,$00,$D2 ; 9443 1A 0D 1A 0E 08 F2 00 D2  ........
        db   $1A,$0F,$1A,$10,$08,$F3,$19,$76 ; 944B 1A 0F 1A 10 08 F3 19 76  .......v
        db   $10,$1A,$00,$71,$08,$C1,$08,$C2 ; 9453 10 1A 00 71 08 C1 08 C2  ...q....
        db   $88,$BB,$88,$BC,$A8,$BF,$C8,$C0 ; 945B 88 BB 88 BC A8 BF C8 C0  ........
        db   $28,$BD,$48,$BE,$08,$E4,$08,$E5 ; 9463 28 BD 48 BE 08 E4 08 E5  (.H.....
        db   $09,$71,$09,$72,$08,$DA,$09,$74 ; 946B 09 71 09 72 08 DA 09 74  .q.r...t
        db   $09,$73,$09,$75,$08,$78,$00,$61 ; 9473 09 73 09 75 08 78 00 61  .s.u.x.a
        db   $18,$E6,$18,$E7,$08,$EA,$08,$EB ; 947B 18 E6 18 E7 08 EA 08 EB  ........
        db   $18,$E8,$18,$E9,$08,$EC,$08,$ED ; 9483 18 E8 18 E9 08 EC 08 ED  ........
        db   $08,$EE,$08,$F0,$18,$F2,$19,$76 ; 948B 08 EE 08 F0 18 F2 19 76  .......v
        db   $08,$EF,$08,$F1,$18,$F3,$01,$69 ; 9493 08 EF 08 F1 18 F3 01 69  .......i
        db   $88,$BB,$88,$BC,$A8,$BF,$C8,$C0 ; 949B 88 BB 88 BC A8 BF C8 C0  ........
        db   $28,$BD,$48,$BE,$08,$E4,$08,$26 ; 94A3 28 BD 48 BE 08 E4 08 26  (.H....&
        db   $08,$EE,$18,$2C,$00,$60,$01,$E3 ; 94AB 08 EE 18 2C 00 60 01 E3  ...,.`..
        db   $08,$EF,$10,$1A,$10,$13,$10,$3B ; 94B3 08 EF 10 1A 10 13 10 3B  .......;
        db   $18,$1C,$08,$F0,$18,$E6,$18,$E7 ; 94BB 18 1C 08 F0 18 E6 18 E7  ........
        db   $00,$D2,$08,$F1,$18,$E8,$18,$E9 ; 94C3 00 D2 08 F1 18 E8 18 E9  ........
        db   $19,$76,$08,$E5,$68,$75,$E8,$76 ; 94CB 19 76 08 E5 68 75 E8 76  .v..hu.v
        db   $08,$74,$18,$2D,$18,$2E,$18,$2F ; 94D3 08 74 18 2D 18 2E 18 2F  .t.-.../
        db   $88,$BB,$88,$BC,$A8,$BF,$C8,$C0 ; 94DB 88 BB 88 BC A8 BF C8 C0  ........
        db   $28,$BD,$48,$BE,$08,$E4,$00,$60 ; 94E3 28 BD 48 BE 08 E4 00 60  (.H....`
        db   $18,$E6,$18,$E7,$08,$D2,$08,$78 ; 94EB 18 E6 18 E7 08 D2 08 78  .......x
        db   $18,$E8,$18,$E9,$08,$C1,$08,$C2 ; 94F3 18 E8 18 E9 08 C1 08 C2  ........
        db   $18,$F2,$09,$FB,$08,$F0,$00,$42 ; 94FB 18 F2 09 FB 08 F0 00 42  .......B
        db   $18,$F3,$09,$FC,$08,$F1,$10,$1A ; 9503 18 F3 09 FC 08 F1 10 1A  ........
        db   $19,$FD,$19,$FE,$08,$E5,$08,$26 ; 950B 19 FD 19 FE 08 E5 08 26  .......&
        db   $19,$76,$19,$FF,$1A,$00,$09,$F4 ; 9513 19 76 19 FF 1A 00 09 F4  .v......
        db   $92,$03,$92,$04,$1A,$02,$08,$A0 ; 951B 92 03 92 04 1A 02 08 A0  ........
        db   $32,$05,$32,$06,$08,$78,$01,$E3 ; 9523 32 05 32 06 08 78 01 E3  2.2..x..
        db   $B0,$9B,$07,$00,$00,$D2,$07,$00 ; 952B B0 9B 07 00 00 D2 07 00  ........
        db   $19,$76,$18,$9D,$19,$BC,$07,$00 ; 9533 19 76 18 9D 19 BC 07 00  .v......
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 953B 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9543 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 954B 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9553 07 00 07 00 07 00 07 00  ........
        db   $92,$03,$92,$04,$B0,$9B,$19,$76 ; 955B 92 03 92 04 B0 9B 19 76  .......v
        db   $32,$05,$32,$06,$18,$9E,$18,$9F ; 9563 32 05 32 06 18 9E 18 9F  2.2.....
        db   $18,$A1,$18,$A2,$0A,$02,$08,$9C ; 956B 18 A1 18 A2 0A 02 08 9C  ........
        db   $18,$A3,$18,$A4,$08,$9D,$09,$BC ; 9573 18 A3 18 A4 08 9D 09 BC  ........
        db   $88,$D5,$88,$D6,$08,$A7,$08,$AA ; 957B 88 D5 88 D6 08 A7 08 AA  ........
        db   $88,$A5,$88,$A9,$08,$A6,$08,$A8 ; 9583 88 A5 88 A9 08 A6 08 A8  ........
        db   $01,$E3,$18,$78,$07,$00,$07,$00 ; 958B 01 E3 18 78 07 00 07 00  ...x....
        db   $07,$00,$07,$00,$07,$00,$00,$D2 ; 9593 07 00 07 00 07 00 00 D2  ........
        db   $88,$BB,$88,$BC,$A8,$BF,$C8,$C0 ; 959B 88 BB 88 BC A8 BF C8 C0  ........
        db   $28,$BD,$48,$BE,$08,$E4,$08,$E5 ; 95A3 28 BD 48 BE 08 E4 08 E5  (.H.....
        db   $08,$26,$07,$00,$07,$00,$08,$EE ; 95AB 08 26 07 00 07 00 08 EE  .&......
        db   $08,$F4,$08,$F5,$00,$60,$08,$EF ; 95B3 08 F4 08 F5 00 60 08 EF  .....`..
        db   $08,$F6,$08,$F7,$08,$78,$08,$31 ; 95BB 08 F6 08 F7 08 78 08 31  .....x.1
        db   $18,$E6,$18,$E7,$08,$F2,$00,$D2 ; 95C3 18 E6 18 E7 08 F2 00 D2  ........
        db   $18,$E8,$18,$E9,$08,$F3,$19,$76 ; 95CB 18 E8 18 E9 08 F3 19 76  .......v
        db   $10,$1A,$00,$71,$08,$C1,$08,$C2 ; 95D3 10 1A 00 71 08 C1 08 C2  ...q....
        db   $28,$75,$A8,$76,$08,$74,$80,$64 ; 95DB 28 75 A8 76 08 74 80 64  (u.v.t.d
        db   $18,$4E,$18,$2C,$18,$46,$08,$50 ; 95E3 18 4E 18 2C 18 46 08 50  .N.,.F.P
        db   $08,$3A,$08,$56,$08,$57,$08,$58 ; 95EB 08 3A 08 56 08 57 08 58  .:.V.W.X
        db   $0A,$16,$19,$8B,$11,$40,$18,$5B ; 95F3 0A 16 19 8B 11 40 18 5B  .....@.[
        db   $08,$54,$08,$55,$08,$3C,$08,$2D ; 95FB 08 54 08 55 08 3C 08 2D  .T.U.<.-
        db   $08,$2E,$08,$4C,$08,$4D,$08,$59 ; 9603 08 2E 08 4C 08 4D 08 59  ...L.M.Y
        db   $08,$5A,$11,$3E,$07,$00,$19,$3F ; 960B 08 5A 11 3E 07 00 19 3F  .Z.>...?
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9613 07 00 07 00 07 00 07 00  ........
        db   $28,$75,$A8,$76,$08,$1A,$09,$31 ; 961B 28 75 A8 76 08 1A 09 31  (u.v...1
        db   $09,$33,$09,$34,$08,$65,$09,$32 ; 9623 09 33 09 34 08 65 09 32  .3.4.e.2
        db   $08,$7F,$08,$80,$07,$00,$09,$3C ; 962B 08 7F 08 80 07 00 09 3C  .......<
        db   $08,$81,$08,$82,$11,$35,$19,$36 ; 9633 08 81 08 82 11 35 19 36  .....5.6
        db   $11,$37,$19,$38,$11,$39,$19,$3A ; 963B 11 37 19 38 11 39 19 3A  .7.8.9.:
        db   $19,$3B,$11,$E1,$07,$00,$08,$69 ; 9643 19 3B 11 E1 07 00 08 69  .;.....i
        db   $08,$6A,$09,$6C,$09,$6D,$11,$E2 ; 964B 08 6A 09 6C 09 6D 11 E2  .j.l.m..
        db   $08,$26,$09,$3D,$80,$64,$11,$41 ; 9653 08 26 09 3D 80 64 11 41  .&.=.d.A
        db   $18,$35,$19,$1A,$19,$1B,$19,$16 ; 965B 18 35 19 1A 19 1B 19 16  .5......
        db   $09,$1C,$19,$1F,$19,$17,$19,$18 ; 9663 09 1C 19 1F 19 17 19 18  ........
        db   $19,$19,$18,$73,$18,$4A,$18,$45 ; 966B 19 19 18 73 18 4A 18 45  ...s.J.E
        db   $18,$37,$18,$38,$18,$30,$19,$70 ; 9673 18 37 18 38 18 30 19 70  .7.8.0.p
        db   $18,$46,$19,$20,$07,$00,$07,$00 ; 967B 18 46 19 20 07 00 07 00  .F. ....
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9683 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 968B 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9693 07 00 07 00 07 00 07 00  ........
        db   $01,$E3,$28,$75,$A8,$76,$08,$74 ; 969B 01 E3 28 75 A8 76 08 74  ..(u.v.t
        db   $19,$16,$19,$26,$19,$27,$19,$28 ; 96A3 19 16 19 26 19 27 19 28  ...&.'.(
        db   $19,$29,$19,$2A,$19,$2B,$19,$21 ; 96AB 19 29 19 2A 19 2B 19 21  .).*.+.!
        db   $19,$22,$19,$23,$19,$24,$19,$25 ; 96B3 19 22 19 23 19 24 19 25  .".#.$.%
        db   $19,$2E,$19,$1F,$09,$1C,$18,$26 ; 96BB 19 2E 19 1F 09 1C 18 26  .......&
        db   $19,$2F,$19,$1E,$08,$50,$19,$6F ; 96C3 19 2F 19 1E 08 50 19 6F  ./...P.o
        db   $19,$1D,$19,$30,$08,$2C,$19,$6E ; 96CB 19 1D 19 30 08 2C 19 6E  ...0.,.n
        db   $19,$2C,$19,$20,$11,$2D,$18,$35 ; 96D3 19 2C 19 20 11 2D 18 35  .,. .-.5
        db   $29,$61,$A9,$62,$09,$54,$11,$C2 ; 96DB 29 61 A9 62 09 54 11 C2  )a.b.T..
        db   $09,$67,$19,$76,$00,$71,$08,$26 ; 96E3 09 67 19 76 00 71 08 26  .g.v.q.&
        db   $09,$68,$09,$63,$09,$64,$19,$55 ; 96EB 09 68 09 63 09 64 19 55  .h.c.d.U
        db   $09,$65,$18,$C4,$01,$E3,$07,$00 ; 96F3 09 65 18 C4 01 E3 07 00  .e......
        db   $09,$66,$00,$42,$01,$69,$00,$D2 ; 96FB 09 66 00 42 01 69 00 D2  .f.B.i..
        db   $0A,$01,$49,$8A,$C9,$89,$07,$00 ; 9703 0A 01 49 8A C9 89 07 00  ..I.....
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 970B 07 00 07 00 07 00 07 00  ........
        db   $07,$00,$07,$00,$07,$00,$07,$00 ; 9713 07 00 07 00 07 00 07 00  ........
        db   $89,$45,$89,$46,$89,$47,$89,$51 ; 971B 89 45 89 46 89 47 89 51  .E.F.G.Q
        db   $89,$48,$89,$49,$89,$4A,$49,$52 ; 9723 89 48 89 49 89 4A 49 52  .H.I.JIR
        db   $29,$4B,$49,$4C,$69,$4D,$89,$53 ; 972B 29 4B 49 4C 69 4D 89 53  )KILiM.S
        db   $A9,$4E,$C9,$4F,$E9,$50,$09,$54 ; 9733 A9 4E C9 4F E9 50 09 54  .N.O.P.T
        db   $10,$25,$10,$1A,$19,$76,$19,$55 ; 973B 10 25 10 1A 19 76 19 55  .%...v.U
        db   $89,$56,$89,$57,$89,$58,$89,$59 ; 9743 89 56 89 57 89 58 89 59  .V.W.X.Y
        db   $89,$5B,$89,$5C,$89,$5D,$89,$5E ; 974B 89 5B 89 5C 89 5D 89 5E  .[.\.].^
        db   $89,$5F,$89,$60,$89,$5A,$07,$00 ; 9753 89 5F 89 60 89 5A 07 00  ._.`.Z..
        db   $48,$69,$68,$6A,$C9,$42,$E9,$43 ; 975B 48 69 68 6A C9 42 E9 43  Hihj.B.C
        db   $28,$75,$A8,$76,$09,$44,$09,$87 ; 9763 28 75 A8 76 09 44 09 87  (u.v.D..
        db   $18,$7B,$18,$7C,$08,$B5,$08,$B6 ; 976B 18 7B 18 7C 08 B5 08 B6  .{.|....
        db   $18,$7D,$18,$7E,$07,$00,$07,$00 ; 9773 18 7D 18 7E 07 00 07 00  .}.~....
        db   $18,$72,$07,$00,$80,$64,$00,$60 ; 977B 18 72 07 00 80 64 00 60  .r...d.`
        db   $08,$26,$10,$DB,$10,$DC,$10,$DD ; 9783 08 26 10 DB 10 DC 10 DD  .&......
        db   $10,$DE,$10,$DF,$10,$E0,$10,$E1 ; 978B 10 DE 10 DF 10 E0 10 E1  ........
        db   $10,$E2,$10,$E3,$08,$65,$09,$88 ; 9793 10 E2 10 E3 08 65 09 88  .....e..
Bank08_MapTileAuxiliaryData:
        db   $00,$00,$04,$00,$00,$30,$07,$00 ; 979B 00 00 04 00 00 30 07 00  .....0..
        db   $04,$07,$00,$30,$0E,$00,$04,$12 ; 97A3 04 07 00 30 0E 00 04 12  ...0....
        db   $00,$28,$08,$C0,$F8,$0B,$C0,$7C ; 97AB 00 28 08 C0 F8 0B C0 7C  .(.....|
        db   $19,$00,$04,$19,$00,$30,$20,$00 ; 97B3 19 00 04 19 00 30 20 00  .....0 .
        db   $04,$20,$00,$30,$27,$00,$04,$2B ; 97BB 04 20 00 30 27 00 04 2B  . .0'..+
        db   $00,$04,$21,$C0,$48,$24,$C0,$4C ; 97C3 00 04 21 C0 48 24 C0 4C  ..!.H$.L
        db   $33,$00,$07,$34,$E0,$F3,$38,$00 ; 97CB 33 00 07 34 E0 F3 38 00  3..4..8.
        db   $07,$38,$00,$13,$3E,$00,$07,$42 ; 97D3 07 38 00 13 3E 00 07 42  .8..>..B
        db   $40,$97,$39,$C0,$5F,$39,$C0,$4B ; 97DB 40 97 39 C0 5F 39 C0 4B  @.9._9.K
        db   $49,$00,$07,$4D,$70,$F7,$4E,$00 ; 97E3 49 00 07 4D 70 F7 4E 00  I..Mp.N.
        db   $07,$52,$00,$2B,$55,$00,$07,$59 ; 97EB 07 52 00 2B 55 00 07 59  .R.+U..Y
        db   $70,$F7,$4F,$F0,$2F,$4F,$F0,$1B ; 97F3 70 F7 4F F0 2F 4F F0 1B  p.O./O..
        db   $5A,$00,$05,$5E,$00,$29,$61,$00 ; 97FB 5A 00 05 5E 00 29 61 00  Z..^.)a.
        db   $05,$61,$00,$31,$68,$00,$05,$68 ; 9803 05 61 00 31 68 00 05 68  .a.1h..h
        db   $00,$31,$6F,$40,$61,$72,$40,$65 ; 980B 00 31 6F 40 61 72 40 65  .1o@ar@e
        db   $75,$00,$06,$76,$F0,$1A,$79,$00 ; 9813 75 00 06 76 F0 1A 79 00  u..v..y.
        db   $06,$79,$00,$12,$7F,$40,$0A,$7F ; 981B 06 79 00 12 7F 40 0A 7F  .y...@..
        db   $70,$02,$7A,$F0,$16,$7A,$F0,$1A ; 9823 70 02 7A F0 16 7A F0 1A  p.z..z..
        db   $82,$00,$06,$86,$00,$06,$8A,$00 ; 982B 82 00 06 86 00 06 8A 00  ........
        db   $06,$8A,$00,$32,$91,$00,$06,$95 ; 9833 06 8A 00 32 91 00 06 95  ...2....
        db   $00,$06,$8B,$C0,$4A,$8E,$C0,$4E ; 983B 00 06 8B C0 4A 8E C0 4E  ....J..N
        db   $9D,$00,$05,$A1,$00,$05,$A5,$00 ; 9843 9D 00 05 A1 00 05 A5 00  ........
        db   $05,$A9,$00,$29,$AC,$40,$09,$AF ; 984B 05 A9 00 29 AC 40 09 AF  ...).@..
        db   $40,$09,$A6,$E0,$99,$A6,$E0,$9D ; 9853 40 09 A6 E0 99 A6 E0 9D  @.......
        db   $00,$04,$04,$00,$04,$30,$07,$04 ; 985B 00 04 04 00 04 30 07 04  .....0..
        db   $04,$07,$04,$30,$0E,$04,$04,$12 ; 9863 04 07 04 30 0E 04 04 12  ...0....
        db   $04,$28,$08,$C4,$F8,$0B,$C4,$7C ; 986B 04 28 08 C4 F8 0B C4 7C  .(.....|
        db   $19,$04,$05,$1D,$34,$35,$1F,$04 ; 9873 19 04 05 1D 34 35 1F 04  ....45..
        db   $05,$23,$04,$05,$27,$04,$05,$2B ; 987B 05 23 04 05 27 04 05 2B  .#..'..+
        db   $34,$35,$24,$F4,$19,$20,$F4,$19 ; 9883 34 35 24 F4 19 20 F4 19  45$.. ..
        db   $2D,$14,$39,$30,$14,$39,$33,$04 ; 988B 2D 14 39 30 14 39 33 04  -.90.93.
        db   $05,$37,$04,$05,$2D,$14,$3D,$30 ; 9893 05 37 04 05 2D 14 3D 30  .7..-.=0
        db   $14,$41,$33,$04,$05,$37,$04,$05 ; 989B 14 41 33 04 05 37 04 05  .A3..7..
        db   $3D,$54,$A1,$3F,$54,$A1,$41,$04 ; 98A3 3D 54 A1 3F 54 A1 41 04  =T.?T.A.
        db   $05,$45,$04,$05,$49,$54,$A1,$4B ; 98AB 05 45 04 05 49 54 A1 4B  .E..IT.K
        db   $54,$A1,$42,$F4,$19,$46,$F4,$19 ; 98B3 54 A1 42 F4 19 46 F4 19  T.B..F..
        db   $4D,$04,$05,$4D,$04,$05,$4D,$04 ; 98BB 4D 04 05 4D 04 05 4D 04  M..M..M.
        db   $05,$4D,$04,$05,$4D,$04,$05,$4D ; 98C3 05 4D 04 05 4D 04 05 4D  .M..M..M
        db   $04,$05,$4D,$04,$05,$4D,$04,$05 ; 98CB 04 05 4D 04 05 4D 04 05  ..M..M..
        db   $51,$04,$05,$51,$04,$05,$51,$04 ; 98D3 51 04 05 51 04 05 51 04  Q..Q..Q.
        db   $05,$51,$04,$05,$51,$04,$05,$51 ; 98DB 05 51 04 05 51 04 05 51  .Q..Q..Q
        db   $04,$05,$51,$04,$05,$51,$04,$05 ; 98E3 04 05 51 04 05 51 04 05  ..Q..Q..
        db   $55,$44,$08,$55,$74,$00,$58,$04 ; 98EB 55 44 08 55 74 00 58 04  UD.Ut.X.
        db   $04,$58,$04,$10,$5E,$04,$04,$5F ; 98F3 04 58 04 10 5E 04 04 5F  .X..^.._
        db   $F4,$18,$59,$F4,$14,$59,$F4,$18 ; 98FB F4 18 59 F4 14 59 F4 18  ..Y..Y..
        db   $62,$44,$09,$62,$44,$55,$67,$04 ; 9903 62 44 09 62 44 55 67 04  bD.bDUg.
        db   $05,$67,$04,$11,$6D,$44,$09,$6D ; 990B 05 67 04 11 6D 44 09 6D  .g..mD.m
        db   $44,$55,$68,$C4,$59,$68,$C4,$5D ; 9913 44 55 68 C4 59 68 C4 5D  DUh.Yh.]
        db   $76,$44,$08,$76,$74,$00,$79,$04 ; 991B 76 44 08 76 74 00 79 04  vD.vt.y.
        db   $04,$79,$04,$10,$7F,$44,$08,$7F ; 9923 04 79 04 10 7F 44 08 7F  .y...D..
        db   $74,$00,$7A,$F4,$14,$7A,$F4,$18 ; 992B 74 00 7A F4 14 7A F4 18  t.z..z..
        db   $82,$44,$0B,$82,$44,$57,$87,$04 ; 9933 82 44 0B 82 44 57 87 04  .D..DW..
        db   $07,$87,$04,$13,$8D,$44,$0B,$8D ; 993B 07 87 04 13 8D 44 0B 8D  .....D..
        db   $44,$57,$88,$C4,$5B,$88,$C4,$5F ; 9943 44 57 88 C4 5B 88 C4 5F  DW..[.._
        db   $96,$44,$0A,$96,$44,$56,$9B,$04 ; 994B 96 44 0A 96 44 56 9B 04  .D..DV..
        db   $06,$9B,$04,$12,$A1,$44,$0A,$A1 ; 9953 06 9B 04 12 A1 44 0A A1  .....D..
        db   $44,$56,$9C,$F4,$16,$9C,$F4,$1A ; 995B 44 56 9C F4 16 9C F4 1A  DV......
        db   $A6,$44,$09,$A6,$74,$01,$A9,$04 ; 9963 A6 44 09 A6 74 01 A9 04  .D..t...
        db   $05,$A9,$04,$11,$AF,$44,$09,$AF ; 996B 05 A9 04 11 AF 44 09 AF  .....D..
        db   $74,$01,$AA,$F4,$15,$AA,$F4,$19 ; 9973 74 01 AA F4 15 AA F4 19  t.......
        db   $B2,$44,$08,$B2,$74,$00,$B5,$04 ; 997B B2 44 08 B2 74 00 B5 04  .D..t...
        db   $04,$B5,$04,$10,$BB,$44,$08,$BB ; 9983 04 B5 04 10 BB 44 08 BB  .....D..
        db   $74,$00,$B6,$F4,$14,$B6,$F4,$18 ; 998B 74 00 B6 F4 14 B6 F4 18  t.......
        db   $BE,$44,$09,$BE,$74,$01,$BE,$04 ; 9993 BE 44 09 BE 74 01 BE 04  .D..t...
        db   $0D,$BE,$04,$1D,$C6,$44,$09,$C6 ; 999B 0D BE 04 1D C6 44 09 C6  .....D..
        db   $74,$01,$C1,$F4,$21,$C1,$F4,$25 ; 99A3 74 01 C1 F4 21 C1 F4 25  t...!..%
        db   $C9,$44,$09,$C9,$74,$01,$CC,$04 ; 99AB C9 44 09 C9 74 01 CC 04  .D..t...
        db   $05,$CC,$04,$11,$D2,$44,$09,$D2 ; 99B3 05 CC 04 11 D2 44 09 D2  .....D..
        db   $74,$01,$CD,$F4,$15,$CD,$F4,$19 ; 99BB 74 01 CD F4 15 CD F4 19  t.......
        db   $D5,$44,$08,$D5,$74,$00,$D8,$04 ; 99C3 D5 44 08 D5 74 00 D8 04  .D..t...
        db   $04,$D8,$04,$10,$DE,$44,$08,$DE ; 99CB 04 D8 04 10 DE 44 08 DE  .....D..
        db   $74,$00,$D9,$F4,$14,$D9,$F4,$18 ; 99D3 74 00 D9 F4 14 D9 F4 18  t.......
        db   $E1,$44,$08,$E1,$44,$54,$E6,$04 ; 99DB E1 44 08 E1 44 54 E6 04  .D..DT..
        db   $04,$E6,$04,$10,$EC,$44,$08,$EC ; 99E3 04 E6 04 10 EC 44 08 EC  .....D..
        db   $44,$54,$E7,$C4,$58,$E7,$C4,$5C ; 99EB 44 54 E7 C4 58 E7 C4 5C  DT..X..\
        db   $F5,$44,$08,$F5,$74,$00,$F8,$04 ; 99F3 F5 44 08 F5 74 00 F8 04  .D..t...
        db   $04,$F8,$04,$10,$FE,$44,$08,$FE ; 99FB 04 F8 04 10 FE 44 08 FE  .....D..
        db   $74,$00,$F9,$F4,$14,$F9,$F4,$18 ; 9A03 74 00 F9 F4 14 F9 F4 18  t.......
        db   $01,$45,$08,$01,$75,$00,$04,$05 ; 9A0B 01 45 08 01 75 00 04 05  .E..u...
        db   $04,$04,$05,$10,$0A,$45,$08,$0A ; 9A13 04 04 05 10 0A 45 08 0A  .....E..
        db   $75,$00,$05,$F5,$14,$05,$F5,$18 ; 9A1B 75 00 05 F5 14 05 F5 18  u.......
        db   $0D,$45,$08,$0D,$75,$00,$10,$05 ; 9A23 0D 45 08 0D 75 00 10 05  .E..u...
        db   $04,$10,$05,$10,$16,$45,$08,$16 ; 9A2B 04 10 05 10 16 45 08 16  .....E..
        db   $75,$00,$11,$F5,$14,$11,$F5,$18 ; 9A33 75 00 11 F5 14 11 F5 18  u.......
        db   $19,$45,$08,$19,$75,$00,$1C,$05 ; 9A3B 19 45 08 19 75 00 1C 05  .E..u...
        db   $04,$1C,$05,$10,$22,$45,$74,$22 ; 9A43 04 1C 05 10 22 45 74 22  ...."Et"
        db   $75,$78,$1D,$F5,$18,$1D,$F5,$14 ; 9A4B 75 78 1D F5 18 1D F5 14  ux......
        db   $23,$45,$09,$23,$75,$01,$26,$05 ; 9A53 23 45 09 23 75 01 26 05  #E.#u.&.
        db   $05,$26,$05,$11,$2C,$45,$09,$2C ; 9A5B 05 26 05 11 2C 45 09 2C  .&..,E.,
        db   $75,$01,$27,$F5,$15,$27,$F5,$19 ; 9A63 75 01 27 F5 15 27 F5 19  u.'..'..
        db   $2F,$45,$08,$2F,$75,$00,$32,$05 ; 9A6B 2F 45 08 2F 75 00 32 05  /E./u.2.
        db   $04,$32,$05,$10,$38,$45,$08,$38 ; 9A73 04 32 05 10 38 45 08 38  .2..8E.8
        db   $75,$00,$33,$F5,$14,$33,$F5,$18 ; 9A7B 75 00 33 F5 14 33 F5 18  u.3..3..
        db   $3B,$45,$0A,$3B,$75,$02,$3E,$05 ; 9A83 3B 45 0A 3B 75 02 3E 05  ;E.;u.>.
        db   $06,$3E,$05,$12,$44,$45,$0A,$44 ; 9A8B 06 3E 05 12 44 45 0A 44  .>..DE.D
        db   $75,$02,$3F,$F5,$16,$3F,$F5,$1A ; 9A93 75 02 3F F5 16 3F F5 1A  u.?..?..
        db   $47,$45,$08,$47,$75,$00,$4A,$05 ; 9A9B 47 45 08 47 75 00 4A 05  GE.Gu.J.
        db   $04,$4A,$05,$10,$50,$45,$08,$50 ; 9AA3 04 4A 05 10 50 45 08 50  .J..PE.P
        db   $75,$00,$4B,$F5,$14,$4B,$F5,$18 ; 9AAB 75 00 4B F5 14 4B F5 18  u.K..K..
        db   $53,$45,$09,$53,$45,$55,$58,$05 ; 9AB3 53 45 09 53 45 55 58 05  SE.SEUX.
        db   $05,$58,$05,$11,$5E,$45,$09,$5E ; 9ABB 05 58 05 11 5E 45 09 5E  .X..^E.^
        db   $45,$55,$59,$F5,$15,$59,$F5,$19 ; 9AC3 45 55 59 F5 15 59 F5 19  EUY..Y..
        db   $63,$45,$09,$63,$45,$55,$68,$05 ; 9ACB 63 45 09 63 45 55 68 05  cE.cEUh.
        db   $05,$68,$05,$11,$6E,$45,$09,$6E ; 9AD3 05 68 05 11 6E 45 09 6E  .h..nE.n
        db   $45,$55,$69,$C5,$59,$69,$C5,$5D ; 9ADB 45 55 69 C5 59 69 C5 5D  EUi.Yi.]
        db   $77,$05,$05,$77,$35,$69,$7B,$05 ; 9AE3 77 05 05 77 35 69 7B 05  w..w5i{.
        db   $05,$7F,$05,$29,$82,$45,$09,$85 ; 9AEB 05 7F 05 29 82 45 09 85  ...).E..
        db   $75,$F5,$7C,$F5,$19,$7C,$F5,$2D ; 9AF3 75 F5 7C F5 19 7C F5 2D  u.|..|.-
        db   $86,$45,$09,$89,$45,$09,$8C,$05 ; 9AFB 86 45 09 89 45 09 8C 05  .E..E...
        db   $05,$90,$05,$29,$93,$05,$05,$97 ; 9B03 05 90 05 29 93 05 05 97  ...)....
        db   $35,$35,$8D,$F5,$2D,$8D,$F5,$19 ; 9B0B 35 35 8D F5 2D 8D F5 19  55..-...
        db   $99,$45,$09,$99,$75,$01,$9C,$05 ; 9B13 99 45 09 99 75 01 9C 05  .E..u...
        db   $05,$9C,$05,$11,$A2,$45,$09,$A2 ; 9B1B 05 9C 05 11 A2 45 09 A2  .....E..
        db   $75,$01,$9D,$F5,$15,$9D,$F5,$19 ; 9B23 75 01 9D F5 15 9D F5 19  u.......
        db   $19,$04,$05,$1D,$34,$35,$1F,$04 ; 9B2B 19 04 05 1D 34 35 1F 04  ....45..
        db   $05,$23,$04,$05,$27,$04,$05,$2B ; 9B33 05 23 04 05 27 04 05 2B  .#..'..+
        db   $34,$35,$24,$F4,$19,$20,$F4,$19 ; 9B3B 34 35 24 F4 19 20 F4 19  45$.. ..
        db   $A5,$05,$05,$A9,$05,$05,$A5,$05 ; 9B43 A5 05 05 A9 05 05 A5 05  ........
        db   $05,$A9,$05,$05,$A5,$05,$05,$A9 ; 9B4B 05 A9 05 05 A5 05 05 A9  ........
        db   $05,$05,$A5,$05,$05,$A9,$05,$05 ; 9B53 05 05 A5 05 05 A9 05 05  ........
        db   $AD,$45,$0A,$AD,$75,$02,$AD,$05 ; 9B5B AD 45 0A AD 75 02 AD 05  .E..u...
        db   $0E,$AD,$05,$1E,$B5,$45,$0A,$B5 ; 9B63 0E AD 05 1E B5 45 0A B5  .....E..
        db   $75,$02,$B0,$F5,$22,$B0,$F5,$26 ; 9B6B 75 02 B0 F5 22 B0 F5 26  u..."..&
        db   $B8,$45,$09,$B8,$75,$01,$BB,$05 ; 9B73 B8 45 09 B8 75 01 BB 05  .E..u...
        db   $05,$BB,$05,$11,$C1,$45,$09,$C1 ; 9B7B 05 BB 05 11 C1 45 09 C1  .....E..
        db   $75,$01,$BC,$F5,$15,$BC,$F5,$19 ; 9B83 75 01 BC F5 15 BC F5 19  u.......
        db   $C4,$05,$04,$C8,$05,$04,$C4,$05 ; 9B8B C4 05 04 C8 05 04 C4 05  ........
        db   $CC,$C8,$05,$D0,$C4,$05,$D4,$C8 ; 9B93 CC C8 05 D0 C4 05 D4 C8  ........
        db   $05,$D8,$C5,$F5,$DC,$C9,$F5,$E0 ; 9B9B 05 D8 C5 F5 DC C9 F5 E0  ........
        db   $D2,$05,$05,$D2,$05,$05,$D2,$05 ; 9BA3 D2 05 05 D2 05 05 D2 05  ........
        db   $05,$D2,$05,$05,$D2,$05,$05,$D2 ; 9BAB 05 D2 05 05 D2 05 05 D2  ........
        db   $05,$05,$D2,$05,$05,$D2,$05,$05 ; 9BB3 05 05 D2 05 05 D2 05 05  ........
        db   $D6,$05,$A4,$D6,$05,$A4,$D6,$05 ; 9BBB D6 05 A4 D6 05 A4 D6 05  ........
        db   $A4,$D6,$05,$A4,$D6,$05,$A4,$D6 ; 9BC3 A4 D6 05 A4 D6 05 A4 D6  ........
        db   $05,$A4,$D6,$05,$A4,$D6,$05,$A4 ; 9BCB 05 A4 D6 05 A4 D6 05 A4  ........
        db   $D7,$05,$07,$D7,$05,$13,$DD,$05 ; 9BD3 D7 05 07 D7 05 13 DD 05  ........
        db   $07,$DD,$05,$13,$E3,$05,$07,$E3 ; 9BDB 07 DD 05 13 E3 05 07 E3  ........
        db   $05,$13,$E3,$05,$07,$E3,$05,$13 ; 9BE3 05 13 E3 05 07 E3 05 13  ........
        db   $E9,$45,$0A,$E9,$75,$02,$EC,$05 ; 9BEB E9 45 0A E9 75 02 EC 05  .E..u...
        db   $06,$EC,$05,$12,$F2,$45,$0A,$F2 ; 9BF3 06 EC 05 12 F2 45 0A F2  .....E..
        db   $75,$02,$ED,$F5,$16,$ED,$F5,$1A ; 9BFB 75 02 ED F5 16 ED F5 1A  u.......
        db   $F5,$45,$0A,$F5,$75,$02,$F8,$05 ; 9C03 F5 45 0A F5 75 02 F8 05  .E..u...
        db   $06,$F8,$05,$12,$FE,$45,$0A,$FE ; 9C0B 06 F8 05 12 FE 45 0A FE  .....E..
        db   $75,$02,$F9,$F5,$16,$F9,$F5,$1A ; 9C13 75 02 F9 F5 16 F9 F5 1A  u.......
        db   $01,$06,$A4,$01,$06,$A4,$04,$06 ; 9C1B 01 06 A4 01 06 A4 04 06  ........
        db   $90,$07,$06,$90,$01,$06,$38,$02 ; 9C23 90 07 06 90 01 06 38 02  ......8.
        db   $F6,$44,$08,$F6,$B0,$05,$F6,$B0 ; 9C2B F6 44 08 F6 B0 05 F6 B0  .D......
        db   $3D,$54,$A1,$3F,$54,$A1,$41,$04 ; 9C33 3D 54 A1 3F 54 A1 41 04  =T.?T.A.
        db   $05,$45,$04,$05,$49,$54,$A1,$4B ; 9C3B 05 45 04 05 49 54 A1 4B  .E..IT.K
        db   $54,$A1,$42,$F4,$19,$46,$F4,$19 ; 9C43 54 A1 42 F4 19 46 F4 19  T.B..F..
        db   $2D,$14,$39,$30,$14,$39,$33,$04 ; 9C4B 2D 14 39 30 14 39 33 04  -.90.93.
        db   $05,$37,$04,$05,$2D,$14,$3D,$30 ; 9C53 05 37 04 05 2D 14 3D 30  .7..-.=0
        db   $14,$41,$33,$04,$05,$37,$04,$05 ; 9C5B 14 41 33 04 05 37 04 05  .A3..7..
        db   $0A,$16,$39,$0A,$16,$39,$0A,$16 ; 9C63 0A 16 39 0A 16 39 0A 16  ..9..9..
        db   $39,$0A,$16,$39,$0A,$16,$39,$0A ; 9C6B 39 0A 16 39 0A 16 39 0A  9..9..9.
        db   $16,$39,$0A,$16,$39,$0A,$16,$39 ; 9C73 16 39 0A 16 39 0A 16 39  .9..9..9
        db   $D5,$44,$09,$D5,$74,$01,$D8,$04 ; 9C7B D5 44 09 D5 74 01 D8 04  .D..t...
        db   $05,$D8,$04,$11,$DE,$44,$09,$DE ; 9C83 05 D8 04 11 DE 44 09 DE  .....D..
        db   $74,$01,$D9,$F4,$15,$D9,$F4,$19 ; 9C8B 74 01 D9 F4 15 D9 F4 19  t.......
        db   $0D,$56,$A1,$0D,$56,$A1,$0D,$56 ; 9C93 0D 56 A1 0D 56 A1 0D 56  .V..V..V
        db   $A1,$0D,$56,$A1,$0D,$56,$A1,$0D ; 9C9B A1 0D 56 A1 0D 56 A1 0D  ..V..V..
        db   $56,$A1,$0D,$56,$A1,$0D,$56,$A1 ; 9CA3 56 A1 0D 56 A1 0D 56 A1  V..V..V.
        db   $0F,$46,$08,$0F,$76,$00,$12,$06 ; 9CAB 0F 46 08 0F 76 00 12 06  .F..v...
        db   $04,$12,$06,$10,$18,$46,$08,$18 ; 9CB3 04 12 06 10 18 46 08 18  .....F..
        db   $76,$00,$13,$F6,$14,$13,$F6,$18 ; 9CBB 76 00 13 F6 14 13 F6 18  v.......
        db   $1B,$06,$06,$1B,$06,$32,$22,$06 ; 9CC3 1B 06 06 1B 06 32 22 06  .....2".
        db   $06,$22,$06,$32,$29,$16,$EE,$2C ; 9CCB 06 22 06 32 29 16 EE 2C  .".2)..,
        db   $06,$E6,$2F,$46,$C6,$2F,$46,$EA ; 9CD3 06 E6 2F 46 C6 2F 46 EA  ../F./F.
        db   $34,$46,$09,$34,$76,$01,$37,$06 ; 9CDB 34 46 09 34 76 01 37 06  4F.4v.7.
        db   $05,$37,$06,$11,$3D,$46,$09,$3D ; 9CE3 05 37 06 11 3D 46 09 3D  .7..=F.=
        db   $76,$01,$38,$F6,$15,$38,$F6,$19 ; 9CEB 76 01 38 F6 15 38 F6 19  v.8..8..
        db   $40,$46,$0A,$40,$46,$56,$45,$06 ; 9CF3 40 46 0A 40 46 56 45 06  @F.@FVE.
        db   $06,$45,$06,$12,$4B,$46,$0A,$4B ; 9CFB 06 45 06 12 4B 46 0A 4B  .E..KF.K
        db   $46,$56,$46,$C6,$5A,$46,$C6,$5E ; 9D03 46 56 46 C6 5A 46 C6 5E  FVF.ZF.^
        db   $54,$46,$08,$54,$76,$00,$57,$06 ; 9D0B 54 46 08 54 76 00 57 06  TF.Tv.W.
        db   $04,$57,$06,$10,$5D,$46,$08,$5D ; 9D13 04 57 06 10 5D 46 08 5D  .W..]F.]
        db   $76,$00,$58,$F6,$14,$58,$F6,$18 ; 9D1B 76 00 58 F6 14 58 F6 18  v.X..X..
        db   $60,$46,$08,$60,$76,$00,$63,$06 ; 9D23 60 46 08 60 76 00 63 06  `F.`v.c.
        db   $04,$63,$06,$10,$69,$46,$08,$69 ; 9D2B 04 63 06 10 69 46 08 69  .c..iF.i
        db   $76,$00,$64,$F6,$14,$64,$F6,$18 ; 9D33 76 00 64 F6 14 64 F6 18  v.d..d..
        db   $74,$06,$05,$80,$06,$BD,$78,$06 ; 9D3B 74 06 05 80 06 BD 78 06  t.....x.
        db   $05,$83,$06,$C1,$6C,$06,$05,$7C ; 9D43 05 83 06 C1 6C 06 05 7C  ....l..|
        db   $06,$05,$70,$06,$05,$70,$06,$05 ; 9D4B 06 05 70 06 05 70 06 05  ..p..p..
        db   $84,$06,$06,$88,$06,$06,$8C,$06 ; 9D53 84 06 06 88 06 06 8C 06  ........
        db   $06,$90,$06,$06,$94,$06,$06,$98 ; 9D5B 06 90 06 06 94 06 06 98  ........
        db   $06,$06,$91,$F6,$1A,$8D,$F6,$1A ; 9D63 06 06 91 F6 1A 8D F6 1A  ........
        db   $9C,$06,$05,$A0,$06,$05,$A4,$06 ; 9D6B 9C 06 05 A0 06 05 A4 06  ........
        db   $05,$A4,$06,$11,$AA,$06,$05,$AE ; 9D73 05 A4 06 11 AA 06 05 AE  ........
        db   $36,$35,$A5,$F6,$15,$A5,$F6,$19 ; 9D7B 36 35 A5 F6 15 A5 F6 19  65......
        db   $B0,$06,$06,$B1,$F6,$1A,$B0,$06 ; 9D83 B0 06 06 B1 F6 1A B0 06  ........
        db   $06,$B1,$F6,$1A,$B0,$06,$06,$B1 ; 9D8B 06 B1 F6 1A B0 06 06 B1  ........
        db   $F6,$1A,$B0,$06,$06,$B1,$F6,$1A ; 9D93 F6 1A B0 06 06 B1 F6 1A  ........
        db   $B4,$06,$05,$B8,$06,$29,$BB,$06 ; 9D9B B4 06 05 B8 06 29 BB 06  .....)..
        db   $05,$BB,$06,$11,$C1,$06,$05,$C1 ; 9DA3 05 BB 06 11 C1 06 05 C1  ........
        db   $06,$31,$BC,$A6,$6D,$BC,$A6,$71 ; 9DAB 06 31 BC A6 6D BC A6 71  .1..m..q
        db   $CC,$46,$0A,$CC,$76,$02,$CF,$06 ; 9DB3 CC 46 0A CC 76 02 CF 06  .F..v...
        db   $06,$CF,$06,$12,$D5,$46,$76,$D5 ; 9DBB 06 CF 06 12 D5 46 76 D5  .....Fv.
        db   $76,$7A,$D0,$F6,$1A,$D0,$F6,$16 ; 9DC3 76 7A D0 F6 1A D0 F6 16  vz......
        db   $D6,$46,$09,$D6,$76,$01,$D9,$06 ; 9DCB D6 46 09 D6 76 01 D9 06  .F..v...
        db   $05,$D9,$06,$11,$DF,$46,$09,$DF ; 9DD3 05 D9 06 11 DF 46 09 DF  .....F..
        db   $76,$01,$DA,$F6,$15,$DA,$F6,$19 ; 9DDB 76 01 DA F6 15 DA F6 19  v.......
        db   $E2,$46,$09,$E2,$76,$01,$E5,$06 ; 9DE3 E2 46 09 E2 76 01 E5 06  .F..v...
        db   $05,$E5,$06,$11,$EB,$46,$09,$EB ; 9DEB 05 E5 06 11 EB 46 09 EB  .....F..
        db   $76,$01,$E6,$F6,$15,$E6,$F6,$19 ; 9DF3 76 01 E6 F6 15 E6 F6 19  v.......
        db   $EE,$06,$04,$F2,$06,$28,$F5,$06 ; 9DFB EE 06 04 F2 06 28 F5 06  .....(..
        db   $04,$F5,$06,$10,$FB,$06,$04,$FB ; 9E03 04 F5 06 10 FB 06 04 FB  ........
        db   $06,$30,$02,$47,$C4,$05,$57,$C8 ; 9E0B 06 30 02 47 C4 05 57 C8  .0.G..W.
        db   $07,$07,$06,$07,$07,$12,$0D,$07 ; 9E13 07 07 06 07 07 12 0D 07  ........
        db   $06,$0D,$07,$12,$13,$07,$06,$13 ; 9E1B 06 0D 07 12 13 07 06 13  ........
        db   $07,$12,$0E,$C7,$82,$0E,$C7,$B6 ; 9E23 07 12 0E C7 82 0E C7 B6  ........
        db   $1D,$47,$09,$1D,$77,$01,$20,$07 ; 9E2B 1D 47 09 1D 77 01 20 07  .G..w. .
        db   $05,$20,$07,$11,$26,$47,$09,$26 ; 9E33 05 20 07 11 26 47 09 26  . ..&G.&
        db   $77,$01,$21,$F7,$15,$21,$F7,$19 ; 9E3B 77 01 21 F7 15 21 F7 19  w.!..!..
        db   $29,$57,$A3,$2B,$57,$A3,$29,$57 ; 9E43 29 57 A3 2B 57 A3 29 57  )W.+W.)W
        db   $A3,$2B,$57,$A3,$29,$57,$A3,$2B ; 9E4B A3 2B 57 A3 29 57 A3 2B  .+W.)W.+
        db   $57,$A3,$29,$57,$A3,$2B,$57,$A3 ; 9E53 57 A3 29 57 A3 2B 57 A3  W.)W.+W.
        db   $2D,$07,$05,$31,$07,$05,$2D,$07 ; 9E5B 2D 07 05 31 07 05 2D 07  -..1..-.
        db   $05,$31,$07,$05,$2D,$07,$05,$31 ; 9E63 05 31 07 05 2D 07 05 31  .1..-..1
        db   $07,$05,$2D,$07,$05,$31,$07,$05 ; 9E6B 07 05 2D 07 05 31 07 05  ..-..1..
        db   $35,$07,$05,$39,$07,$05,$35,$07 ; 9E73 35 07 05 39 07 05 35 07  5..9..5.
        db   $05,$39,$07,$05,$35,$07,$05,$39 ; 9E7B 05 39 07 05 35 07 05 39  .9..5..9
        db   $07,$05,$35,$07,$05,$39,$07,$05 ; 9E83 07 05 35 07 05 39 07 05  ..5..9..
        db   $3D,$07,$05,$41,$07,$05,$3D,$07 ; 9E8B 3D 07 05 41 07 05 3D 07  =..A..=.
        db   $05,$41,$07,$05,$3D,$07,$05,$41 ; 9E93 05 41 07 05 3D 07 05 41  .A..=..A
        db   $07,$05,$3D,$07,$05,$41,$07,$05 ; 9E9B 07 05 3D 07 05 41 07 05  ..=..A..
        db   $45,$07,$05,$49,$07,$05,$45,$07 ; 9EA3 45 07 05 49 07 05 45 07  E..I..E.
        db   $05,$49,$07,$05,$45,$07,$05,$49 ; 9EAB 05 49 07 05 45 07 05 49  .I..E..I
        db   $07,$05,$45,$07,$05,$49,$07,$05 ; 9EB3 07 05 45 07 05 49 07 05  ..E..I..
        db   $4D,$47,$0A,$4D,$77,$02,$50,$07 ; 9EBB 4D 47 0A 4D 77 02 50 07  MG.Mw.P.
        db   $06,$50,$07,$12,$56,$47,$0A,$56 ; 9EC3 06 50 07 12 56 47 0A 56  .P..VG.V
        db   $77,$02,$51,$F7,$16,$51,$F7,$1A ; 9ECB 77 02 51 F7 16 51 F7 1A  w.Q..Q..
        db   $59,$47,$09,$59,$47,$55,$5E,$07 ; 9ED3 59 47 09 59 47 55 5E 07  YG.YGU^.
        db   $05,$5E,$07,$11,$64,$47,$09,$64 ; 9EDB 05 5E 07 11 64 47 09 64  .^..dG.d
        db   $47,$55,$5F,$C7,$59,$5F,$C7,$5D ; 9EE3 47 55 5F C7 59 5F C7 5D  GU_.Y_.]
        db   $6D,$07,$06,$6E,$F7,$1A,$6D,$07 ; 9EEB 6D 07 06 6E F7 1A 6D 07  m..n..m.
        db   $06,$6E,$F7,$1A,$6D,$07,$06,$6E ; 9EF3 06 6E F7 1A 6D 07 06 6E  .n..m..n
        db   $F7,$1A,$6D,$07,$06,$6E,$F7,$1A ; 9EFB F7 1A 6D 07 06 6E F7 1A  ..m..n..
        db   $71,$07,$05,$71,$07,$05,$71,$07 ; 9F03 71 07 05 71 07 05 71 07  q..q..q.
        db   $05,$71,$07,$05,$71,$07,$05,$71 ; 9F0B 05 71 07 05 71 07 05 71  .q..q..q
        db   $07,$05,$71,$07,$05,$71,$07,$05 ; 9F13 07 05 71 07 05 71 07 05  ..q..q..
        db   $75,$07,$05,$75,$07,$05,$75,$07 ; 9F1B 75 07 05 75 07 05 75 07  u..u..u.
        db   $05,$75,$07,$05,$75,$07,$05,$75 ; 9F23 05 75 07 05 75 07 05 75  .u..u..u
        db   $07,$05,$75,$07,$05,$75,$07,$05 ; 9F2B 07 05 75 07 05 75 07 05  ..u..u..
        db   $79,$07,$05,$79,$07,$05,$79,$07 ; 9F33 79 07 05 79 07 05 79 07  y..y..y.
        db   $05,$79,$07,$05,$79,$07,$05,$79 ; 9F3B 05 79 07 05 79 07 05 79  .y..y..y
        db   $07,$05,$79,$07,$05,$79,$07,$05 ; 9F43 07 05 79 07 05 79 07 05  ..y..y..
        db   $7D,$07,$05,$7D,$07,$05,$7D,$07 ; 9F4B 7D 07 05 7D 07 05 7D 07  }..}..}.
        db   $05,$7D,$07,$05,$7D,$07,$05,$7D ; 9F53 05 7D 07 05 7D 07 05 7D  .}..}..}
        db   $07,$05,$7D,$07,$05,$7D,$07,$05 ; 9F5B 07 05 7D 07 05 7D 07 05  ..}..}..
        db   $71,$07,$A4,$71,$07,$A4,$71,$07 ; 9F63 71 07 A4 71 07 A4 71 07  q..q..q.
        db   $A4,$71,$07,$A4,$71,$07,$A4,$71 ; 9F6B A4 71 07 A4 71 07 A4 71  .q..q..q
        db   $07,$A4,$71,$07,$A4,$71,$07,$A4 ; 9F73 07 A4 71 07 A4 71 07 A4  ..q..q..
        db   $72,$57,$A1,$74,$57,$A1,$76,$57 ; 9F7B 72 57 A1 74 57 A1 76 57  rW.tW.vW
        db   $A1,$76,$57,$A1,$72,$57,$A1,$74 ; 9F83 A1 76 57 A1 72 57 A1 74  .vW.rW.t
        db   $57,$A1,$76,$57,$A1,$76,$57,$A1 ; 9F8B 57 A1 76 57 A1 76 57 A1  W.vW.vW.
        db   $78,$07,$8D,$78,$07,$8D,$78,$07 ; 9F93 78 07 8D 78 07 8D 78 07  x..x..x.
        db   $8D,$78,$07,$8D,$78,$07,$8D,$78 ; 9F9B 8D 78 07 8D 78 07 8D 78  .x..x..x
        db   $07,$8D,$78,$07,$8D,$78,$07,$8D ; 9FA3 07 8D 78 07 8D 78 07 8D  ..x..x..
        db   $7B,$07,$A1,$7B,$07,$A1,$7B,$07 ; 9FAB 7B 07 A1 7B 07 A1 7B 07  {..{..{.
        db   $A1,$7B,$07,$A1,$7B,$07,$A1,$7B ; 9FB3 A1 7B 07 A1 7B 07 A1 7B  .{..{..{
        db   $07,$A1,$7B,$07,$A1,$7B,$07,$A1 ; 9FBB 07 A1 7B 07 A1 7B 07 A1  ..{..{..
        db   $7D,$07,$91,$7D,$07,$91,$7D,$07 ; 9FC3 7D 07 91 7D 07 91 7D 07  }..}..}.
        db   $91,$7D,$07,$91,$7D,$07,$91,$7D ; 9FCB 91 7D 07 91 7D 07 91 7D  .}..}..}
        db   $07,$91,$7D,$07,$91,$7D,$07,$91 ; 9FD3 07 91 7D 07 91 7D 07 91  ..}..}..
        db   $80,$17,$A0,$80,$17,$A0,$80,$17 ; 9FDB 80 17 A0 80 17 A0 80 17  ........
        db   $A0,$80,$17,$A0,$80,$17,$A0,$80 ; 9FE3 A0 80 17 A0 80 17 A0 80  ........
        db   $17,$A0,$80,$17,$A0,$80,$17,$A0 ; 9FEB 17 A0 80 17 A0 80 17 A0  ........
        db   $82,$57,$A0,$82,$57,$A0,$82,$57 ; 9FF3 82 57 A0 82 57 A0 82 57  .W..W..W
        db   $A0,$82,$57,$A0,$82,$57,$A0,$82 ; 9FFB A0 82 57 A0 82 57 A0 82  ..W..W..
        db   $57,$A0,$82,$57,$A0,$82,$57,$A0 ; A003 57 A0 82 57 A0 82 57 A0  W..W..W.
        db   $84,$57,$A0,$84,$57,$A0,$84,$57 ; A00B 84 57 A0 84 57 A0 84 57  .W..W..W
        db   $A0,$84,$57,$A0,$84,$57,$A0,$84 ; A013 A0 84 57 A0 84 57 A0 84  ..W..W..
        db   $57,$A0,$84,$57,$A0,$84,$57,$A0 ; A01B 57 A0 84 57 A0 84 57 A0  W..W..W.
        db   $86,$57,$A1,$86,$57,$A1,$86,$57 ; A023 86 57 A1 86 57 A1 86 57  .W..W..W
        db   $A1,$86,$57,$A1,$86,$57,$A1,$86 ; A02B A1 86 57 A1 86 57 A1 86  ..W..W..
        db   $57,$A1,$86,$57,$A1,$86,$57,$A1 ; A033 57 A1 86 57 A1 86 57 A1  W..W..W.
        db   $88,$47,$09,$88,$77,$01,$88,$47 ; A03B 88 47 09 88 77 01 88 47  .G..w..G
        db   $09,$88,$77,$01,$88,$47,$09,$88 ; A043 09 88 77 01 88 47 09 88  ..w..G..
        db   $77,$01,$88,$47,$09,$88,$77,$01 ; A04B 77 01 88 47 09 88 77 01  w..G..w.
        db   $8B,$57,$A0,$8B,$57,$A0,$8D,$07 ; A053 8B 57 A0 8B 57 A0 8D 07  .W..W...
        db   $04,$8D,$07,$04,$91,$57,$A0,$91 ; A05B 04 8D 07 04 91 57 A0 91  .....W..
        db   $57,$A0,$8D,$07,$04,$8D,$07,$04 ; A063 57 A0 8D 07 04 8D 07 04  W.......
        db   $93,$57,$A3,$93,$57,$A3,$95,$07 ; A06B 93 57 A3 93 57 A3 95 07  .W..W...
        db   $07,$95,$07,$07,$99,$57,$A3,$99 ; A073 07 95 07 07 99 57 A3 99  .....W..
        db   $57,$A3,$95,$07,$07,$95,$07,$07 ; A07B 57 A3 95 07 07 95 07 07  W.......
        db   $9B,$07,$A5,$9B,$07,$A5,$9B,$07 ; A083 9B 07 A5 9B 07 A5 9B 07  ........
        db   $A5,$9B,$07,$A5,$9B,$07,$A5,$9B ; A08B A5 9B 07 A5 9B 07 A5 9B  ........
        db   $07,$A5,$9B,$07,$A5,$9B,$07,$A5 ; A093 07 A5 9B 07 A5 9B 07 A5  ........
        db   $9C,$07,$07,$9C,$07,$07,$9C,$07 ; A09B 9C 07 07 9C 07 07 9C 07  ........
        db   $07,$9C,$07,$07,$9C,$07,$07,$9C ; A0A3 07 9C 07 07 9C 07 07 9C  ........
        db   $07,$07,$9C,$07,$07,$9C,$07,$07 ; A0AB 07 07 9C 07 07 9C 07 07  ........
        db   $A0,$07,$07,$A0,$07,$07,$A0,$07 ; A0B3 A0 07 07 A0 07 07 A0 07  ........
        db   $07,$A0,$07,$07,$A0,$07,$07,$A0 ; A0BB 07 A0 07 07 A0 07 07 A0  ........
        db   $07,$07,$A0,$07,$07,$A0,$07,$07 ; A0C3 07 07 A0 07 07 A0 07 07  ........
        db   $4D,$04,$05,$4D,$04,$05,$4D,$04 ; A0CB 4D 04 05 4D 04 05 4D 04  M..M..M.
        db   $05,$4D,$04,$05,$4D,$04,$05,$4D ; A0D3 05 4D 04 05 4D 04 05 4D  .M..M..M
        db   $04,$05,$4D,$04,$05,$4D,$04,$05 ; A0DB 04 05 4D 04 05 4D 04 05  ..M..M..
        db   $51,$04,$05,$51,$04,$05,$51,$04 ; A0E3 51 04 05 51 04 05 51 04  Q..Q..Q.
        db   $05,$51,$04,$05,$51,$04,$05,$51 ; A0EB 05 51 04 05 51 04 05 51  .Q..Q..Q
        db   $04,$05,$51,$04,$05,$51,$04,$05 ; A0F3 04 05 51 04 05 51 04 05  ..Q..Q..
        db   $19,$00,$04,$19,$00,$30,$19,$00 ; A0FB 19 00 04 19 00 30 19 00  .....0..
        db   $04,$19,$00,$30,$19,$00,$04,$19 ; A103 04 19 00 30 19 00 04 19  ...0....
        db   $00,$30,$19,$00,$04,$19,$00,$30 ; A10B 00 30 19 00 04 19 00 30  .0.....0
        db   $33,$00,$07,$34,$E0,$F3,$33,$00 ; A113 33 00 07 34 E0 F3 33 00  3..4..3.
        db   $07,$34,$E0,$F3,$33,$00,$07,$34 ; A11B 07 34 E0 F3 33 00 07 34  .4..3..4
        db   $E0,$F3,$33,$00,$07,$34,$E0,$F3 ; A123 E0 F3 33 00 07 34 E0 F3  ..3..4..
        db   $49,$00,$07,$4D,$70,$F7,$49,$00 ; A12B 49 00 07 4D 70 F7 49 00  I..Mp.I.
        db   $07,$4D,$70,$F7,$49,$00,$07,$4D ; A133 07 4D 70 F7 49 00 07 4D  .Mp.I..M
        db   $70,$F7,$49,$00,$07,$4D,$70,$F7 ; A13B 70 F7 49 00 07 4D 70 F7  p.I..Mp.
        db   $5A,$00,$05,$5E,$00,$29,$5A,$00 ; A143 5A 00 05 5E 00 29 5A 00  Z..^.)Z.
        db   $05,$5E,$00,$29,$5A,$00,$05,$5E ; A14B 05 5E 00 29 5A 00 05 5E  .^.)Z..^
        db   $00,$29,$5A,$00,$05,$5E,$00,$29 ; A153 00 29 5A 00 05 5E 00 29  .)Z..^.)
        db   $75,$00,$06,$76,$F0,$1A,$75,$00 ; A15B 75 00 06 76 F0 1A 75 00  u..v..u.
        db   $06,$76,$F0,$1A,$75,$00,$06,$76 ; A163 06 76 F0 1A 75 00 06 76  .v..u..v
        db   $F0,$1A,$75,$00,$06,$76,$F0,$1A ; A16B F0 1A 75 00 06 76 F0 1A  ..u..v..
        db   $82,$00,$06,$86,$00,$06,$82,$00 ; A173 82 00 06 86 00 06 82 00  ........
        db   $06,$86,$00,$06,$82,$00,$06,$86 ; A17B 06 86 00 06 82 00 06 86  ........
        db   $00,$06,$82,$00,$06,$86,$00,$06 ; A183 00 06 82 00 06 86 00 06  ........
        db   $9D,$00,$05,$A1,$00,$05,$9D,$00 ; A18B 9D 00 05 A1 00 05 9D 00  ........
        db   $05,$A1,$00,$05,$9D,$00,$05,$A1 ; A193 05 A1 00 05 9D 00 05 A1  ........
        db   $00,$05,$9D,$00,$05,$A1,$00,$05 ; A19B 00 05 9D 00 05 A1 00 05  ........
        db   $A4,$57,$A2,$A4,$57,$A2,$A4,$57 ; A1A3 A4 57 A2 A4 57 A2 A4 57  .W..W..W
        db   $A2,$A4,$57,$A2,$A4,$57,$A2,$A4 ; A1AB A2 A4 57 A2 A4 57 A2 A4  ..W..W..
        db   $57,$A2,$A4,$57,$A2,$A4,$57,$A2 ; A1B3 57 A2 A4 57 A2 A4 57 A2  W..W..W.
Bank08_TileIncrementPatterns:
        db   $01,$01,$01,$00,$00,$00,$00,$01 ; A1BB 01 01 01 00 00 00 00 01  ........
        db   $00,$01,$00,$FF,$01,$FF,$01,$01 ; A1C3 00 01 00 FF 01 FF 01 01  ........
        db   $01,$00,$00,$01,$01,$00,$02,$FF ; A1CB 01 00 00 01 01 00 02 FF  ........
        db   $01,$01,$01,$00,$01,$01,$03,$01 ; A1D3 01 01 01 00 01 01 03 01  ........
        db   $01,$01,$03,$01,$FF,$05,$FF,$FF ; A1DB 01 01 03 01 FF 05 FF FF  ........
        db   $03,$FF                         ; A1E3 03 FF                    ..
Bank08_SpecialTilePatternData:
        db   $03,$03,$01,$FD,$07,$FF,$FD,$05 ; A1E5 03 03 01 FD 07 FF FD 05  ........
        db   $FF,$FD,$04,$01,$03,$02,$FF,$04 ; A1ED FF FD 04 01 03 02 FF 04  ........
        db   $01,$01,$01,$FE,$FF,$01,$01,$00 ; A1F5 01 01 01 FE FF 01 01 00  ........
        db   $01,$0D,$00,$01,$0B,$00,$FF,$02 ; A1FD 01 0D 00 01 0B 00 FF 02  ........
        db   $00,$FF,$0F,$01,$FC,$11,$01,$0F ; A205 00 FF 0F 01 FC 11 01 0F  ........
        db   $01,$01,$00,$03,$01,$FF,$0B,$01 ; A20D 01 01 00 03 01 FF 0B 01  ........
        db   $FF,$0D,$01,$F2,$0F,$01,$EF,$12 ; A215 FF 0D 01 F2 0F 01 EF 12  ........
        db   $01,$01,$02,$FF,$0C,$F8,$09,$0E ; A21D 01 01 02 FF 0C F8 09 0E  ........
        db   $F4,$0D,$00,$F8,$01,$00,$F9,$FF ; A225 F4 0D 00 F8 01 00 F9 FF  ........
        db   $FC,$10,$01,$FF,$0C,$01,$F5,$0C ; A22D FC 10 01 FF 0C 01 F5 0C  ........
        db   $01,$F5,$0E,$01,$01,$FF,$02,$01 ; A235 01 F5 0E 01 01 FF 02 01  ........
        db   $01,$FF,$FC,$05,$01,$FF,$06,$07 ; A23D 01 FF FC 05 01 FF 06 07  ........
        db   $03,$FF,$0B,$00,$01,$00,$00,$00 ; A245 03 FF 0B 00 01 00 00 00  ........
        db   $00,$F0,$11,$01,$FB,$10,$F6,$FF ; A24D 00 F0 11 01 FB 10 F6 FF  ........
        db   $01,$01,$FF,$0E,$01,$FC,$10,$01 ; A255 01 01 FF 0E 01 FC 10 01  ........
        db   $01,$01,$F5,$F6,$01,$01,$F3,$0E ; A25D 01 01 F5 F6 01 01 F3 0E  ........
        db   $01,$F0,$11,$F1,$01,$01,$06,$01 ; A265 01 F0 11 F1 01 01 06 01  ........
        db   $01,$03,$01,$09,$01,$01,$07,$01 ; A26D 01 03 01 09 01 01 07 01  ........
        db   $FF,$08,$FA,$FF,$05,$FD,$FE,$03 ; A275 FF 08 FA FF 05 FD FE 03  ........
        db   $01,$F3,$10,$01,$01,$01,$F5,$FF ; A27D 01 F3 10 01 01 01 F5 FF  ........
        db   $03,$01,$00,$FF,$FF,$FF,$0E,$01 ; A285 03 01 00 FF FF FF 0E 01  ........
Bank08_ExplicitTilePointers:
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A28D 00 00 00 00 00 00 00 00  ........
        db   $30,$80,$10,$80,$20,$81,$30,$81 ; A295 30 80 10 80 20 81 30 81  0... .0.
        db   $00,$81,$A0,$80,$20,$81,$50,$80 ; A29D 00 81 A0 80 20 81 50 80  .... .P.
        db   $30,$80,$40,$80,$20,$81,$50,$80 ; A2A5 30 80 40 80 20 81 50 80  0.@. .P.
        db   $00,$81,$10,$81,$80,$80,$90,$80 ; A2AD 00 81 10 81 80 80 90 80  ........
        db   $30,$80,$10,$80,$80,$80,$90,$80 ; A2B5 30 80 10 80 80 80 90 80  0.......
        db   $00,$81,$A0,$80,$80,$80,$B0,$80 ; A2BD 00 81 A0 80 80 80 B0 80  ........
        db   $30,$80,$40,$80,$80,$80,$B0,$80 ; A2C5 30 80 40 80 80 80 B0 80  0.@.....
        db   $60,$80,$10,$81,$20,$80,$30,$81 ; A2CD 60 80 10 81 20 80 30 81  `... .0.
        db   $00,$80,$10,$80,$20,$80,$30,$81 ; A2D5 00 80 10 80 20 80 30 81  .... .0.
        db   $60,$80,$A0,$80,$20,$80,$50,$80 ; A2DD 60 80 A0 80 20 80 50 80  `... .P.
        db   $00,$80,$40,$80,$20,$80,$50,$80 ; A2E5 00 80 40 80 20 80 50 80  ..@. .P.
        db   $60,$80,$10,$81,$70,$80,$90,$80 ; A2ED 60 80 10 81 70 80 90 80  `...p...
        db   $00,$80,$10,$80,$70,$80,$90,$80 ; A2F5 00 80 10 80 70 80 90 80  ....p...
        db   $60,$80,$A0,$80,$70,$80,$B0,$80 ; A2FD 60 80 A0 80 70 80 B0 80  `...p...
        db   $00,$80,$40,$80,$70,$80,$B0,$80 ; A305 00 80 40 80 70 80 B0 80  ..@.p...
        db   $14,$9F,$24,$9F,$34,$9F,$44,$9F ; A30D 14 9F 24 9F 34 9F 44 9F  ..$.4.D.
        db   $74,$9F,$84,$9F,$94,$9F,$A4,$9F ; A315 74 9F 84 9F 94 9F A4 9F  t.......
        db   $D4,$9F,$E4,$9F,$F4,$9F,$04,$A0 ; A31D D4 9F E4 9F F4 9F 04 A0  ........
        db   $34,$A0,$44,$A0,$54,$A0,$64,$A0 ; A325 34 A0 44 A0 54 A0 64 A0  4.D.T.d.
        db   $14,$9F,$24,$9F,$54,$9F,$64,$9F ; A32D 14 9F 24 9F 54 9F 64 9F  ..$.T.d.
        db   $74,$9F,$84,$9F,$B4,$9F,$C4,$9F ; A335 74 9F 84 9F B4 9F C4 9F  t.......
        db   $D4,$9F,$E4,$9F,$14,$A0,$24,$A0 ; A33D D4 9F E4 9F 14 A0 24 A0  ......$.
        db   $74,$A0,$84,$A0,$54,$A0,$64,$A0 ; A345 74 A0 84 A0 54 A0 64 A0  t...T.d.
        db   $94,$A0,$94,$A0,$94,$A0,$94,$A0 ; A34D 94 A0 94 A0 94 A0 94 A0  ........
        db   $A4,$A0,$B4,$A0,$C4,$A0,$D4,$A0 ; A355 A4 A0 B4 A0 C4 A0 D4 A0  ........
        db   $E4,$A0,$E4,$A0,$D4,$A0,$D4,$A0 ; A35D E4 A0 E4 A0 D4 A0 D4 A0  ........
        db   $F4,$A0,$04,$A1,$D4,$A0,$14,$A1 ; A365 F4 A0 04 A1 D4 A0 14 A1  ........
        db   $24,$A1,$34,$A1,$24,$A1,$34,$A1 ; A36D 24 A1 34 A1 24 A1 34 A1  $.4.$.4.
        db   $44,$A1,$24,$A1,$44,$A1,$24,$A1 ; A375 44 A1 24 A1 44 A1 24 A1  D.$.D.$.
        db   $54,$A1,$64,$A1,$24,$A1,$34,$A1 ; A37D 54 A1 64 A1 24 A1 34 A1  T.d.$.4.
        db   $74,$A1,$84,$A1,$44,$A1,$24,$A1 ; A385 74 A1 84 A1 44 A1 24 A1  t...D.$.
        db   $94,$A1,$A4,$A1,$54,$A1,$64,$A1 ; A38D 94 A1 A4 A1 54 A1 64 A1  ....T.d.
        db   $94,$A1,$A4,$A1,$74,$A1,$84,$A1 ; A395 94 A1 A4 A1 74 A1 84 A1  ....t...
        db   $B4,$A1,$C4,$A1,$24,$A1,$D4,$A1 ; A39D B4 A1 C4 A1 24 A1 D4 A1  ....$...
        db   $E4,$A1,$F4,$A1,$04,$A2,$24,$A1 ; A3A5 E4 A1 F4 A1 04 A2 24 A1  ......$.
        db   $14,$A2,$24,$A2,$34,$A2,$44,$A2 ; A3AD 14 A2 24 A2 34 A2 44 A2  ..$.4.D.
        db   $54,$A2,$64,$A2,$74,$A2,$84,$A2 ; A3B5 54 A2 64 A2 74 A2 84 A2  T.d.t...
        db   $94,$A2,$A4,$A2,$B4,$A2,$C4,$A2 ; A3BD 94 A2 A4 A2 B4 A2 C4 A2  ........
        db   $34,$A2,$D4,$A2,$34,$A2,$44,$A2 ; A3C5 34 A2 D4 A2 34 A2 44 A2  4...4.D.
        db   $E4,$A2,$C4,$A2,$B4,$A2,$C4,$A2 ; A3CD E4 A2 C4 A2 B4 A2 C4 A2  ........
        db   $34,$A2,$F4,$A2,$04,$A3,$14,$A3 ; A3D5 34 A2 F4 A2 04 A3 14 A3  4.......
        db   $24,$A3,$34,$A3,$14,$A3,$14,$A3 ; A3DD 24 A3 34 A3 14 A3 14 A3  $.4.....
        db   $44,$A3,$C4,$A2,$14,$A3,$54,$A3 ; A3E5 44 A3 C4 A2 14 A3 54 A3  D.....T.
        db   $24,$A3,$64,$A3,$74,$A3,$44,$A2 ; A3ED 24 A3 64 A3 74 A3 44 A2  $.d.t.D.
        db   $84,$A3,$34,$A3,$B4,$A2,$94,$A3 ; A3F5 84 A3 34 A3 B4 A2 94 A3  ..4.....
        db   $04,$A4,$14,$A4,$04,$A4,$14,$A4 ; A3FD 04 A4 14 A4 04 A4 14 A4  ........
        db   $24,$A4,$34,$A4,$24,$A4,$34,$A4 ; A405 24 A4 34 A4 24 A4 34 A4  $.4.$.4.
        db   $A4,$A3,$14,$A4,$B4,$A3,$C4,$A3 ; A40D A4 A3 14 A4 B4 A3 C4 A3  ........
        db   $24,$A4,$D4,$A3,$E4,$A3,$F4,$A3 ; A415 24 A4 D4 A3 E4 A3 F4 A3  $.......
        db   $A4,$A3,$14,$A4,$44,$A4,$54,$A4 ; A41D A4 A3 14 A4 44 A4 54 A4  ....D.T.
        db   $24,$A4,$D4,$A3,$64,$A4,$74,$A4 ; A425 24 A4 D4 A3 64 A4 74 A4  $...d.t.
        db   $04,$A4,$14,$A4,$A4,$A4,$54,$A4 ; A42D 04 A4 14 A4 A4 A4 54 A4  ......T.
        db   $24,$A4,$34,$A4,$64,$A4,$B4,$A4 ; A435 24 A4 34 A4 64 A4 B4 A4  $.4.d...
        db   $04,$A4,$84,$A4,$04,$A4,$14,$A4 ; A43D 04 A4 84 A4 04 A4 14 A4  ........
        db   $94,$A4,$34,$A4,$24,$A4,$34,$A4 ; A445 94 A4 34 A4 24 A4 34 A4  ..4.$.4.
        db   $04,$A4,$14,$A4,$C4,$A4,$D4,$A4 ; A44D 04 A4 14 A4 C4 A4 D4 A4  ........
        db   $24,$A4,$34,$A4,$E4,$A4,$F4,$A4 ; A455 24 A4 34 A4 E4 A4 F4 A4  $.4.....
        db   $04,$A5,$04,$A5,$04,$A5,$04,$A5 ; A45D 04 A5 04 A5 04 A5 04 A5  ........
        db   $04,$A5,$04,$A5,$14,$A5,$14,$A5 ; A465 04 A5 04 A5 14 A5 14 A5  ........
        db   $34,$A5,$34,$A5,$14,$A5,$14,$A5 ; A46D 34 A5 34 A5 14 A5 14 A5  4.4.....
        db   $04,$A5,$44,$A5,$14,$A5,$54,$A5 ; A475 04 A5 44 A5 14 A5 54 A5  ..D...T.
        db   $64,$A5,$04,$A5,$74,$A5,$14,$A5 ; A47D 64 A5 04 A5 74 A5 14 A5  d...t...
        db   $84,$A5,$84,$A5,$04,$A5,$04,$A5 ; A485 84 A5 84 A5 04 A5 04 A5  ........
        db   $84,$A5,$84,$A5,$04,$A5,$04,$A5 ; A48D 84 A5 84 A5 04 A5 04 A5  ........
        db   $84,$A5,$94,$A5,$A4,$A5,$B4,$A5 ; A495 84 A5 94 A5 A4 A5 B4 A5  ........
        db   $C4,$A5,$D4,$A5,$E4,$A5,$F4,$A5 ; A49D C4 A5 D4 A5 E4 A5 F4 A5  ........
        db   $04,$A6,$14,$A6,$24,$A6,$34,$A6 ; A4A5 04 A6 14 A6 24 A6 34 A6  ....$.4.
        db   $44,$A6,$54,$A6,$64,$A6,$74,$A6 ; A4AD 44 A6 54 A6 64 A6 74 A6  D.T.d.t.
        db   $04,$A6,$14,$A6,$84,$A6,$94,$A6 ; A4B5 04 A6 14 A6 84 A6 94 A6  ........
        db   $44,$A6,$54,$A6,$84,$A6,$94,$A6 ; A4BD 44 A6 54 A6 84 A6 94 A6  D.T.....
        db   $84,$A6,$94,$A6,$A4,$A6,$B4,$A6 ; A4C5 84 A6 94 A6 A4 A6 B4 A6  ........
        db   $C4,$A6,$94,$A5,$A4,$A5,$B4,$A5 ; A4CD C4 A6 94 A5 A4 A5 B4 A5  ........
        db   $C4,$A5,$D4,$A6,$E4,$A5,$F4,$A5 ; A4D5 C4 A5 D4 A6 E4 A5 F4 A5  ........
        db   $54,$A7,$64,$A7,$74,$A7,$84,$A7 ; A4DD 54 A7 64 A7 74 A7 84 A7  T.d.t...
        db   $F4,$A6,$04,$A7,$14,$A7,$24,$A7 ; A4E5 F4 A6 04 A7 14 A7 24 A7  ......$.
        db   $34,$A7,$04,$A7,$74,$A7,$44,$A7 ; A4ED 34 A7 04 A7 74 A7 44 A7  4...t.D.
        db   $34,$A7,$B4,$A7,$C4,$A7,$D4,$A7 ; A4F5 34 A7 B4 A7 C4 A7 D4 A7  4.......
        db   $E4,$A6,$64,$A7,$14,$A7,$D4,$A7 ; A4FD E4 A6 64 A7 14 A7 D4 A7  ..d.....
        db   $E4,$A6,$94,$A7,$A4,$A7,$44,$A7 ; A505 E4 A6 94 A7 A4 A7 44 A7  ......D.
        db   $E4,$A7,$64,$A7,$C4,$A7,$D4,$A7 ; A50D E4 A7 64 A7 C4 A7 D4 A7  ..d.....
        db   $E4,$A6,$F4,$A7,$14,$A7,$24,$A7 ; A515 E4 A6 F4 A7 14 A7 24 A7  ......$.
        db   $34,$A7,$04,$A7,$C4,$A7,$24,$A7 ; A51D 34 A7 04 A7 C4 A7 24 A7  4.....$.
        db   $54,$A7,$94,$A7,$74,$A7,$44,$A7 ; A525 54 A7 94 A7 74 A7 44 A7  T...t.D.
        db   $04,$A8,$14,$A8,$04,$A8,$14,$A8 ; A52D 04 A8 14 A8 04 A8 14 A8  ........
        db   $24,$A8,$34,$A8,$44,$A8,$54,$A8 ; A535 24 A8 34 A8 44 A8 54 A8  $.4.D.T.
        db   $34,$A8,$64,$A8,$54,$A8,$74,$A8 ; A53D 34 A8 64 A8 54 A8 74 A8  4.d.T.t.
        db   $84,$A8,$94,$A8,$84,$A8,$94,$A8 ; A545 84 A8 94 A8 84 A8 94 A8  ........
        db   $84,$A8,$A4,$A8,$84,$A8,$B4,$A8 ; A54D 84 A8 A4 A8 84 A8 B4 A8  ........
        db   $C4,$A8,$94,$A8,$D4,$A8,$94,$A8 ; A555 C4 A8 94 A8 D4 A8 94 A8  ........
        db   $E4,$A8,$F4,$A8,$E4,$A8,$F4,$A8 ; A55D E4 A8 F4 A8 E4 A8 F4 A8  ........
        db   $04,$A9,$14,$A9,$E4,$A8,$F4,$A8 ; A565 04 A9 14 A9 E4 A8 F4 A8  ........
        db   $24,$A9,$34,$A9,$44,$A9,$54,$A9 ; A56D 24 A9 34 A9 44 A9 54 A9  $.4.D.T.
        db   $64,$A9,$64,$A9,$54,$A9,$54,$A9 ; A575 64 A9 64 A9 54 A9 54 A9  d.d.T.T.
        db   $74,$A9,$84,$A9,$54,$A9,$94,$A9 ; A57D 74 A9 84 A9 54 A9 94 A9  t...T...
        db   $24,$A9,$A4,$A9,$24,$A9,$A4,$A9 ; A585 24 A9 A4 A9 24 A9 A4 A9  $...$...
        db   $B4,$A9,$C4,$A9,$B4,$A9,$C4,$A9 ; A58D B4 A9 C4 A9 B4 A9 C4 A9  ........
        db   $D4,$A9,$E4,$A9,$24,$A9,$A4,$A9 ; A595 D4 A9 E4 A9 24 A9 A4 A9  ....$...
        db   $F4,$A9,$04,$AA,$B4,$A9,$C4,$A9 ; A59D F4 A9 04 AA B4 A9 C4 A9  ........
        db   $14,$AA,$14,$AA,$14,$AA,$14,$AA ; A5A5 14 AA 14 AA 14 AA 14 AA  ........
        db   $24,$AA,$24,$AA,$14,$AA,$14,$AA ; A5AD 24 AA 24 AA 14 AA 14 AA  $.$.....
        db   $54,$AA,$E4,$A9,$24,$A9,$A4,$A9 ; A5B5 54 AA E4 A9 24 A9 A4 A9  T...$...
        db   $F4,$A9,$64,$AA,$B4,$A9,$C4,$A9 ; A5BD F4 A9 64 AA B4 A9 C4 A9  ..d.....
        db   $E4,$A8,$F4,$A8,$34,$AA,$44,$AA ; A5C5 E4 A8 F4 A8 34 AA 44 AA  ....4.D.
        db   $34,$A8,$34,$A8,$54,$A8,$54,$A8 ; A5CD 34 A8 34 A8 54 A8 54 A8  4.4.T.T.
        db   $94,$B1,$A4,$B1,$B4,$B1,$C4,$B1 ; A5D5 94 B1 A4 B1 B4 B1 C4 B1  ........
        db   $D4,$B1,$E4,$B1,$F4,$B1,$C4,$B1 ; A5DD D4 B1 E4 B1 F4 B1 C4 B1  ........
        db   $04,$B2,$14,$B2,$B4,$B1,$24,$B2 ; A5E5 04 B2 14 B2 B4 B1 24 B2  ......$.
        db   $94,$B1,$A4,$B1,$34,$B2,$44,$B2 ; A5ED 94 B1 A4 B1 34 B2 44 B2  ....4.D.
        db   $54,$B2,$64,$B2,$B4,$B1,$C4,$B1 ; A5F5 54 B2 64 B2 B4 B1 C4 B1  T.d.....
        db   $74,$B2,$84,$B2,$B4,$B1,$C4,$B1 ; A5FD 74 B2 84 B2 B4 B1 C4 B1  t.......
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A605 00 00 00 00 00 00 00 00  ........
        db   $24,$A5,$24,$A5,$24,$A5,$24,$A5 ; A60D 24 A5 24 A5 24 A5 24 A5  $.$.$.$.
        db   $E4,$AB,$E4,$AB,$E4,$AB,$E4,$AB ; A615 E4 AB E4 AB E4 AB E4 AB  ........
        db   $F4,$AB,$F4,$AB,$F4,$AB,$F4,$AB ; A61D F4 AB F4 AB F4 AB F4 AB  ........
        db   $F4,$AB,$F4,$AB,$04,$AC,$04,$AC ; A625 F4 AB F4 AB 04 AC 04 AC  ........
        db   $14,$AC,$24,$AC,$14,$AC,$24,$AC ; A62D 14 AC 24 AC 14 AC 24 AC  ..$...$.
        db   $74,$AA,$74,$AA,$74,$AA,$74,$AA ; A635 74 AA 74 AA 74 AA 74 AA  t.t.t.t.
        db   $84,$AA,$84,$AA,$84,$AA,$84,$AA ; A63D 84 AA 84 AA 84 AA 84 AA  ........
        db   $74,$AA,$94,$AA,$A4,$AA,$B4,$AA ; A645 74 AA 94 AA A4 AA B4 AA  t.......
        db   $C4,$AA,$84,$AA,$B4,$AA,$D4,$AA ; A64D C4 AA 84 AA B4 AA D4 AA  ........
        db   $B4,$AA,$B4,$AA,$B4,$AA,$B4,$AA ; A655 B4 AA B4 AA B4 AA B4 AA  ........
        db   $E4,$AA,$F4,$AA,$04,$AB,$74,$AA ; A65D E4 AA F4 AA 04 AB 74 AA  ......t.
        db   $14,$AB,$24,$AB,$84,$AA,$34,$AB ; A665 14 AB 24 AB 84 AA 34 AB  ..$...4.
        db   $B4,$AA,$44,$AB,$54,$AB,$74,$AA ; A66D B4 AA 44 AB 54 AB 74 AA  ..D.T.t.
        db   $64,$AB,$B4,$AA,$84,$AA,$74,$AB ; A675 64 AB B4 AA 84 AA 74 AB  d.....t.
        db   $24,$AC,$34,$AC,$24,$AC,$34,$AC ; A67D 24 AC 34 AC 24 AC 34 AC  $.4.$.4.
        db   $14,$AC,$24,$AC,$44,$AC,$54,$AC ; A685 14 AC 24 AC 44 AC 54 AC  ..$.D.T.
        db   $24,$AC,$34,$AC,$54,$AC,$64,$AC ; A68D 24 AC 34 AC 54 AC 64 AC  $.4.T.d.
        db   $14,$AC,$24,$AC,$74,$AC,$54,$AC ; A695 14 AC 24 AC 74 AC 54 AC  ..$.t.T.
        db   $24,$AC,$34,$AC,$54,$AC,$84,$AC ; A69D 24 AC 34 AC 54 AC 84 AC  $.4.T...
        db   $94,$AC,$A4,$AC,$B4,$AC,$C4,$AC ; A6A5 94 AC A4 AC B4 AC C4 AC  ........
        db   $84,$AB,$94,$AB,$24,$A5,$A4,$AB ; A6AD 84 AB 94 AB 24 A5 A4 AB  ....$...
        db   $B4,$AB,$C4,$AB,$D4,$AB,$24,$A5 ; A6B5 B4 AB C4 AB D4 AB 24 A5  ......$.
        db   $94,$AC,$A4,$AC,$D4,$AC,$E4,$AC ; A6BD 94 AC A4 AC D4 AC E4 AC  ........
        db   $F4,$AC,$F4,$AB,$04,$AD,$04,$AC ; A6C5 F4 AC F4 AB 04 AD 04 AC  ........
        db   $14,$AD,$E4,$AB,$14,$AD,$E4,$AB ; A6CD 14 AD E4 AB 14 AD E4 AB  ........
        db   $14,$AD,$E4,$AB,$24,$AD,$E4,$AB ; A6D5 14 AD E4 AB 24 AD E4 AB  ....$...
        db   $E4,$AB,$E4,$AB,$E4,$AB,$34,$AD ; A6DD E4 AB E4 AB E4 AB 34 AD  ......4.
        db   $44,$AD,$54,$AD,$64,$AD,$74,$AD ; A6E5 44 AD 54 AD 64 AD 74 AD  D.T.d.t.
        db   $54,$AD,$84,$AD,$74,$AD,$94,$AD ; A6ED 54 AD 84 AD 74 AD 94 AD  T...t...
        db   $F4,$AB,$A4,$AD,$A4,$AD,$E4,$AB ; A6F5 F4 AB A4 AD A4 AD E4 AB  ........
        db   $B4,$AD,$F4,$AB,$E4,$AB,$B4,$AD ; A6FD B4 AD F4 AB E4 AB B4 AD  ........
        db   $C4,$AD,$E4,$AB,$14,$AD,$E4,$AB ; A705 C4 AD E4 AB 14 AD E4 AB  ........
        db   $E4,$AB,$D4,$AD,$E4,$AB,$E4,$AB ; A70D E4 AB D4 AD E4 AB E4 AB  ........
        db   $94,$AC,$A4,$AC,$E4,$AD,$F4,$AD ; A715 94 AC A4 AC E4 AD F4 AD  ........
        db   $54,$AD,$54,$AD,$74,$AD,$74,$AD ; A71D 54 AD 54 AD 74 AD 74 AD  T.T.t.t.
        db   $94,$B2,$A4,$B2,$B4,$B2,$C4,$B2 ; A725 94 B2 A4 B2 B4 B2 C4 B2  ........
        db   $A4,$B2,$D4,$B2,$E4,$B2,$F4,$B2 ; A72D A4 B2 D4 B2 E4 B2 F4 B2  ........
        db   $E4,$AF,$F4,$AF,$04,$B0,$14,$B0 ; A735 E4 AF F4 AF 04 B0 14 B0  ........
        db   $E4,$AF,$F4,$AF,$24,$B0,$34,$B0 ; A73D E4 AF F4 AF 24 B0 34 B0  ....$.4.
        db   $64,$B0,$74,$B0,$84,$B0,$94,$B0 ; A745 64 B0 74 B0 84 B0 94 B0  d.t.....
        db   $A4,$B0,$74,$B0,$84,$B0,$94,$B0 ; A74D A4 B0 74 B0 84 B0 94 B0  ..t.....
        db   $A4,$B0,$B4,$B0,$84,$B0,$C4,$B0 ; A755 A4 B0 B4 B0 84 B0 C4 B0  ........
        db   $64,$B0,$74,$B0,$D4,$B0,$E4,$B0 ; A75D 64 B0 74 B0 D4 B0 E4 B0  d.t.....
        db   $A4,$B0,$74,$B0,$F4,$B0,$E4,$B0 ; A765 A4 B0 74 B0 F4 B0 E4 B0  ..t.....
        db   $A4,$B0,$04,$B1,$F4,$B0,$14,$B1 ; A76D A4 B0 04 B1 F4 B0 14 B1  ........
        db   $24,$B1,$24,$B1,$34,$B1,$34,$B1 ; A775 24 B1 24 B1 34 B1 34 B1  $.$.4.4.
        db   $44,$B1,$54,$B1,$D4,$B0,$E4,$B0 ; A77D 44 B1 54 B1 D4 B0 E4 B0  D.T.....
        db   $64,$B1,$74,$B1,$F4,$B0,$E4,$B0 ; A785 64 B1 74 B1 F4 B0 E4 B0  d.t.....
        db   $64,$B1,$84,$B1,$F4,$B0,$14,$B1 ; A78D 64 B1 84 B1 F4 B0 14 B1  d.......
        db   $44,$B0,$54,$B0,$04,$B0,$14,$B0 ; A795 44 B0 54 B0 04 B0 14 B0  D.T.....
        db   $44,$AE,$54,$AE,$24,$AE,$34,$AE ; A79D 44 AE 54 AE 24 AE 34 AE  D.T.$.4.
        db   $64,$AE,$74,$AE,$24,$AE,$84,$AE ; A7A5 64 AE 74 AE 24 AE 84 AE  d.t.$...
        db   $04,$AE,$94,$AE,$24,$AE,$A4,$AE ; A7AD 04 AE 94 AE 24 AE A4 AE  ....$...
        db   $04,$AE,$14,$AE,$24,$AE,$34,$AE ; A7B5 04 AE 14 AE 24 AE 34 AE  ....$.4.
        db   $B4,$AE,$C4,$AE,$D4,$AE,$E4,$AE ; A7BD B4 AE C4 AE D4 AE E4 AE  ........
        db   $F4,$AE,$C4,$AE,$04,$AF,$14,$AF ; A7C5 F4 AE C4 AE 04 AF 14 AF  ........
        db   $B4,$AE,$C4,$AE,$24,$AF,$14,$AF ; A7CD B4 AE C4 AE 24 AF 14 AF  ....$...
        db   $B4,$AE,$34,$AF,$24,$AF,$34,$AF ; A7D5 B4 AE 34 AF 24 AF 34 AF  ..4.$.4.
        db   $44,$AF,$C4,$AE,$54,$AF,$E4,$AE ; A7DD 44 AF C4 AE 54 AF E4 AE  D...T...
        db   $B4,$AE,$34,$AF,$D4,$AE,$64,$AF ; A7E5 B4 AE 34 AF D4 AE 64 AF  ..4...d.
        db   $74,$AF,$84,$AF,$94,$AF,$E4,$AE ; A7ED 74 AF 84 AF 94 AF E4 AE  t.......
        db   $A4,$AF,$84,$AF,$D4,$AE,$E4,$AE ; A7F5 A4 AF 84 AF D4 AE E4 AE  ........
        db   $A4,$AF,$B4,$AF,$D4,$AE,$64,$AF ; A7FD A4 AF B4 AF D4 AE 64 AF  ......d.
        db   $C4,$AF,$D4,$AF,$D4,$AE,$E4,$AE ; A805 C4 AF D4 AF D4 AE E4 AE  ........
Bank08_TileDefinitions:
        db   $10,$00,$83,$01,$F0,$83,$02,$F0 ; A80D 10 00 83 01 F0 83 02 F0  ........
        db   $83,$03,$F0,$83,$04,$F0,$83,$05 ; A815 83 03 F0 83 04 F0 83 05  ........
        db   $F0,$83,$06,$F0,$83,$07,$F0,$83 ; A81D F0 83 06 F0 83 07 F0 83  ........
        db   $08,$F0,$83,$09,$F0,$83,$0A,$F0 ; A825 08 F0 83 09 F0 83 0A F0  ........
        db   $83,$0B,$F0,$83,$0C,$F0,$83,$0D ; A82D 83 0B F0 83 0C F0 83 0D  ........
        db   $F0,$83,$0E,$F0,$83,$0F,$F0,$83 ; A835 F0 83 0E F0 83 0F F0 83  ........
        db   $10,$00,$83,$14,$00,$04,$18,$00 ; A83D 10 00 83 14 00 04 18 00  ........
        db   $00,$1C,$00,$00,$20,$00,$00,$24 ; A845 00 1C 00 00 20 00 00 24  .... ..$
        db   $00,$00,$28,$00,$80,$2C,$00,$80 ; A84D 00 00 28 00 80 2C 00 80  ..(..,..
        db   $30,$00,$06,$34,$00,$06,$38,$10 ; A855 30 00 06 34 00 06 38 10  0..4..8.
        db   $00,$39,$10,$00,$3A,$10,$00,$3B ; A85D 00 39 10 00 3A 10 00 3B  .9..:..;
        db   $10,$80,$3C,$00,$00,$40,$00,$00 ; A865 10 80 3C 00 00 40 00 00  ..<..@..
        db   $44,$00,$00,$48,$00,$06,$4C,$00 ; A86D 44 00 00 48 00 06 4C 00  D..H..L.
        db   $06,$50,$00,$07,$54,$00,$06,$58 ; A875 06 50 00 07 54 00 06 58  .P..T..X
        db   $00,$80,$5C,$00,$09,$60,$00,$80 ; A87D 00 80 5C 00 09 60 00 80  ..\..`..
        db   $64,$00,$80,$68,$00,$00,$6C,$00 ; A885 64 00 80 68 00 00 6C 00  d..h..l.
        db   $AE,$70,$00,$AD,$74,$00,$00,$78 ; A88D AE 70 00 AD 74 00 00 78  .p..t..x
        db   $00,$80,$7C,$00,$A7,$80,$00,$A7 ; A895 00 80 7C 00 A7 80 00 A7  ..|.....
        db   $84,$00,$A7,$88,$00,$00,$8C,$00 ; A89D 84 00 A7 88 00 00 8C 00  ........
        db   $80,$90,$00,$A8,$94,$00,$80,$98 ; A8A5 80 90 00 A8 94 00 80 98  ........
        db   $40,$00,$9A,$00,$80,$9E,$00,$80 ; A8AD 40 00 9A 00 80 9E 00 80  @.......
        db   $A2,$00,$A7,$A6,$00,$80,$AA,$00 ; A8B5 A2 00 A7 A6 00 80 AA 00  ........
        db   $08,$AE,$00,$00,$B2,$00,$AA,$B6 ; A8BD 08 AE 00 00 B2 00 AA B6  ........
        db   $00,$AF,$BA,$00,$A7,$BE,$10,$00 ; A8C5 00 AF BA 00 A7 BE 10 00  ........
        db   $BF,$00,$80,$C3,$00,$80,$C7,$10 ; A8CD BF 00 80 C3 00 80 C7 10  ........
        db   $00,$C8,$00,$AA,$CC,$00,$80,$D0 ; A8D5 00 C8 00 AA CC 00 80 D0  ........
        db   $00,$00,$D4,$00,$AB,$D8,$00,$80 ; A8DD 00 00 D4 00 AB D8 00 80  ........
        db   $DC,$00,$80,$E0,$00,$80,$E4,$00 ; A8E5 DC 00 80 E0 00 80 E4 00  ........
        db   $A9,$E8,$00,$00,$EC,$00,$80,$F0 ; A8ED A9 E8 00 00 EC 00 80 F0  ........
        db   $00,$80,$F4,$10,$00,$10,$E0,$80 ; A8F5 00 80 F4 10 00 10 E0 80  ........
        db   $F5,$00,$A7,$24,$F4,$80,$25,$F4 ; A8FD F5 00 A7 24 F4 80 25 F4  ...$..%.
        db   $00,$26,$F4,$80,$27,$F4,$80,$28 ; A905 00 26 F4 80 27 F4 80 28  .&..'..(
        db   $F4,$80,$29,$F4,$80,$2A,$F4,$80 ; A90D F4 80 29 F4 80 2A F4 80  ..)..*..
        db   $2B,$F4,$80,$2C,$F4,$80,$2D,$F4 ; A915 2B F4 80 2C F4 80 2D F4  +..,..-.
        db   $80,$F9,$00,$94,$FD,$00,$95,$01 ; A91D 80 F9 00 94 FD 00 95 01  ........
        db   $01,$96,$05,$01,$97,$11,$E0,$0A ; A925 01 96 05 01 97 11 E0 0A  ........
        db   $09,$11,$05,$0A,$11,$00,$0B,$01 ; A92D 09 11 05 0A 11 00 0B 01  ........
        db   $A7,$0F,$01,$A7,$13,$01,$80,$70 ; A935 A7 0F 01 A7 13 01 80 70  .......p
        db   $F4,$80,$17,$01,$80,$30,$F4,$80 ; A93D F4 80 17 01 80 30 F4 80  .....0..
        db   $31,$F4,$80,$2E,$F4,$80,$2F,$F4 ; A945 31 F4 80 2E F4 80 2F F4  1...../.
        db   $80,$1B,$01,$80,$1F,$01,$80,$23 ; A94D 80 1B 01 80 1F 01 80 23  .......#
        db   $01,$80,$27,$01,$80,$2B,$01,$80 ; A955 01 80 27 01 80 2B 01 80  ..'..+..
        db   $2F,$01,$80,$33,$31,$02,$35,$01 ; A95D 2F 01 80 33 31 02 35 01  /..31.5.
        db   $80,$39,$01,$08,$3D,$01,$00,$3A ; A965 80 39 01 08 3D 01 00 3A  .9..=..:
        db   $F4,$80,$3B,$F4,$80,$41,$01,$80 ; A96D F4 80 3B F4 80 41 01 80  ..;..A..
        db   $45,$01,$00,$49,$01,$80,$4D,$41 ; A975 45 01 00 49 01 80 4D 41  E..I..MA
        db   $00,$4F,$01,$A0,$53,$01,$A0,$57 ; A97D 00 4F 01 A0 53 01 A0 57  .O..S..W
        db   $01,$A0,$5B,$01,$A0,$5F,$01,$A0 ; A985 01 A0 5B 01 A0 5F 01 A0  ..[.._..
        db   $63,$01,$A0,$67,$01,$A0,$6B,$01 ; A98D 63 01 A0 67 01 A0 6B 01  c..g..k.
        db   $A0,$6F,$01,$24,$73,$01,$24,$77 ; A995 A0 6F 01 24 73 01 24 77  .o.$s.$w
        db   $01,$80,$7B,$01,$80,$7F,$01,$A7 ; A99D 01 80 7B 01 80 7F 01 A7  ..{.....
        db   $83,$01,$00,$87,$01,$80,$8B,$01 ; A9A5 83 01 00 87 01 80 8B 01  ........
        db   $80,$8F,$01,$80,$93,$01,$80,$97 ; A9AD 80 8F 01 80 93 01 80 97  ........
        db   $01,$80,$9B,$01,$80,$9F,$01,$25 ; A9B5 01 80 9B 01 80 9F 01 25  .......%
        db   $A3,$01,$26,$A7,$01,$00,$AB,$01 ; A9BD A3 01 26 A7 01 00 AB 01  ..&.....
        db   $00,$AF,$01,$00,$B3,$01,$00,$B7 ; A9C5 00 AF 01 00 B3 01 00 B7  ........
        db   $01,$10,$BB,$01,$11,$BF,$01,$12 ; A9CD 01 10 BB 01 11 BF 01 12  ........
        db   $C3,$01,$13,$C7,$01,$80,$CB,$01 ; A9D5 C3 01 13 C7 01 80 CB 01  ........
        db   $80,$CF,$01,$80,$D3,$01,$00,$D7 ; A9DD 80 CF 01 80 D3 01 00 D7  ........
        db   $01,$08,$DB,$01,$80,$DF,$01,$80 ; A9E5 01 08 DB 01 80 DF 01 80  ........
        db   $E3,$01,$00,$E7,$01,$B0,$EB,$01 ; A9ED E3 01 00 E7 01 B0 EB 01  ........
        db   $B0,$EF,$01,$B0,$F3,$01,$B0,$F7 ; A9F5 B0 EF 01 B0 F3 01 B0 F7  ........
        db   $01,$80,$FB,$01,$80,$FF,$01,$80 ; A9FD 01 80 FB 01 80 FF 01 80  ........
        db   $03,$02,$80,$07,$02,$80,$0B,$02 ; AA05 03 02 80 07 02 80 0B 02  ........
        db   $80,$0F,$02,$80,$13,$02,$80,$17 ; AA0D 80 0F 02 80 13 02 80 17  ........
        db   $02,$80,$1B,$02,$80,$1F,$02,$80 ; AA15 02 80 1B 02 80 1F 02 80  ........
        db   $23,$02,$80,$27,$02,$80,$2B,$02 ; AA1D 23 02 80 27 02 80 2B 02  #..'..+.
        db   $00,$2F,$02,$80,$33,$02,$80,$37 ; AA25 00 2F 02 80 33 02 80 37  ./..3..7
        db   $42,$31,$39,$42,$31,$3B,$02,$9C ; AA2D 42 31 39 42 31 3B 02 9C  B19B1;..
        db   $3F,$02,$9C,$43,$02,$9C,$47,$02 ; AA35 3F 02 9C 43 02 9C 47 02  ?..C..G.
        db   $9C,$4B,$02,$80,$4F,$02,$80,$53 ; AA3D 9C 4B 02 80 4F 02 80 53  .K..O..S
        db   $02,$80,$57,$02,$80,$5B,$02,$80 ; AA45 02 80 57 02 80 5B 02 80  ..W..[..
        db   $5F,$02,$80,$63,$02,$80,$67,$02 ; AA4D 5F 02 80 63 02 80 67 02  _..c..g.
        db   $80,$6B,$12,$00,$6C,$02,$0F,$70 ; AA55 80 6B 12 00 6C 02 0F 70  .k..l..p
        db   $02,$80,$74,$02,$80,$78,$02,$08 ; AA5D 02 80 74 02 80 78 02 08  ..t..x..
        db   $7C,$52,$00,$7F,$02,$80,$83,$42 ; AA65 7C 52 00 7F 02 80 83 42  |R.....B
        db   $31,$85,$02,$80,$A5,$F4,$00,$89 ; AA6D 31 85 02 80 A5 F4 00 89  1.......
        db   $02,$08,$8D,$02,$80,$91,$02,$80 ; AA75 02 08 8D 02 80 91 02 80  ........
        db   $95,$32,$80,$97,$32,$80,$99,$12 ; AA7D 95 32 80 97 32 80 99 12  .2..2...
        db   $0B,$9A,$02,$80,$9E,$02,$80,$A2 ; AA85 0B 9A 02 80 9E 02 80 A2  ........
        db   $02,$80,$A6,$02,$80,$AA,$02,$80 ; AA8D 02 80 A6 02 80 AA 02 80  ........
        db   $AE,$02,$80,$B2,$02,$80,$B6,$22 ; AA95 AE 02 80 B2 02 80 B6 22  ......."
        db   $00,$B8,$02,$00,$BC,$02,$00,$C0 ; AA9D 00 B8 02 00 BC 02 00 C0  ........
        db   $02,$00,$C4,$02,$00,$C8,$02,$00 ; AAA5 02 00 C4 02 00 C8 02 00  ........
        db   $CC,$02,$00,$D0,$02,$00,$D4,$02 ; AAAD CC 02 00 D0 02 00 D4 02  ........
        db   $00,$D8,$02,$00,$DC,$12,$00,$DD ; AAB5 00 D8 02 00 DC 12 00 DD  ........
        db   $02,$08,$E1,$02,$9C,$E5,$02,$9C ; AABD 02 08 E1 02 9C E5 02 9C  ........
        db   $E9,$02,$9C,$ED,$02,$9C,$F1,$02 ; AAC5 E9 02 9C ED 02 9C F1 02  ........
        db   $AC,$F5,$02,$AC,$F9,$02,$AC,$FD ; AACD AC F5 02 AC F9 02 AC FD  ........
        db   $02,$AC,$01,$03,$80,$05,$03,$80 ; AAD5 02 AC 01 03 80 05 03 80  ........
        db   $09,$03,$80,$0D,$03,$80,$11,$03 ; AADD 09 03 80 0D 03 80 11 03  ........
        db   $80,$15,$03,$80,$19,$03,$00,$1D ; AAE5 80 15 03 80 19 03 00 1D  ........
        db   $03,$00,$21,$03,$00,$25,$03,$00 ; AAED 03 00 21 03 00 25 03 00  ..!..%..
        db   $29,$03,$80,$2D,$03,$80,$31,$03 ; AAF5 29 03 80 2D 03 80 31 03  )..-..1.
        db   $80,$35,$03,$80,$39,$03,$80,$3D ; AAFD 80 35 03 80 39 03 80 3D  .5..9..=
        db   $03,$00,$41,$03,$00,$4E,$F4,$00 ; AB05 03 00 41 03 00 4E F4 00  ..A..N..
        db   $4B,$F4,$00,$4C,$F4,$00,$4A,$F4 ; AB0D 4B F4 00 4C F4 00 4A F4  K..L..J.
        db   $00,$4F,$F4,$00,$4D,$F4,$00,$45 ; AB15 00 4F F4 00 4D F4 00 45  .O..M..E
        db   $43,$31,$47,$03,$80,$4B,$03,$80 ; AB1D 43 31 47 03 80 4B 03 80  C1G..K..
        db   $43,$F4,$80,$44,$F4,$80,$45,$F4 ; AB25 43 F4 80 44 F4 80 45 F4  C..D..E.
        db   $80,$46,$F4,$80,$47,$F4,$80,$48 ; AB2D 80 46 F4 80 47 F4 80 48  .F..G..H
        db   $F4,$80,$49,$F4,$80,$50,$F4,$00 ; AB35 F4 80 49 F4 80 50 F4 00  ..I..P..
        db   $51,$F4,$00,$52,$F4,$00,$53,$F4 ; AB3D 51 F4 00 52 F4 00 53 F4  Q..R..S.
        db   $00,$4F,$03,$33,$53,$03,$33,$57 ; AB45 00 4F 03 33 53 03 33 57  .O.3S.3W
        db   $13,$00,$58,$13,$80,$55,$F4,$80 ; AB4D 13 00 58 13 80 55 F4 80  ..X..U..
        db   $56,$F4,$80,$57,$F4,$80,$58,$F4 ; AB55 56 F4 80 57 F4 80 58 F4  V..W..X.
        db   $80,$59,$F4,$80,$59,$03,$00,$5A ; AB5D 80 59 F4 80 59 03 00 5A  .Y..Y..Z
        db   $F4,$80,$5B,$F4,$80,$5D,$03,$80 ; AB65 F4 80 5B F4 80 5D 03 80  ..[..]..
        db   $61,$03,$94,$5C,$F4,$80,$5D,$F4 ; AB6D 61 03 94 5C F4 80 5D F4  a..\..].
        db   $80,$5E,$F4,$80,$5F,$F4,$80,$60 ; AB75 80 5E F4 80 5F F4 80 60  .^.._..`
        db   $F4,$80,$61,$F4,$80,$62,$F4,$80 ; AB7D F4 80 61 F4 80 62 F4 80  ..a..b..
        db   $63,$F4,$00,$64,$F4,$80,$65,$F4 ; AB85 63 F4 00 64 F4 80 65 F4  c..d..e.
        db   $80,$66,$F4,$80,$67,$F4,$80,$65 ; AB8D 80 66 F4 80 67 F4 80 65  .f..g..e
        db   $03,$80,$69,$03,$80,$6D,$03,$80 ; AB95 03 80 69 03 80 6D 03 80  ..i..m..
        db   $71,$03,$80,$75,$03,$80,$79,$03 ; AB9D 71 03 80 75 03 80 79 03  q..u..y.
        db   $80,$32,$F4,$80,$33,$F4,$80,$08 ; ABA5 80 32 F4 80 33 F4 80 08  .2..3...
        db   $E0,$80,$09,$E0,$80,$0A,$E0,$80 ; ABAD E0 80 09 E0 80 0A E0 80  ........
        db   $0B,$E0,$80,$0C,$E0,$80,$0D,$E0 ; ABB5 0B E0 80 0C E0 80 0D E0  ........
        db   $80,$0E,$E0,$80,$35,$F4,$80,$7D ; ABBD 80 0E E0 80 35 F4 80 7D  ....5..}
        db   $03,$00,$15,$E0,$80,$12,$E0,$80 ; ABC5 03 00 15 E0 80 12 E0 80  ........
        db   $13,$E0,$80,$0F,$E0,$80,$38,$F4 ; ABCD 13 E0 80 0F E0 80 38 F4  ......8.
        db   $80,$39,$F4,$80,$81,$03,$00,$85 ; ABD5 80 39 F4 80 81 03 00 85  .9......
        db   $03,$80,$13,$F4,$80,$89,$03,$80 ; ABDD 03 80 13 F4 80 89 03 80  ........
        db   $8D,$03,$80,$91,$03,$80,$95,$03 ; ABE5 8D 03 80 91 03 80 95 03  ........
        db   $80,$10,$F4,$80,$11,$F4,$80,$12 ; ABED 80 10 F4 80 11 F4 80 12  ........
        db   $F4,$80,$14,$F4,$80,$15,$F4,$80 ; ABF5 F4 80 14 F4 80 15 F4 80  ........
        db   $16,$F4,$80,$17,$F4,$80,$99,$03 ; ABFD 16 F4 80 17 F4 80 99 03  ........
        db   $80,$9D,$03,$00,$A1,$13,$00,$A2 ; AC05 80 9D 03 00 A1 13 00 A2  ........
        db   $03,$80,$19,$F4,$80,$1A,$F4,$80 ; AC0D 03 80 19 F4 80 1A F4 80  ........
        db   $1B,$F4,$80,$1C,$F4,$80,$1D,$F4 ; AC15 1B F4 80 1C F4 80 1D F4  ........
        db   $80,$1E,$F4,$80,$1F,$F4,$80,$20 ; AC1D 80 1E F4 80 1F F4 80 20  .......
        db   $F4,$80,$21,$F4,$80,$22,$F4,$80 ; AC25 F4 80 21 F4 80 22 F4 80  ..!.."..
        db   $23,$F4,$80,$A6,$03,$80,$AA,$03 ; AC2D 23 F4 80 A6 03 80 AA 03  #.......
        db   $80,$AE,$03,$08,$B2,$03,$80,$B6 ; AC35 80 AE 03 08 B2 03 80 B6  ........
        db   $03,$00,$BA,$03,$00,$BE,$03,$80 ; AC3D 03 00 BA 03 00 BE 03 80  ........
        db   $C2,$03,$80,$C6,$13,$00,$C7,$03 ; AC45 C2 03 80 C6 13 00 C7 03  ........
        db   $80,$CB,$03,$80,$CF,$23,$00,$D1 ; AC4D 80 CB 03 80 CF 23 00 D1  .....#..
        db   $43,$00,$D3,$23,$00,$D5,$23,$80 ; AC55 43 00 D3 23 00 D5 23 80  C..#..#.
        db   $68,$F4,$80,$D7,$03,$80,$DB,$03 ; AC5D 68 F4 80 D7 03 80 DB 03  h.......
        db   $80,$DF,$03,$80,$E3,$03,$31,$E7 ; AC65 80 DF 03 80 E3 03 31 E7  ......1.
        db   $03,$80,$EB,$03,$04,$75,$F4,$80 ; AC6D 03 80 EB 03 04 75 F4 80  .....u..
        db   $76,$F4,$80,$77,$F4,$80,$79,$F4 ; AC75 76 F4 80 77 F4 80 79 F4  v..w..y.
        db   $80,$7A,$F4,$80,$7B,$F4,$80,$7C ; AC7D 80 7A F4 80 7B F4 80 7C  .z..{..|
        db   $F4,$80,$7D,$F4,$80,$EF,$03,$00 ; AC85 F4 80 7D F4 80 EF 03 00  ..}.....
        db   $F3,$03,$00,$F7,$03,$00,$10,$04 ; AC8D F3 03 00 F7 03 00 10 04  ........
        db   $00,$14,$04,$AF,$18,$04,$80,$1C ; AC95 00 14 04 AF 18 04 80 1C  ........
        db   $04,$80,$20,$04,$A8,$24,$14,$31 ; AC9D 04 80 20 04 A8 24 14 31  .. ..$.1
        db   $25,$04,$00,$29,$24,$80,$2B,$14 ; ACA5 25 04 00 29 24 80 2B 14  %..)$.+.
        db   $80,$2C,$04,$80,$30,$04,$80,$34 ; ACAD 80 2C 04 80 30 04 80 34  .,..0..4
        db   $04,$80,$38,$04,$80,$3C,$04,$80 ; ACB5 04 80 38 04 80 3C 04 80  ..8..<..
        db   $71,$F4,$80,$72,$F4,$80,$74,$F4 ; ACBD 71 F4 80 72 F4 80 74 F4  q..r..t.
        db   $80,$7E,$F4,$80,$7F,$F4,$80,$80 ; ACC5 80 7E F4 80 7F F4 80 80  .~......
        db   $F4,$80,$81,$F4,$80,$82,$F4,$80 ; ACCD F4 80 81 F4 80 82 F4 80  ........
        db   $40,$04,$80,$44,$04,$80,$83,$F4 ; ACD5 40 04 80 44 04 80 83 F4  @..D....
        db   $80,$86,$F4,$80,$89,$F4,$80,$8A ; ACDD 80 86 F4 80 89 F4 80 8A  ........
        db   $F4,$80,$8B,$F4,$00,$8C,$F4,$00 ; ACE5 F4 80 8B F4 00 8C F4 00  ........
        db   $8D,$F4,$80,$8E,$F4,$80,$8F,$F4 ; ACED 8D F4 80 8E F4 80 8F F4  ........
        db   $80,$90,$F4,$80,$91,$F4,$80,$48 ; ACF5 80 90 F4 80 91 F4 80 48  .......H
        db   $04,$80,$95,$F4,$80,$96,$F4,$80 ; ACFD 04 80 95 F4 80 96 F4 80  ........
        db   $4C,$04,$80,$50,$04,$00,$54,$04 ; AD05 4C 04 80 50 04 00 54 04  L..P..T.
        db   $00,$58,$04,$80,$5C,$04,$80,$60 ; AD0D 00 58 04 80 5C 04 80 60  .X..\..`
        db   $04,$80,$A1,$F4,$80,$64,$04,$80 ; AD15 04 80 A1 F4 80 64 04 80  .....d..
        db   $97,$F4,$80,$98,$F4,$80,$99,$F4 ; AD1D 97 F4 80 98 F4 80 99 F4  ........
        db   $80,$9A,$F4,$80,$9B,$F4,$80,$9C ; AD25 80 9A F4 80 9B F4 80 9C  ........
        db   $F4,$80,$9D,$F4,$80,$9E,$F4,$80 ; AD2D F4 80 9D F4 80 9E F4 80  ........
        db   $9F,$F4,$80,$A0,$F4,$80,$68,$04 ; AD35 9F F4 80 A0 F4 80 68 04  ......h.
        db   $80,$6C,$04,$80,$70,$04,$09,$74 ; AD3D 80 6C 04 80 70 04 09 74  .l..p..t
        db   $04,$80,$78,$04,$80,$7C,$04,$80 ; AD45 04 80 78 04 80 7C 04 80  ..x..|..
        db   $80,$04,$80,$84,$04,$80,$88,$14 ; AD4D 80 04 80 84 04 80 88 14  ........
        db   $01,$89,$04,$80,$8D,$04,$80,$91 ; AD55 01 89 04 80 8D 04 80 91  ........
        db   $04,$80,$93,$F4,$80,$94,$F4,$80 ; AD5D 04 80 93 F4 80 94 F4 80  ........
        db   $95,$04,$80,$99,$04,$80,$9D,$04 ; AD65 95 04 80 99 04 80 9D 04  ........
        db   $00,$69,$F4,$00,$A1,$04,$80,$A5 ; AD6D 00 69 F4 00 A1 04 80 A5  .i......
        db   $04,$80,$A9,$04,$80,$6C,$F4,$00 ; AD75 04 80 A9 04 80 6C F4 00  .....l..
        db   $6D,$F4,$00,$AD,$04,$00,$B1,$04 ; AD7D 6D F4 00 AD 04 00 B1 04  m.......
        db   $80,$B5,$44,$80,$B7,$04,$80,$BB ; AD85 80 B5 44 80 B7 04 80 BB  ..D.....
        db   $24,$00,$BD,$04,$80,$C1,$04,$80 ; AD8D 24 00 BD 04 80 C1 04 80  $.......
        db   $C5,$04,$00,$C9,$04,$80,$CD,$04 ; AD95 C5 04 00 C9 04 80 CD 04  ........
        db   $80,$D1,$04,$80,$A2,$F4,$00,$A3 ; AD9D 80 D1 04 80 A2 F4 00 A3  ........
        db   $F4,$00,$A4,$F4,$00,$D5,$04,$80 ; ADA5 F4 00 A4 F4 00 D5 04 80  ........
        db   $D9,$04,$80,$DD,$54,$00,$E0,$14 ; ADAD D9 04 80 DD 54 00 E0 14  ....T...
        db   $00,$E1,$04,$83,$E5,$04,$80,$E9 ; ADB5 00 E1 04 83 E5 04 80 E9  ........
        db   $04,$80,$41,$F4,$80,$42,$F4,$80 ; ADBD 04 80 41 F4 80 42 F4 80  ..A..B..
        db   $ED,$14,$00,$EE,$04,$83,$F2,$04 ; ADC5 ED 14 00 EE 04 83 F2 04  ........
        db   $83,$F6,$44,$80,$F8,$14,$00,$F9 ; ADCD 83 F6 44 80 F8 14 00 F9  ..D.....
        db   $04,$80,$FD,$04,$80,$01,$45,$80 ; ADD5 04 80 FD 04 80 01 45 80  ......E.
        db   $03,$45,$80,$05,$05,$80,$09,$05 ; ADDD 03 45 80 05 05 80 09 05  .E......
        db   $80,$0D,$65,$80,$10,$15,$80,$11 ; ADE5 80 0D 65 80 10 15 80 11  ..e.....
        db   $05,$31,$15,$05,$80,$19,$05,$80 ; ADED 05 31 15 05 80 19 05 80  .1......
        db   $1D,$05,$08,$21,$05,$80,$25,$05 ; ADF5 1D 05 08 21 05 80 25 05  ...!..%.
        db   $80,$29,$05,$80,$2D,$05,$80,$31 ; ADFD 80 29 05 80 2D 05 80 31  .)..-..1
        db   $05,$B2,$35,$05,$B2,$39,$05,$B2 ; AE05 05 B2 35 05 B2 39 05 B2  ..5..9..
        db   $3D,$05,$B2,$41,$15,$00,$42,$05 ; AE0D 3D 05 B2 41 15 00 42 05  =..A..B.
        db   $00,$46,$05,$80,$4A,$05,$80,$4E ; AE15 00 46 05 80 4A 05 80 4E  .F..J..N
        db   $05,$80,$52,$05,$80,$56,$05,$80 ; AE1D 05 80 52 05 80 56 05 80  ..R..V..
        db   $5A,$05,$80,$5E,$05,$80,$62,$05 ; AE25 5A 05 80 5E 05 80 62 05  Z..^..b.
        db   $80,$66,$05,$83,$6A,$05,$08,$6E ; AE2D 80 66 05 83 6A 05 08 6E  .f..j..n
        db   $05,$9D,$72,$05,$9D,$76,$05,$9D ; AE35 05 9D 72 05 9D 76 05 9D  ..r..v..
        db   $7A,$05,$9D,$7E,$05,$00,$82,$05 ; AE3D 7A 05 9D 7E 05 00 82 05  z..~....
        db   $08,$86,$05,$80,$8A,$05,$80,$8E ; AE45 08 86 05 80 8A 05 80 8E  ........
        db   $05,$80,$92,$05,$31,$AC,$F4,$83 ; AE4D 05 80 92 05 31 AC F4 83  ....1...
        db   $AD,$F4,$83,$AE,$F4,$83,$AA,$F4 ; AE55 AD F4 83 AE F4 83 AA F4  ........
        db   $83,$AB,$F4,$83,$A6,$F4,$83,$A7 ; AE5D 83 AB F4 83 A6 F4 83 A7  ........
        db   $F4,$83,$A8,$F4,$83,$A9,$F4,$83 ; AE65 F4 83 A8 F4 83 A9 F4 83  ........
        db   $96,$05,$80,$AF,$F4,$83,$9A,$05 ; AE6D 96 05 80 AF F4 83 9A 05  ........
        db   $83,$9E,$05,$80,$A2,$05,$80,$A6 ; AE75 83 9E 05 80 A2 05 80 A6  ........
        db   $05,$80,$AA,$05,$00,$AE,$05,$00 ; AE7D 05 80 AA 05 00 AE 05 00  ........
        db   $B2,$05,$00,$B6,$05,$00,$BA,$05 ; AE85 B2 05 00 B6 05 00 BA 05  ........
        db   $80,$BE,$05,$80,$C2,$05,$80,$C6 ; AE8D 80 BE 05 80 C2 05 80 C6  ........
        db   $05,$80,$CA,$05,$80,$CE,$05,$80 ; AE95 05 80 CA 05 80 CE 05 80  ........
        db   $D2,$05,$80,$D6,$05,$80,$DA,$05 ; AE9D D2 05 80 D6 05 80 DA 05  ........
        db   $80,$DE,$05,$80,$E2,$15,$85,$E3 ; AEA5 80 DE 05 80 E2 15 85 E3  ........
        db   $15,$85,$E4,$15,$80,$E5,$05,$06 ; AEAD 15 85 E4 15 80 E5 05 06  ........
        db   $E9,$05                         ; AEB5 E9 05                    ..
Bank08_AnimatedTilePointers:
        db   $07,$ED,$05,$00,$F1,$05,$00,$F5 ; AEB7 07 ED 05 00 F1 05 00 F5  ........
        db   $05,$00,$F9,$05,$00,$FD,$05,$00 ; AEBF 05 00 F9 05 00 FD 05 00  ........
        db   $1E,$81,$9E,$81,$1E,$82,$9E,$82 ; AEC7 1E 81 9E 81 1E 82 9E 82  ........
        db   $1E,$83,$9E,$83,$1E,$84,$9E,$84 ; AECF 1E 83 9E 83 1E 84 9E 84  ........
        db   $1E,$87,$1E,$89,$1E,$85,$9E,$85 ; AED7 1E 87 1E 89 1E 85 9E 85  ........
        db   $9E,$86,$1E,$86                 ; AEDF 9E 86 1E 86              ....
; ----------------------------------------------------------------------------
MapTileSystem_Entry_AEE3:
        ldx     #$DC                            ; AEE3 A2 DC                    ..
        brk                                     ; AEE5 00                       .
        db   $82,$E7                         ; AEE6 82 E7                    ..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_AEE8:
        ldy     #$00                            ; AEE8 A0 00                    ..
        jsr     MapTileSystem_Entry_B05C        ; AEEA 20 5C B0                  \.
        iny                                     ; AEED C8                       .
        jsr     MapTileSystem_Entry_B05C        ; AEEE 20 5C B0                  \.
        cmp     PlayerWorldX                    ; AEF1 C5 42                    .B
        bne     MapTileSystem_Branch_AF05       ; AEF3 D0 10                    ..
        iny                                     ; AEF5 C8                       .
        jsr     MapTileSystem_Entry_B05C        ; AEF6 20 5C B0                  \.
        cmp     PlayerWorldY                    ; AEF9 C5 43                    .C
        bne     MapTileSystem_Branch_AF05       ; AEFB D0 08                    ..
        ldy     #$00                            ; AEFD A0 00                    ..
        jsr     MapTileSystem_Entry_B05C        ; AEFF 20 5C B0                  \.
        jmp     MapTileSystem_Entry_AF13        ; AF02 4C 13 AF                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_AF05:
        lda     $DC                             ; AF05 A5 DC                    ..
        clc                                     ; AF07 18                       .
        adc     #$03                            ; AF08 69 03                    i.
        sta     $DC                             ; AF0A 85 DC                    ..
        bcc     MapTileSystem_Branch_AEE8       ; AF0C 90 DA                    ..
        inc     $DD                             ; AF0E E6 DD                    ..
        jmp     MapTileSystem_Branch_AEE8       ; AF10 4C E8 AE                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Entry_AF13:
        sta     CurrentMapNumber                ; AF13 85 63                    .c
        cmp     #$45                            ; AF15 C9 45                    .E
        bne     MapTileSystem_Branch_AF32       ; AF17 D0 19                    ..
        lda     PlayerWorldY                    ; AF19 A5 43                    .C
        cmp     #$1D                            ; AF1B C9 1D                    ..
        bcc     MapTileSystem_Branch_AF2A       ; AF1D 90 0B                    ..
        lda     $62AA                           ; AF1F AD AA 62                 ..b
        and     #$ED                            ; AF22 29 ED                    ).
        sta     $62AA                           ; AF24 8D AA 62                 ..b
        jmp     MapTileSystem_Branch_AF32       ; AF27 4C 32 AF                 L2.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_AF2A:
        lda     $62AA                           ; AF2A AD AA 62                 ..b
        ora     #$12                            ; AF2D 09 12                    ..
        sta     $62AA                           ; AF2F 8D AA 62                 ..b
MapTileSystem_Branch_AF32:
        jsr     MapTileSystem_Entry_AF89        ; AF32 20 89 AF                  ..
        jsr     MapTileSystem_Entry_AF99        ; AF35 20 99 AF                  ..
        ldy     #$01                            ; AF38 A0 01                    ..
        lda     ($DA),y                         ; AF3A B1 DA                    ..
        and     #$1F                            ; AF3C 29 1F                    ).
        sta     CurrentSubmapNumber             ; AF3E 85 64                    .d
MapTileSystem_Branch_AF40:
        ldy     #$02                            ; AF40 A0 02                    ..
        lda     ($DA),y                         ; AF42 B1 DA                    ..
        sta     PlayerLocalX                    ; AF44 85 44                    .D
        iny                                     ; AF46 C8                       .
        lda     ($DA),y                         ; AF47 B1 DA                    ..
        sta     PlayerLocalY                    ; AF49 85 45                    .E
        iny                                     ; AF4B C8                       .
        lda     ($DA),y                         ; AF4C B1 DA                    ..
MapTileSystem_Branch_AF4E:
        jsr     MapTileSystem_Entry_B5F1        ; AF4E 20 F1 B5                  ..
MapTileSystem_Branch_AF51:
        pha                                     ; AF51 48                       H
        lda     CurrentMapNumber                ; AF52 A5 63                    .c
        cmp     #$18                            ; AF54 C9 18                    ..
        bne     MapTileSystem_Branch_AF67       ; AF56 D0 0F                    ..
        brk                                     ; AF58 00                       .
        db   $05,$EB,$02                     ; AF59 05 EB 02                 ...
; ----------------------------------------------------------------------------
        beq     MapTileSystem_Branch_AF67       ; AF5C F0 09                    ..
        lda     #$01                            ; AF5E A9 01                    ..
        ldx     #$00                            ; AF60 A2 00                    ..
        ldy     #$0F                            ; AF62 A0 0F                    ..
        jsr     MapTileSystem_Entry_AF82        ; AF64 20 82 AF                  ..
MapTileSystem_Branch_AF67:
        lda     CurrentMapNumber                ; AF67 A5 63                    .c
        cmp     #$0E                            ; AF69 C9 0E                    ..
        bne     MapTileSystem_Branch_AF80       ; AF6B D0 13                    ..
        lda     $3D                             ; AF6D A5 3D                    .=
        cmp     #$02                            ; AF6F C9 02                    ..
        bne     MapTileSystem_Branch_AF80       ; AF71 D0 0D                    ..
        lda     CurrentSubmapNumber             ; AF73 A5 64                    .d
        ldx     #$0C                            ; AF75 A2 0C                    ..
        ldy     #$00                            ; AF77 A0 00                    ..
        jsr     MapTileSystem_Entry_AF82        ; AF79 20 82 AF                  ..
        pla                                     ; AF7C 68                       h
        lda     #$82                            ; AF7D A9 82                    ..
        rts                                     ; AF7F 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_AF80:
        pla                                     ; AF80 68                       h
        rts                                     ; AF81 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_AF82:
        sta     CurrentSubmapNumber             ; AF82 85 64                    .d
        stx     PlayerLocalX                    ; AF84 86 44                    .D
        sty     PlayerLocalY                    ; AF86 84 45                    .E
        rts                                     ; AF88 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_AF89:
        jsr     MapTileSystem_Entry_B037        ; AF89 20 37 B0                  7.
        ldy     #$01                            ; AF8C A0 01                    ..
        lda     ($DA),y                         ; AF8E B1 DA                    ..
        and     #$60                            ; AF90 29 60                    )`
        asl     a                               ; AF92 0A                       .
        asl     a                               ; AF93 0A                       .
        rol     a                               ; AF94 2A                       *
        rol     a                               ; AF95 2A                       *
        sta     CurrentTilesetCandidate         ; AF96 85 65                    .e
        rts                                     ; AF98 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_AF99:
        ldx     PlayerWorldX                    ; AF99 A6 42                    .B
        ldy     PlayerWorldY                    ; AF9B A4 43                    .C
        lda     CurrentMapNumber                ; AF9D A5 63                    .c
        cmp     #$3A                            ; AF9F C9 3A                    .:
        bne     MapTileSystem_Branch_AFC9       ; AFA1 D0 26                    .&
        cpx     #$84                            ; AFA3 E0 84                    ..
        bne     MapTileSystem_Branch_AFBA       ; AFA5 D0 13                    ..
        cpy     #$5A                            ; AFA7 C0 5A                    .Z
        bne     MapTileSystem_Branch_AFBA       ; AFA9 D0 0F                    ..
        ldx     #$1F                            ; AFAB A2 1F                    ..
        ldy     #$02                            ; AFAD A0 02                    ..
        lda     #$01                            ; AFAF A9 01                    ..
        jsr     MapTileSystem_Entry_AF82        ; AFB1 20 82 AF                  ..
MapTileSystem_Branch_AFB4:
        pla                                     ; AFB4 68                       h
        pla                                     ; AFB5 68                       h
        lda     #$83                            ; AFB6 A9 83                    ..
        bne     MapTileSystem_Branch_AF4E       ; AFB8 D0 94                    ..
MapTileSystem_Branch_AFBA:
        lda     $62AA                           ; AFBA AD AA 62                 ..b
        and     #$08                            ; AFBD 29 08                    ).
        beq     MapTileSystem_Branch_B036       ; AFBF F0 75                    .u
        lda     #$01                            ; AFC1 A9 01                    ..
        ldx     #$05                            ; AFC3 A2 05                    ..
        ldy     #$0F                            ; AFC5 A0 0F                    ..
        bne     MapTileSystem_Branch_AFDB       ; AFC7 D0 12                    ..
MapTileSystem_Branch_AFC9:
        cmp     #$39                            ; AFC9 C9 39                    .9
        bne     MapTileSystem_Branch_AFE1       ; AFCB D0 14                    ..
        cpx     #$8D                            ; AFCD E0 8D                    ..
        bne     MapTileSystem_Branch_B036       ; AFCF D0 65                    .e
        cpy     #$1F                            ; AFD1 C0 1F                    ..
        bne     MapTileSystem_Branch_B036       ; AFD3 D0 61                    .a
        lda     #$00                            ; AFD5 A9 00                    ..
        ldx     #$0E                            ; AFD7 A2 0E                    ..
        ldy     #$30                            ; AFD9 A0 30                    .0
MapTileSystem_Branch_AFDB:
        jsr     MapTileSystem_Entry_AF82        ; AFDB 20 82 AF                  ..
        jmp     MapTileSystem_Branch_AFB4       ; AFDE 4C B4 AF                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_AFE1:
        cmp     #$19                            ; AFE1 C9 19                    ..
        bne     MapTileSystem_Branch_AFF3       ; AFE3 D0 0E                    ..
        jsr     MapTileSystem_Entry_B5E2        ; AFE5 20 E2 B5                  ..
        bcc     MapTileSystem_Branch_B036       ; AFE8 90 4C                    .L
        lda     #$01                            ; AFEA A9 01                    ..
        sta     CurrentSubmapNumber             ; AFEC 85 64                    .d
        pla                                     ; AFEE 68                       h
        pla                                     ; AFEF 68                       h
        jmp     MapTileSystem_Branch_AF40       ; AFF0 4C 40 AF                 L@.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_AFF3:
        cmp     #$45                            ; AFF3 C9 45                    .E
        bne     MapTileSystem_Branch_B00B       ; AFF5 D0 14                    ..
        cpy     #$1C                            ; AFF7 C0 1C                    ..
        bne     MapTileSystem_Branch_B036       ; AFF9 D0 3B                    .;
        ldx     #$14                            ; AFFB A2 14                    ..
        ldy     #$07                            ; AFFD A0 07                    ..
        lda     #$00                            ; AFFF A9 00                    ..
MapTileSystem_Branch_B001:
        jsr     MapTileSystem_Entry_AF82        ; B001 20 82 AF                  ..
        pla                                     ; B004 68                       h
        pla                                     ; B005 68                       h
        lda     #$82                            ; B006 A9 82                    ..
        jmp     MapTileSystem_Branch_AF4E       ; B008 4C 4E AF                 LN.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B00B:
        cmp     #$0B                            ; B00B C9 0B                    ..
        bne     MapTileSystem_Branch_B01C       ; B00D D0 0D                    ..
        lda     $3D                             ; B00F A5 3D                    .=
        beq     MapTileSystem_Branch_B036       ; B011 F0 23                    .#
        ldx     #$11                            ; B013 A2 11                    ..
        ldy     #$08                            ; B015 A0 08                    ..
        lda     #$00                            ; B017 A9 00                    ..
        jmp     MapTileSystem_Branch_B001       ; B019 4C 01 B0                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B01C:
        cmp     #$2C                            ; B01C C9 2C                    .,
        bne     MapTileSystem_Branch_B036       ; B01E D0 16                    ..
        lda     PlayerWorldY                    ; B020 A5 43                    .C
        cmp     #$D5                            ; B022 C9 D5                    ..
        beq     MapTileSystem_Branch_B036       ; B024 F0 10                    ..
        ldx     #$0E                            ; B026 A2 0E                    ..
        ldy     #$22                            ; B028 A0 22                    ."
        lda     #$00                            ; B02A A9 00                    ..
        jsr     MapTileSystem_Entry_AF82        ; B02C 20 82 AF                  ..
        pla                                     ; B02F 68                       h
        pla                                     ; B030 68                       h
        lda     #$00                            ; B031 A9 00                    ..
        jmp     MapTileSystem_Branch_AF4E       ; B033 4C 4E AF                 LN.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B036:
        rts                                     ; B036 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B037:
        lda     Bank08_MapRoutingPointer        ; B037 AD F7 B7                 ...
        sta     $DA                             ; B03A 85 DA                    ..
        lda     $B7F8                           ; B03C AD F8 B7                 ...
        sta     $DB                             ; B03F 85 DB                    ..
        ldy     #$00                            ; B041 A0 00                    ..
MapTileSystem_Branch_B043:
        lda     ($DA),y                         ; B043 B1 DA                    ..
        cmp     #$FF                            ; B045 C9 FF                    ..
        beq     MapTileSystem_Branch_B05B       ; B047 F0 12                    ..
        cmp     CurrentMapNumber                ; B049 C5 63                    .c
        beq     MapTileSystem_Branch_B05B       ; B04B F0 0E                    ..
        lda     $DA                             ; B04D A5 DA                    ..
        clc                                     ; B04F 18                       .
        adc     #$05                            ; B050 69 05                    i.
        sta     $DA                             ; B052 85 DA                    ..
        bcc     MapTileSystem_Branch_B043       ; B054 90 ED                    ..
        inc     $DB                             ; B056 E6 DB                    ..
        jmp     MapTileSystem_Branch_B043       ; B058 4C 43 B0                 LC.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B05B:
        rts                                     ; B05B 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B05C:
        stx     $E9                             ; B05C 86 E9                    ..
        ldx     #$DC                            ; B05E A2 DC                    ..
        lda     #$0E                            ; B060 A9 0E                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; B062 20 EA C3                  ..
        ldx     $E9                             ; B065 A6 E9                    ..
        ora     #$00                            ; B067 09 00                    ..
        rts                                     ; B069 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B06A:
        ldx     #$DC                            ; B06A A2 DC                    ..
        brk                                     ; B06C 00                       .
        db   $82,$E7                         ; B06D 82 E7                    ..
; ----------------------------------------------------------------------------
        ldy     #$00                            ; B06F A0 00                    ..
MapTileSystem_Branch_B071:
        jsr     MapTileSystem_Entry_B05C        ; B071 20 5C B0                  \.
        cmp     #$FF                            ; B074 C9 FF                    ..
        bne     MapTileSystem_Branch_B07B       ; B076 D0 03                    ..
        jmp     MapTileSystem_Branch_B145       ; B078 4C 45 B1                 LE.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B07B:
        cmp     CurrentMapNumber                ; B07B C5 63                    .c
        beq     MapTileSystem_Branch_B08D       ; B07D F0 0E                    ..
        lda     $DC                             ; B07F A5 DC                    ..
        clc                                     ; B081 18                       .
        adc     #$03                            ; B082 69 03                    i.
        sta     $DC                             ; B084 85 DC                    ..
        bcc     MapTileSystem_Branch_B071       ; B086 90 E9                    ..
        inc     $DD                             ; B088 E6 DD                    ..
        jmp     MapTileSystem_Branch_B071       ; B08A 4C 71 B0                 Lq.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B08D:
        jsr     MapTileSystem_Entry_AF89        ; B08D 20 89 AF                  ..
        jsr     MapTileSystem_Entry_B05C        ; B090 20 5C B0                  \.
        sta     PlayerWorldX                    ; B093 85 42                    .B
        iny                                     ; B095 C8                       .
        jsr     MapTileSystem_Entry_B05C        ; B096 20 5C B0                  \.
        sta     PlayerWorldY                    ; B099 85 43                    .C
MapTileSystem_Branch_B09B:
        lda     CurrentMapNumber                ; B09B A5 63                    .c
        cmp     #$0E                            ; B09D C9 0E                    ..
        bne     MapTileSystem_Branch_B0D0       ; B09F D0 2F                    ./
        lda     $3D                             ; B0A1 A5 3D                    .=
        bne     MapTileSystem_Branch_B0AE       ; B0A3 D0 09                    ..
        dec     PlayerWorldY                    ; B0A5 C6 43                    .C
        jsr     MapTileSystem_Entry_B135        ; B0A7 20 35 B1                  5.
        lda     #$80                            ; B0AA A9 80                    ..
        clc                                     ; B0AC 18                       .
        rts                                     ; B0AD 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B0AE:
        cmp     #$01                            ; B0AE C9 01                    ..
        bne     MapTileSystem_Branch_B0BB       ; B0B0 D0 09                    ..
        inc     PlayerWorldX                    ; B0B2 E6 42                    .B
        jsr     MapTileSystem_Entry_B135        ; B0B4 20 35 B1                  5.
        lda     #$81                            ; B0B7 A9 81                    ..
        bne     MapTileSystem_Branch_B133       ; B0B9 D0 78                    .x
MapTileSystem_Branch_B0BB:
        cmp     #$03                            ; B0BB C9 03                    ..
        bne     MapTileSystem_Branch_B0C8       ; B0BD D0 09                    ..
        dec     PlayerWorldX                    ; B0BF C6 42                    .B
        jsr     MapTileSystem_Entry_B135        ; B0C1 20 35 B1                  5.
        lda     #$83                            ; B0C4 A9 83                    ..
        bne     MapTileSystem_Branch_B133       ; B0C6 D0 6B                    .k
MapTileSystem_Branch_B0C8:
        inc     PlayerWorldY                    ; B0C8 E6 43                    .C
        jsr     MapTileSystem_Entry_B135        ; B0CA 20 35 B1                  5.
        jmp     MapTileSystem_Branch_B0EF       ; B0CD 4C EF B0                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B0D0:
        cmp     #$0B                            ; B0D0 C9 0B                    ..
        bne     MapTileSystem_Branch_B0EF       ; B0D2 D0 1B                    ..
        lda     $3D                             ; B0D4 A5 3D                    .=
        bne     MapTileSystem_Branch_B0E6       ; B0D6 D0 0E                    ..
        lda     #$CC                            ; B0D8 A9 CC                    ..
        sta     PlayerWorldY                    ; B0DA 85 43                    .C
        sta     $6196                           ; B0DC 8D 96 61                 ..a
        jsr     MapTileSystem_Entry_B135        ; B0DF 20 35 B1                  5.
        lda     #$80                            ; B0E2 A9 80                    ..
        bne     MapTileSystem_Branch_B133       ; B0E4 D0 4D                    .M
MapTileSystem_Branch_B0E6:
        lda     #$D0                            ; B0E6 A9 D0                    ..
        sta     PlayerWorldY                    ; B0E8 85 43                    .C
        sta     $6196                           ; B0EA 8D 96 61                 ..a
        bne     MapTileSystem_Branch_B0FE       ; B0ED D0 0F                    ..
MapTileSystem_Branch_B0EF:
        cmp     #$2E                            ; B0EF C9 2E                    ..
        bne     MapTileSystem_Branch_B0FE       ; B0F1 D0 0B                    ..
        inc     PlayerWorldY                    ; B0F3 E6 43                    .C
        inc     $6196                           ; B0F5 EE 96 61                 ..a
        jsr     MapTileSystem_Entry_B135        ; B0F8 20 35 B1                  5.
        jmp     MapTileSystem_Branch_B131       ; B0FB 4C 31 B1                 L1.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B0FE:
        cmp     #$2C                            ; B0FE C9 2C                    .,
        bne     MapTileSystem_Branch_B11A       ; B100 D0 18                    ..
        lda     $3D                             ; B102 A5 3D                    .=
        beq     MapTileSystem_Branch_B110       ; B104 F0 0A                    ..
        lda     #$D9                            ; B106 A9 D9                    ..
        sta     PlayerWorldY                    ; B108 85 43                    .C
        jsr     MapTileSystem_Entry_B135        ; B10A 20 35 B1                  5.
        jmp     MapTileSystem_Branch_B131       ; B10D 4C 31 B1                 L1.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B110:
        lda     #$D5                            ; B110 A9 D5                    ..
        sta     PlayerWorldY                    ; B112 85 43                    .C
        jsr     MapTileSystem_Entry_B135        ; B114 20 35 B1                  5.
        jmp     MapTileSystem_Branch_B131       ; B117 4C 31 B1                 L1.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B11A:
        cmp     #$21                            ; B11A C9 21                    .!
        bne     MapTileSystem_Branch_B131       ; B11C D0 13                    ..
        lda     $3D                             ; B11E A5 3D                    .=
        cmp     #$02                            ; B120 C9 02                    ..
        beq     MapTileSystem_Branch_B12C       ; B122 F0 08                    ..
        dec     PlayerWorldY                    ; B124 C6 43                    .C
        jsr     MapTileSystem_Entry_B135        ; B126 20 35 B1                  5.
        jmp     MapTileSystem_Branch_B131       ; B129 4C 31 B1                 L1.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B12C:
        inc     PlayerWorldY                    ; B12C E6 43                    .C
        jsr     MapTileSystem_Entry_B135        ; B12E 20 35 B1                  5.
MapTileSystem_Branch_B131:
        lda     #$82                            ; B131 A9 82                    ..
MapTileSystem_Branch_B133:
        clc                                     ; B133 18                       .
        rts                                     ; B134 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B135:
        brk                                     ; B135 00                       .
        db   $5D,$33                         ; B136 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     MapTileSystem_Branch_B144       ; B138 90 0A                    ..
        lda     PlayerWorldX                    ; B13A A5 42                    .B
        sta     $6191                           ; B13C 8D 91 61                 ..a
        lda     PlayerWorldY                    ; B13F A5 43                    .C
        sta     $6192                           ; B141 8D 92 61                 ..a
MapTileSystem_Branch_B144:
        rts                                     ; B144 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B145:
        ldy     #$00                            ; B145 A0 00                    ..
MapTileSystem_Branch_B147:
        lda     Bank08_MapTransitionRecords,y   ; B147 B9 67 B9                 .g.
        cmp     #$FF                            ; B14A C9 FF                    ..
        bne     MapTileSystem_Branch_B151       ; B14C D0 03                    ..
        jmp     MapTileSystem_Branch_B09B       ; B14E 4C 9B B0                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B151:
        cmp     CurrentMapNumber                ; B151 C5 63                    .c
        beq     MapTileSystem_Branch_B15C       ; B153 F0 07                    ..
        tya                                     ; B155 98                       .
        clc                                     ; B156 18                       .
        adc     #$06                            ; B157 69 06                    i.
        tay                                     ; B159 A8                       .
        bne     MapTileSystem_Branch_B147       ; B15A D0 EB                    ..
MapTileSystem_Branch_B15C:
        lda     $B968,y                         ; B15C B9 68 B9                 .h.
        sta     CurrentMapNumber                ; B15F 85 63                    .c
        pha                                     ; B161 48                       H
        lda     $B969,y                         ; B162 B9 69 B9                 .i.
        sta     CurrentSubmapNumber             ; B165 85 64                    .d
        lda     $B96A,y                         ; B167 B9 6A B9                 .j.
        sta     PlayerLocalX                    ; B16A 85 44                    .D
        lda     $B96B,y                         ; B16C B9 6B B9                 .k.
        sta     PlayerLocalY                    ; B16F 85 45                    .E
        pla                                     ; B171 68                       h
        cmp     #$2C                            ; B172 C9 2C                    .,
        bne     MapTileSystem_Branch_B180       ; B174 D0 0A                    ..
        brk                                     ; B176 00                       .
        db   $0A,$EB,$04                     ; B177 0A EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapTileSystem_Branch_B180       ; B17A F0 04                    ..
        lda     #$1B                            ; B17C A9 1B                    ..
        sta     PlayerLocalY                    ; B17E 85 45                    .E
MapTileSystem_Branch_B180:
        lda     $B96C,y                         ; B180 B9 6C B9                 .l.
        jsr     MapTileSystem_Entry_B5E8        ; B183 20 E8 B5                  ..
        sec                                     ; B186 38                       8
        rts                                     ; B187 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B188:
        ldy     PlayerLocalY                    ; B188 A4 45                    .E
        ldx     PlayerLocalX                    ; B18A A6 44                    .D
        lda     CurrentMapNumber                ; B18C A5 63                    .c
        cmp     #$33                            ; B18E C9 33                    .3
        beq     MapTileSystem_Branch_B194       ; B190 F0 02                    ..
MapTileSystem_Branch_B192:
        clc                                     ; B192 18                       .
        rts                                     ; B193 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B194:
        lda     CurrentSubmapNumber             ; B194 A5 64                    .d
        cmp     #$00                            ; B196 C9 00                    ..
        bne     MapTileSystem_Branch_B1B2       ; B198 D0 18                    ..
        cpx     #$1C                            ; B19A E0 1C                    ..
        bne     MapTileSystem_Branch_B192       ; B19C D0 F4                    ..
        cpy     #$26                            ; B19E C0 26                    .&
        beq     MapTileSystem_Branch_B1AA       ; B1A0 F0 08                    ..
        cpy     #$27                            ; B1A2 C0 27                    .'
        bne     MapTileSystem_Branch_B192       ; B1A4 D0 EC                    ..
        ldy     #$05                            ; B1A6 A0 05                    ..
        bne     MapTileSystem_Branch_B1AC       ; B1A8 D0 02                    ..
MapTileSystem_Branch_B1AA:
        ldy     #$04                            ; B1AA A0 04                    ..
MapTileSystem_Branch_B1AC:
        lda     #$01                            ; B1AC A9 01                    ..
        ldx     #$00                            ; B1AE A2 00                    ..
        beq     MapTileSystem_Branch_B229       ; B1B0 F0 77                    .w
MapTileSystem_Branch_B1B2:
        cmp     #$01                            ; B1B2 C9 01                    ..
        bne     MapTileSystem_Branch_B1CE       ; B1B4 D0 18                    ..
        cpx     #$FF                            ; B1B6 E0 FF                    ..
        bne     MapTileSystem_Branch_B192       ; B1B8 D0 D8                    ..
        cpy     #$04                            ; B1BA C0 04                    ..
        beq     MapTileSystem_Branch_B1C6       ; B1BC F0 08                    ..
        cpy     #$05                            ; B1BE C0 05                    ..
        bne     MapTileSystem_Branch_B192       ; B1C0 D0 D0                    ..
        ldy     #$27                            ; B1C2 A0 27                    .'
        bne     MapTileSystem_Branch_B1C8       ; B1C4 D0 02                    ..
MapTileSystem_Branch_B1C6:
        ldy     #$26                            ; B1C6 A0 26                    .&
MapTileSystem_Branch_B1C8:
        lda     #$00                            ; B1C8 A9 00                    ..
        ldx     #$1B                            ; B1CA A2 1B                    ..
        bne     MapTileSystem_Branch_B229       ; B1CC D0 5B                    .[
MapTileSystem_Branch_B1CE:
        cmp     #$04                            ; B1CE C9 04                    ..
        bne     MapTileSystem_Branch_B1FA       ; B1D0 D0 28                    .(
        cpx     #$FF                            ; B1D2 E0 FF                    ..
        bne     MapTileSystem_Branch_B192       ; B1D4 D0 BC                    ..
        cpy     #$02                            ; B1D6 C0 02                    ..
        bne     MapTileSystem_Branch_B1DE       ; B1D8 D0 04                    ..
        ldy     #$10                            ; B1DA A0 10                    ..
        bne     MapTileSystem_Branch_B1F4       ; B1DC D0 16                    ..
MapTileSystem_Branch_B1DE:
        cpy     #$03                            ; B1DE C0 03                    ..
        bne     MapTileSystem_Branch_B1E6       ; B1E0 D0 04                    ..
        ldy     #$11                            ; B1E2 A0 11                    ..
        bne     MapTileSystem_Branch_B1F4       ; B1E4 D0 0E                    ..
MapTileSystem_Branch_B1E6:
        cpy     #$1C                            ; B1E6 C0 1C                    ..
        bne     MapTileSystem_Branch_B1EE       ; B1E8 D0 04                    ..
        ldy     #$2A                            ; B1EA A0 2A                    .*
        bne     MapTileSystem_Branch_B1F4       ; B1EC D0 06                    ..
MapTileSystem_Branch_B1EE:
        cpy     #$1D                            ; B1EE C0 1D                    ..
        bne     MapTileSystem_Branch_B192       ; B1F0 D0 A0                    ..
        ldy     #$2B                            ; B1F2 A0 2B                    .+
MapTileSystem_Branch_B1F4:
        lda     #$03                            ; B1F4 A9 03                    ..
        ldx     #$1F                            ; B1F6 A2 1F                    ..
        bne     MapTileSystem_Branch_B229       ; B1F8 D0 2F                    ./
MapTileSystem_Branch_B1FA:
        cmp     #$03                            ; B1FA C9 03                    ..
        beq     MapTileSystem_Branch_B200       ; B1FC F0 02                    ..
        bne     MapTileSystem_Branch_B192       ; B1FE D0 92                    ..
MapTileSystem_Branch_B200:
        cpx     #$20                            ; B200 E0 20                    .
        bne     MapTileSystem_Branch_B192       ; B202 D0 8E                    ..
        cpy     #$10                            ; B204 C0 10                    ..
        bne     MapTileSystem_Branch_B20C       ; B206 D0 04                    ..
        ldy     #$02                            ; B208 A0 02                    ..
        bne     MapTileSystem_Branch_B225       ; B20A D0 19                    ..
MapTileSystem_Branch_B20C:
        cpy     #$11                            ; B20C C0 11                    ..
        bne     MapTileSystem_Branch_B214       ; B20E D0 04                    ..
        ldy     #$03                            ; B210 A0 03                    ..
        bne     MapTileSystem_Branch_B225       ; B212 D0 11                    ..
MapTileSystem_Branch_B214:
        cpy     #$2A                            ; B214 C0 2A                    .*
        bne     MapTileSystem_Branch_B21C       ; B216 D0 04                    ..
        ldy     #$1C                            ; B218 A0 1C                    ..
        bne     MapTileSystem_Branch_B225       ; B21A D0 09                    ..
MapTileSystem_Branch_B21C:
        cpy     #$2B                            ; B21C C0 2B                    .+
        beq     MapTileSystem_Branch_B223       ; B21E F0 03                    ..
        jmp     MapTileSystem_Branch_B192       ; B220 4C 92 B1                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B223:
        ldy     #$1D                            ; B223 A0 1D                    ..
MapTileSystem_Branch_B225:
        lda     #$04                            ; B225 A9 04                    ..
        ldx     #$00                            ; B227 A2 00                    ..
MapTileSystem_Branch_B229:
        jsr     MapTileSystem_Entry_AF82        ; B229 20 82 AF                  ..
        sec                                     ; B22C 38                       8
        rts                                     ; B22D 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B22E:
        jsr     MapTileSystem_Entry_B323        ; B22E 20 23 B3                  #.
        jsr     MapTileSystem_Entry_B246        ; B231 20 46 B2                  F.
        jsr     MapTileSystem_Entry_B397        ; B234 20 97 B3                  ..
        jsr     MapTileSystem_Entry_B5E8        ; B237 20 E8 B5                  ..
        jsr     MapTileSystem_Entry_B554        ; B23A 20 54 B5                  T.
        jsr     MapTileSystem_Entry_B48E        ; B23D 20 8E B4                  ..
        jsr     MapTileSystem_Entry_B59F        ; B240 20 9F B5                  ..
        jmp     MapTileSystem_Branch_AF51       ; B243 4C 51 AF                 LQ.
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B246:
        lda     CurrentMapNumber                ; B246 A5 63                    .c
        sta     $E4                             ; B248 85 E4                    ..
        lda     CurrentSubmapNumber             ; B24A A5 64                    .d
        sta     $E5                             ; B24C 85 E5                    ..
        lda     PlayerLocalX                    ; B24E A5 44                    .D
        sta     $E6                             ; B250 85 E6                    ..
        lda     PlayerLocalY                    ; B252 A5 45                    .E
        sta     $E7                             ; B254 85 E7                    ..
        jsr     MapTileSystem_Entry_B4ED        ; B256 20 ED B4                  ..
        tax                                     ; B259 AA                       .
        lda     Bank08_MapSubmapPointer         ; B25A AD 74 B9                 .t.
        sta     $DE                             ; B25D 85 DE                    ..
        lda     $B975                           ; B25F AD 75 B9                 .u.
        sta     $DF                             ; B262 85 DF                    ..
        ldy     #$00                            ; B264 A0 00                    ..
MapTileSystem_Branch_B266:
        lda     ($DE),y                         ; B266 B1 DE                    ..
        cmp     #$FF                            ; B268 C9 FF                    ..
        beq     MapTileSystem_Branch_B27E       ; B26A F0 12                    ..
        cmp     CurrentMapNumber                ; B26C C5 63                    .c
        beq     MapTileSystem_Branch_B27F       ; B26E F0 0F                    ..
MapTileSystem_Branch_B270:
        lda     ($DE),y                         ; B270 B1 DE                    ..
        inc     $DE                             ; B272 E6 DE                    ..
        bne     MapTileSystem_Branch_B278       ; B274 D0 02                    ..
        inc     $DF                             ; B276 E6 DF                    ..
MapTileSystem_Branch_B278:
        cmp     #$FF                            ; B278 C9 FF                    ..
        bne     MapTileSystem_Branch_B270       ; B27A D0 F4                    ..
        beq     MapTileSystem_Branch_B266       ; B27C F0 E8                    ..
MapTileSystem_Branch_B27E:
        rts                                     ; B27E 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B27F:
        inc     $DE                             ; B27F E6 DE                    ..
        bne     MapTileSystem_Branch_B285       ; B281 D0 02                    ..
        inc     $DF                             ; B283 E6 DF                    ..
MapTileSystem_Branch_B285:
        lda     CurrentSubmapNumber             ; B285 A5 64                    .d
        beq     MapTileSystem_Branch_B29A       ; B287 F0 11                    ..
        sta     $01                             ; B289 85 01                    ..
MapTileSystem_Branch_B28B:
        lda     ($DE),y                         ; B28B B1 DE                    ..
        pha                                     ; B28D 48                       H
        jsr     MapTileSystem_Entry_B4C1        ; B28E 20 C1 B4                  ..
        pla                                     ; B291 68                       h
        bmi     MapTileSystem_Branch_B296       ; B292 30 02                    0.
        bpl     MapTileSystem_Branch_B28B       ; B294 10 F5                    ..
MapTileSystem_Branch_B296:
        dec     $01                             ; B296 C6 01                    ..
        bne     MapTileSystem_Branch_B28B       ; B298 D0 F1                    ..
MapTileSystem_Branch_B29A:
        cpx     #$00                            ; B29A E0 00                    ..
        beq     MapTileSystem_Branch_B2A6       ; B29C F0 08                    ..
MapTileSystem_Branch_B29E:
        lda     ($DE),y                         ; B29E B1 DE                    ..
        jsr     MapTileSystem_Entry_B4C1        ; B2A0 20 C1 B4                  ..
        dex                                     ; B2A3 CA                       .
        bne     MapTileSystem_Branch_B29E       ; B2A4 D0 F8                    ..
MapTileSystem_Branch_B2A6:
        lda     ($DE),y                         ; B2A6 B1 DE                    ..
        pha                                     ; B2A8 48                       H
        and     #$1F                            ; B2A9 29 1F                    ).
        sta     $01                             ; B2AB 85 01                    ..
        pla                                     ; B2AD 68                       h
        and     #$60                            ; B2AE 29 60                    )`
        beq     MapTileSystem_Branch_B2E5       ; B2B0 F0 33                    .3
        cmp     #$20                            ; B2B2 C9 20                    .
        beq     MapTileSystem_Branch_B2C2       ; B2B4 F0 0C                    ..
        cmp     #$40                            ; B2B6 C9 40                    .@
        beq     MapTileSystem_Branch_B2D1       ; B2B8 F0 17                    ..
        lda     $01                             ; B2BA A5 01                    ..
        sta     CurrentSubmapNumber             ; B2BC 85 64                    .d
        iny                                     ; B2BE C8                       .
        lda     ($DE),y                         ; B2BF B1 DE                    ..
        rts                                     ; B2C1 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B2C2:
        lda     $01                             ; B2C2 A5 01                    ..
        sta     CurrentSubmapNumber             ; B2C4 85 64                    .d
        ldy     #$02                            ; B2C6 A0 02                    ..
        lda     ($DE),y                         ; B2C8 B1 DE                    ..
        sta     CurrentMapNumber                ; B2CA 85 63                    .c
        ldy     #$01                            ; B2CC A0 01                    ..
        lda     ($DE),y                         ; B2CE B1 DE                    ..
        rts                                     ; B2D0 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B2D1:
        iny                                     ; B2D1 C8                       .
        lda     ($DE),y                         ; B2D2 B1 DE                    ..
        sta     CurrentMapNumber                ; B2D4 85 63                    .c
        pla                                     ; B2D6 68                       h
        pla                                     ; B2D7 68                       h
        lda     CurrentMapNumber                ; B2D8 A5 63                    .c
        jsr     MapTileSystem_Entry_AF13        ; B2DA 20 13 AF                  ..
        brk                                     ; B2DD 00                       .
        db   $1A,$EF                         ; B2DE 1A EF                    ..
; ----------------------------------------------------------------------------
        jsr     MapTileSystem_Entry_B48E        ; B2E0 20 8E B4                  ..
        sec                                     ; B2E3 38                       8
        rts                                     ; B2E4 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B2E5:
        pla                                     ; B2E5 68                       h
        pla                                     ; B2E6 68                       h
        jsr     MapTileSystem_Entry_B06A        ; B2E7 20 6A B0                  j.
        sta     $01                             ; B2EA 85 01                    ..
        lda     CurrentMapNumber                ; B2EC A5 63                    .c
        ldx     PlayerLocalX                    ; B2EE A6 44                    .D
        ldy     PlayerLocalY                    ; B2F0 A4 45                    .E
        cmp     #$39                            ; B2F2 C9 39                    .9
        bne     MapTileSystem_Entry_B304        ; B2F4 D0 0E                    ..
        cpx     #$0E                            ; B2F6 E0 0E                    ..
        bne     MapTileSystem_Branch_B318       ; B2F8 D0 1E                    ..
        cpy     #$30                            ; B2FA C0 30                    .0
        bne     MapTileSystem_Branch_B318       ; B2FC D0 1A                    ..
        ldx     #$8D                            ; B2FE A2 8D                    ..
        ldy     #$1F                            ; B300 A0 1F                    ..
        bne     MapTileSystem_Branch_B314       ; B302 D0 10                    ..
MapTileSystem_Entry_B304:
        cmp     #$3A                            ; B304 C9 3A                    .:
        bne     MapTileSystem_Branch_B318       ; B306 D0 10                    ..
        cpx     #$1F                            ; B308 E0 1F                    ..
        bne     MapTileSystem_Branch_B318       ; B30A D0 0C                    ..
        cpy     #$02                            ; B30C C0 02                    ..
        bne     MapTileSystem_Branch_B318       ; B30E D0 08                    ..
        ldx     #$84                            ; B310 A2 84                    ..
        ldy     #$5A                            ; B312 A0 5A                    .Z
MapTileSystem_Branch_B314:
        stx     PlayerWorldX                    ; B314 86 42                    .B
        sty     PlayerWorldY                    ; B316 84 43                    .C
MapTileSystem_Branch_B318:
        jsr     MapTileSystem_Entry_B135        ; B318 20 35 B1                  5.
        lda     #$80                            ; B31B A9 80                    ..
        sta     $00                             ; B31D 85 00                    ..
        lda     $01                             ; B31F A5 01                    ..
        sec                                     ; B321 38                       8
        rts                                     ; B322 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B323:
        ldy     #$00                            ; B323 A0 00                    ..
MapTileSystem_Branch_B325:
        lda     $B681,y                         ; B325 B9 81 B6                 ...
        cmp     #$FF                            ; B328 C9 FF                    ..
        beq     MapTileSystem_Branch_B373       ; B32A F0 47                    .G
        cmp     CurrentMapNumber                ; B32C C5 63                    .c
        beq     MapTileSystem_Branch_B338       ; B32E F0 08                    ..
MapTileSystem_Branch_B330:
        tya                                     ; B330 98                       .
        clc                                     ; B331 18                       .
        adc     #$09                            ; B332 69 09                    i.
        tay                                     ; B334 A8                       .
        jmp     MapTileSystem_Branch_B325       ; B335 4C 25 B3                 L%.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B338:
        lda     $B682,y                         ; B338 B9 82 B6                 ...
        cmp     CurrentSubmapNumber             ; B33B C5 64                    .d
        bne     MapTileSystem_Branch_B330       ; B33D D0 F1                    ..
        lda     $B683,y                         ; B33F B9 83 B6                 ...
        cmp     PlayerLocalX                    ; B342 C5 44                    .D
        bne     MapTileSystem_Branch_B330       ; B344 D0 EA                    ..
        lda     $B684,y                         ; B346 B9 84 B6                 ...
        cmp     PlayerLocalY                    ; B349 C5 45                    .E
        bne     MapTileSystem_Branch_B330       ; B34B D0 E3                    ..
        lda     $B685,y                         ; B34D B9 85 B6                 ...
        sta     CurrentMapNumber                ; B350 85 63                    .c
        lda     $B686,y                         ; B352 B9 86 B6                 ...
        sta     CurrentSubmapNumber             ; B355 85 64                    .d
        lda     $B687,y                         ; B357 B9 87 B6                 ...
        sta     PlayerLocalX                    ; B35A 85 44                    .D
        lda     $B688,y                         ; B35C B9 88 B6                 ...
        sta     PlayerLocalY                    ; B35F 85 45                    .E
        pla                                     ; B361 68                       h
        pla                                     ; B362 68                       h
        tya                                     ; B363 98                       .
        jsr     MapTileSystem_Entry_B5E8        ; B364 20 E8 B5                  ..
        tay                                     ; B367 A8                       .
        jsr     MapTileSystem_Entry_B376        ; B368 20 76 B3                  v.
        lda     #$07                            ; B36B A9 07                    ..
        sta     $00                             ; B36D 85 00                    ..
        lda     $B689,y                         ; B36F B9 89 B6                 ...
        sec                                     ; B372 38                       8
MapTileSystem_Branch_B373:
        jmp     MapTileSystem_Branch_AF51       ; B373 4C 51 AF                 LQ.
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B376:
        cpy     #$00                            ; B376 C0 00                    ..
        bne     MapTileSystem_Branch_B384       ; B378 D0 0A                    ..
        lda     #$1B                            ; B37A A9 1B                    ..
        sta     $7A6A                           ; B37C 8D 6A 7A                 .jz
        lda     #$26                            ; B37F A9 26                    .&
        sta     $7A5F                           ; B381 8D 5F 7A                 ._z
MapTileSystem_Branch_B384:
        cpy     #$09                            ; B384 C0 09                    ..
        bne     MapTileSystem_Branch_B38D       ; B386 D0 05                    ..
        lda     #$71                            ; B388 A9 71                    .q
        sta     $79F1                           ; B38A 8D F1 79                 ..y
MapTileSystem_Branch_B38D:
        cpy     #$12                            ; B38D C0 12                    ..
        bne     MapTileSystem_Branch_B396       ; B38F D0 05                    ..
        lda     #$16                            ; B391 A9 16                    ..
        sta     $7928                           ; B393 8D 28 79                 .(y
MapTileSystem_Branch_B396:
        rts                                     ; B396 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B397:
        pha                                     ; B397 48                       H
        sta     $00                             ; B398 85 00                    ..
        ldy     CurrentSubmapNumber             ; B39A A4 64                    .d
        lda     CurrentMapNumber                ; B39C A5 63                    .c
        cmp     #$36                            ; B39E C9 36                    .6
        bne     MapTileSystem_Branch_B3C0       ; B3A0 D0 1E                    ..
        cpy     #$01                            ; B3A2 C0 01                    ..
        bne     MapTileSystem_Branch_B3D7       ; B3A4 D0 31                    .1
        lda     $62AA                           ; B3A6 AD AA 62                 ..b
        and     #$80                            ; B3A9 29 80                    ).
        beq     MapTileSystem_Branch_B3D7       ; B3AB F0 2A                    .*
        lda     #$02                            ; B3AD A9 02                    ..
        sta     CurrentSubmapNumber             ; B3AF 85 64                    .d
        lda     $00                             ; B3B1 A5 00                    ..
        cmp     #$01                            ; B3B3 C9 01                    ..
        bcc     MapTileSystem_Branch_B3D7       ; B3B5 90 20                    .
        cmp     #$04                            ; B3B7 C9 04                    ..
        bcs     MapTileSystem_Branch_B3D7       ; B3B9 B0 1C                    ..
        pla                                     ; B3BB 68                       h
        clc                                     ; B3BC 18                       .
        adc     #$01                            ; B3BD 69 01                    i.
        rts                                     ; B3BF 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B3C0:
        cmp     #$38                            ; B3C0 C9 38                    .8
        bne     MapTileSystem_Branch_B3D9       ; B3C2 D0 15                    ..
        cpy     #$01                            ; B3C4 C0 01                    ..
        bne     MapTileSystem_Branch_B3D7       ; B3C6 D0 0F                    ..
        lda     $00                             ; B3C8 A5 00                    ..
        bne     MapTileSystem_Branch_B3D7       ; B3CA D0 0B                    ..
        lda     $62AA                           ; B3CC AD AA 62                 ..b
        and     #$20                            ; B3CF 29 20                    )
        beq     MapTileSystem_Branch_B3D7       ; B3D1 F0 04                    ..
        lda     #$02                            ; B3D3 A9 02                    ..
        sta     CurrentSubmapNumber             ; B3D5 85 64                    .d
MapTileSystem_Branch_B3D7:
        pla                                     ; B3D7 68                       h
        rts                                     ; B3D8 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B3D9:
        cmp     #$45                            ; B3D9 C9 45                    .E
        bne     MapTileSystem_Branch_B425       ; B3DB D0 48                    .H
        cpy     #$04                            ; B3DD C0 04                    ..
        bne     MapTileSystem_Branch_B40C       ; B3DF D0 2B                    .+
        lda     $00                             ; B3E1 A5 00                    ..
        cmp     #$00                            ; B3E3 C9 00                    ..
        bne     MapTileSystem_Branch_B3F1       ; B3E5 D0 0A                    ..
MapTileSystem_Branch_B3E7:
        lda     $62AA                           ; B3E7 AD AA 62                 ..b
        and     #$10                            ; B3EA 29 10                    ).
        bne     MapTileSystem_Branch_B3F7       ; B3EC D0 09                    ..
MapTileSystem_Branch_B3EE:
        jmp     MapTileSystem_Branch_B3D7       ; B3EE 4C D7 B3                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B3F1:
        cmp     #$04                            ; B3F1 C9 04                    ..
        bne     MapTileSystem_Branch_B3EE       ; B3F3 D0 F9                    ..
        beq     MapTileSystem_Branch_B3E7       ; B3F5 F0 F0                    ..
MapTileSystem_Branch_B3F7:
        lda     $00                             ; B3F7 A5 00                    ..
        cmp     #$04                            ; B3F9 C9 04                    ..
        bne     MapTileSystem_Branch_B405       ; B3FB D0 08                    ..
        lda     #$06                            ; B3FD A9 06                    ..
        sta     CurrentSubmapNumber             ; B3FF 85 64                    .d
        pla                                     ; B401 68                       h
        lda     #$05                            ; B402 A9 05                    ..
        rts                                     ; B404 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B405:
        lda     #$06                            ; B405 A9 06                    ..
        sta     CurrentSubmapNumber             ; B407 85 64                    .d
        jmp     MapTileSystem_Branch_B3D7       ; B409 4C D7 B3                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B40C:
        cpy     #$05                            ; B40C C0 05                    ..
        bne     MapTileSystem_Branch_B3EE       ; B40E D0 DE                    ..
        lda     $00                             ; B410 A5 00                    ..
        cmp     #$02                            ; B412 C9 02                    ..
        bne     MapTileSystem_Branch_B3EE       ; B414 D0 D8                    ..
        lda     $62AA                           ; B416 AD AA 62                 ..b
        and     #$02                            ; B419 29 02                    ).
        beq     MapTileSystem_Branch_B3EE       ; B41B F0 D1                    ..
        lda     #$07                            ; B41D A9 07                    ..
        sta     CurrentSubmapNumber             ; B41F 85 64                    .d
        pla                                     ; B421 68                       h
        lda     #$03                            ; B422 A9 03                    ..
        rts                                     ; B424 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B425:
        cmp     #$3A                            ; B425 C9 3A                    .:
        bne     MapTileSystem_Branch_B43A       ; B427 D0 11                    ..
        cpy     #$01                            ; B429 C0 01                    ..
        bne     MapTileSystem_Branch_B438       ; B42B D0 0B                    ..
        lda     $62AA                           ; B42D AD AA 62                 ..b
        and     #$08                            ; B430 29 08                    ).
        beq     MapTileSystem_Branch_B438       ; B432 F0 04                    ..
        lda     #$00                            ; B434 A9 00                    ..
        sta     CurrentSubmapNumber             ; B436 85 64                    .d
MapTileSystem_Branch_B438:
        pla                                     ; B438 68                       h
        rts                                     ; B439 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B43A:
        cmp     #$19                            ; B43A C9 19                    ..
        bne     MapTileSystem_Branch_B44D       ; B43C D0 0F                    ..
        cpy     #$00                            ; B43E C0 00                    ..
        bne     MapTileSystem_Branch_B438       ; B440 D0 F6                    ..
        jsr     MapTileSystem_Entry_B5E2        ; B442 20 E2 B5                  ..
        bcc     MapTileSystem_Branch_B438       ; B445 90 F1                    ..
        lda     #$01                            ; B447 A9 01                    ..
        sta     CurrentSubmapNumber             ; B449 85 64                    .d
        bcs     MapTileSystem_Branch_B438       ; B44B B0 EB                    ..
MapTileSystem_Branch_B44D:
        cmp     #$15                            ; B44D C9 15                    ..
        bne     MapTileSystem_Branch_B462       ; B44F D0 11                    ..
        lda     CurrentSubmapNumber             ; B451 A5 64                    .d
        cmp     #$03                            ; B453 C9 03                    ..
        bne     MapTileSystem_Branch_B438       ; B455 D0 E1                    ..
        jsr     MapTileSystem_Entry_B5E2        ; B457 20 E2 B5                  ..
        bcs     MapTileSystem_Branch_B438       ; B45A B0 DC                    ..
        lda     #$02                            ; B45C A9 02                    ..
        sta     CurrentSubmapNumber             ; B45E 85 64                    .d
        bcc     MapTileSystem_Branch_B438       ; B460 90 D6                    ..
MapTileSystem_Branch_B462:
        cmp     #$2D                            ; B462 C9 2D                    .-
        bne     MapTileSystem_Branch_B478       ; B464 D0 12                    ..
        cpy     #$03                            ; B466 C0 03                    ..
        bne     MapTileSystem_Branch_B478       ; B468 D0 0E                    ..
        brk                                     ; B46A 00                       .
        db   $1A,$EB,$01                     ; B46B 1A EB 01                 ...
; ----------------------------------------------------------------------------
        bne     MapTileSystem_Branch_B478       ; B46E D0 08                    ..
        lda     #$02                            ; B470 A9 02                    ..
        sta     CurrentSubmapNumber             ; B472 85 64                    .d
        pla                                     ; B474 68                       h
        lda     #$00                            ; B475 A9 00                    ..
        rts                                     ; B477 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B478:
        cmp     #$14                            ; B478 C9 14                    ..
        bne     MapTileSystem_Branch_B438       ; B47A D0 BC                    ..
        cpy     #$00                            ; B47C C0 00                    ..
        bne     MapTileSystem_Branch_B438       ; B47E D0 B8                    ..
        lda     $62AA                           ; B480 AD AA 62                 ..b
        lsr     a                               ; B483 4A                       J
        bcc     MapTileSystem_Branch_B438       ; B484 90 B2                    ..
        lda     #$02                            ; B486 A9 02                    ..
        sta     CurrentSubmapNumber             ; B488 85 64                    .d
        pla                                     ; B48A 68                       h
        lda     #$00                            ; B48B A9 00                    ..
        rts                                     ; B48D 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B48E:
        pha                                     ; B48E 48                       H
        lda     #$00                            ; B48F A9 00                    ..
        sta     $00                             ; B491 85 00                    ..
        lda     CurrentMapNumber                ; B493 A5 63                    .c
        cmp     $E4                             ; B495 C5 E4                    ..
        beq     MapTileSystem_Branch_B49F       ; B497 F0 06                    ..
        lda     $00                             ; B499 A5 00                    ..
        ora     #$04                            ; B49B 09 04                    ..
        sta     $00                             ; B49D 85 00                    ..
MapTileSystem_Branch_B49F:
        lda     CurrentSubmapNumber             ; B49F A5 64                    .d
        cmp     $E5                             ; B4A1 C5 E5                    ..
        beq     MapTileSystem_Branch_B4AB       ; B4A3 F0 06                    ..
        lda     $00                             ; B4A5 A5 00                    ..
        ora     #$02                            ; B4A7 09 02                    ..
        sta     $00                             ; B4A9 85 00                    ..
MapTileSystem_Branch_B4AB:
        lda     PlayerLocalX                    ; B4AB A5 44                    .D
        cmp     $E6                             ; B4AD C5 E6                    ..
        bne     MapTileSystem_Branch_B4B9       ; B4AF D0 08                    ..
        lda     PlayerLocalY                    ; B4B1 A5 45                    .E
        cmp     $E7                             ; B4B3 C5 E7                    ..
        bne     MapTileSystem_Branch_B4B9       ; B4B5 D0 02                    ..
        pla                                     ; B4B7 68                       h
        rts                                     ; B4B8 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B4B9:
        lda     $00                             ; B4B9 A5 00                    ..
        ora     #$01                            ; B4BB 09 01                    ..
        sta     $00                             ; B4BD 85 00                    ..
        pla                                     ; B4BF 68                       h
        rts                                     ; B4C0 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B4C1:
        and     #$60                            ; B4C1 29 60                    )`
        beq     MapTileSystem_Branch_B4D1       ; B4C3 F0 0C                    ..
        cmp     #$20                            ; B4C5 C9 20                    .
        beq     MapTileSystem_Branch_B4D9       ; B4C7 F0 10                    ..
        cmp     #$40                            ; B4C9 C9 40                    .@
        beq     MapTileSystem_Branch_B4D5       ; B4CB F0 08                    ..
        cmp     #$60                            ; B4CD C9 60                    .`
        beq     MapTileSystem_Branch_B4D5       ; B4CF F0 04                    ..
MapTileSystem_Branch_B4D1:
        lda     #$01                            ; B4D1 A9 01                    ..
        bne     MapTileSystem_Branch_B4DB       ; B4D3 D0 06                    ..
MapTileSystem_Branch_B4D5:
        lda     #$02                            ; B4D5 A9 02                    ..
        bne     MapTileSystem_Branch_B4DB       ; B4D7 D0 02                    ..
MapTileSystem_Branch_B4D9:
        lda     #$03                            ; B4D9 A9 03                    ..
MapTileSystem_Branch_B4DB:
        clc                                     ; B4DB 18                       .
        adc     $DE                             ; B4DC 65 DE                    e.
        sta     $DE                             ; B4DE 85 DE                    ..
        bcc     MapTileSystem_Branch_B4E4       ; B4E0 90 02                    ..
        inc     $DF                             ; B4E2 E6 DF                    ..
MapTileSystem_Branch_B4E4:
        rts                                     ; B4E4 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B4E5:
        ldy     $B67D                           ; B4E5 AC 7D B6                 .}.
        lda     $B67E                           ; B4E8 AD 7E B6                 .~.
        bne     MapTileSystem_Branch_B4F3       ; B4EB D0 06                    ..
MapTileSystem_Entry_B4ED:
        ldy     $B673                           ; B4ED AC 73 B6                 .s.
        lda     $B674                           ; B4F0 AD 74 B6                 .t.
MapTileSystem_Branch_B4F3:
        sty     $00                             ; B4F3 84 00                    ..
        sta     $01                             ; B4F5 85 01                    ..
        lda     $B671                           ; B4F7 AD 71 B6                 .q.
        sta     $DC                             ; B4FA 85 DC                    ..
        lda     $B672                           ; B4FC AD 72 B6                 .r.
        sta     $DD                             ; B4FF 85 DD                    ..
        lda     PlayerLocalY                    ; B501 A5 45                    .E
        sta     $04                             ; B503 85 04                    ..
        lda     #$00                            ; B505 A9 00                    ..
        sta     $05                             ; B507 85 05                    ..
        ldx     #$04                            ; B509 A2 04                    ..
        lda     $3F                             ; B50B A5 3F                    .?
        jsr     LowerFixedEngine_Entry_C827     ; B50D 20 27 C8                  '.
        lda     $04                             ; B510 A5 04                    ..
        clc                                     ; B512 18                       .
        adc     PlayerLocalX                    ; B513 65 44                    eD
        sta     $04                             ; B515 85 04                    ..
        bcc     MapTileSystem_Branch_B51B       ; B517 90 02                    ..
        inc     $05                             ; B519 E6 05                    ..
MapTileSystem_Branch_B51B:
        ldy     #$00                            ; B51B A0 00                    ..
        sty     $08                             ; B51D 84 08                    ..
MapTileSystem_Branch_B51F:
        ldy     #$00                            ; B51F A0 00                    ..
        lda     ($DC),y                         ; B521 B1 DC                    ..
        and     #$1F                            ; B523 29 1F                    ).
        tax                                     ; B525 AA                       .
        lda     $6F40,x                         ; B526 BD 40 6F                 .@o
        and     #$7F                            ; B529 29 7F                    ).
        sta     $09                             ; B52B 85 09                    ..
        ldy     #$00                            ; B52D A0 00                    ..
MapTileSystem_Branch_B52F:
        lda     ($00),y                         ; B52F B1 00                    ..
        beq     MapTileSystem_Branch_B53A       ; B531 F0 07                    ..
        iny                                     ; B533 C8                       .
        cmp     $09                             ; B534 C5 09                    ..
        bne     MapTileSystem_Branch_B52F       ; B536 D0 F7                    ..
        inc     $08                             ; B538 E6 08                    ..
MapTileSystem_Branch_B53A:
        inc     $DC                             ; B53A E6 DC                    ..
        bne     MapTileSystem_Branch_B540       ; B53C D0 02                    ..
        inc     $DD                             ; B53E E6 DD                    ..
MapTileSystem_Branch_B540:
        lda     $04                             ; B540 A5 04                    ..
        sec                                     ; B542 38                       8
        sbc     #$01                            ; B543 E9 01                    ..
        sta     $04                             ; B545 85 04                    ..
        bcs     MapTileSystem_Branch_B54B       ; B547 B0 02                    ..
        dec     $05                             ; B549 C6 05                    ..
MapTileSystem_Branch_B54B:
        lda     $04                             ; B54B A5 04                    ..
        ora     $05                             ; B54D 05 05                    ..
        bne     MapTileSystem_Branch_B51F       ; B54F D0 CE                    ..
        lda     $08                             ; B551 A5 08                    ..
        rts                                     ; B553 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B554:
        sta     $08                             ; B554 85 08                    ..
        lda     $B671                           ; B556 AD 71 B6                 .q.
        sta     $DC                             ; B559 85 DC                    ..
        lda     $B672                           ; B55B AD 72 B6                 .r.
        sta     $DD                             ; B55E 85 DD                    ..
        ldy     #$00                            ; B560 A0 00                    ..
        sty     $04                             ; B562 84 04                    ..
        sty     $05                             ; B564 84 05                    ..
MapTileSystem_Branch_B566:
        lda     ($DC),y                         ; B566 B1 DC                    ..
        and     #$1F                            ; B568 29 1F                    ).
        tax                                     ; B56A AA                       .
        lda     $6F40,x                         ; B56B BD 40 6F                 .@o
        and     #$7F                            ; B56E 29 7F                    ).
        sta     $09                             ; B570 85 09                    ..
        ldx     #$00                            ; B572 A2 00                    ..
MapTileSystem_Branch_B574:
        lda     $B675,x                         ; B574 BD 75 B6                 .u.
        beq     MapTileSystem_Branch_B582       ; B577 F0 09                    ..
        inx                                     ; B579 E8                       .
        cmp     $09                             ; B57A C5 09                    ..
        bne     MapTileSystem_Branch_B574       ; B57C D0 F6                    ..
        dec     $08                             ; B57E C6 08                    ..
        bmi     MapTileSystem_Branch_B591       ; B580 30 0F                    0.
MapTileSystem_Branch_B582:
        inc     $DC                             ; B582 E6 DC                    ..
        bne     MapTileSystem_Branch_B588       ; B584 D0 02                    ..
        inc     $DD                             ; B586 E6 DD                    ..
MapTileSystem_Branch_B588:
        inc     $04                             ; B588 E6 04                    ..
        bne     MapTileSystem_Branch_B58E       ; B58A D0 02                    ..
        inc     $05                             ; B58C E6 05                    ..
MapTileSystem_Branch_B58E:
        jmp     MapTileSystem_Branch_B566       ; B58E 4C 66 B5                 Lf.
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B591:
        ldx     #$04                            ; B591 A2 04                    ..
        lda     $3F                             ; B593 A5 3F                    .?
        jsr     LowerFixedEngine_Entry_C851     ; B595 20 51 C8                  Q.
        sta     PlayerLocalX                    ; B598 85 44                    .D
        lda     $04                             ; B59A A5 04                    ..
        sta     PlayerLocalY                    ; B59C 85 45                    .E
        rts                                     ; B59E 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B59F:
        lda     $09                             ; B59F A5 09                    ..
        and     #$7F                            ; B5A1 29 7F                    ).
        cmp     #$08                            ; B5A3 C9 08                    ..
        bne     MapTileSystem_Branch_B5AB       ; B5A5 D0 04                    ..
        lda     #$83                            ; B5A7 A9 83                    ..
        sec                                     ; B5A9 38                       8
        rts                                     ; B5AA 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B5AB:
        cmp     #$09                            ; B5AB C9 09                    ..
        bne     MapTileSystem_Branch_B5B3       ; B5AD D0 04                    ..
        lda     #$81                            ; B5AF A9 81                    ..
        sec                                     ; B5B1 38                       8
        rts                                     ; B5B2 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B5B3:
        cmp     #$25                            ; B5B3 C9 25                    .%
        beq     MapTileSystem_Branch_B5BB       ; B5B5 F0 04                    ..
        cmp     #$26                            ; B5B7 C9 26                    .&
        bne     MapTileSystem_Branch_B5BF       ; B5B9 D0 04                    ..
MapTileSystem_Branch_B5BB:
        lda     #$80                            ; B5BB A9 80                    ..
        sec                                     ; B5BD 38                       8
        rts                                     ; B5BE 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B5BF:
        cmp     #$0F                            ; B5BF C9 0F                    ..
        bne     MapTileSystem_Branch_B5D8       ; B5C1 D0 15                    ..
        lda     a:CurrentMapNumber              ; B5C3 AD 63 00                 .c.
        cmp     #$45                            ; B5C6 C9 45                    .E
        bne     MapTileSystem_Branch_B5DC       ; B5C8 D0 12                    ..
        lda     $62AA                           ; B5CA AD AA 62                 ..b
        eor     #$10                            ; B5CD 49 10                    I.
        sta     $62AA                           ; B5CF 8D AA 62                 ..b
        brk                                     ; B5D2 00                       .
        db   $01,$BF                         ; B5D3 01 BF                    ..
; ----------------------------------------------------------------------------
        jmp     MapTileSystem_Branch_B5DC       ; B5D5 4C DC B5                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B5D8:
        cmp     #$0A                            ; B5D8 C9 0A                    ..
        bne     MapTileSystem_Branch_B5E0       ; B5DA D0 04                    ..
MapTileSystem_Branch_B5DC:
        lda     #$82                            ; B5DC A9 82                    ..
        sec                                     ; B5DE 38                       8
        rts                                     ; B5DF 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B5E0:
        clc                                     ; B5E0 18                       .
        rts                                     ; B5E1 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B5E2:
        lda     SaveTimeOfDay                   ; B5E2 AD ED 62                 ..b
        cmp     #$78                            ; B5E5 C9 78                    .x
        rts                                     ; B5E7 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B5E8:
        pha                                     ; B5E8 48                       H
        jsr     MapTileSystem_Entry_B5F1        ; B5E9 20 F1 B5                  ..
        brk                                     ; B5EC 00                       .
        db   $1A,$EF                         ; B5ED 1A EF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B5EF 68                       h
        rts                                     ; B5F0 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B5F1:
        pha                                     ; B5F1 48                       H
        jsr     MapTileSystem_Entry_B037        ; B5F2 20 37 B0                  7.
        ldy     #$04                            ; B5F5 A0 04                    ..
        lda     ($DA),y                         ; B5F7 B1 DA                    ..
        and     #$7F                            ; B5F9 29 7F                    ).
        lsr     a                               ; B5FB 4A                       J
        lsr     a                               ; B5FC 4A                       J
        sta     $07BA                           ; B5FD 8D BA 07                 ...
        ldy     #$01                            ; B600 A0 01                    ..
        lda     ($DA),y                         ; B602 B1 DA                    ..
        and     #$80                            ; B604 29 80                    ).
        ora     $07BA                           ; B606 0D BA 07                 ...
        sta     $07BA                           ; B609 8D BA 07                 ...
        pla                                     ; B60C 68                       h
        rts                                     ; B60D 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B60E:
        lda     $41                             ; B60E A5 41                    .A
        bmi     MapTileSystem_Branch_B65B       ; B610 30 49                    0I
        lda     $0515                           ; B612 AD 15 05                 ...
        cmp     #$02                            ; B615 C9 02                    ..
        beq     MapTileSystem_Branch_B65B       ; B617 F0 42                    .B
        ldx     #$00                            ; B619 A2 00                    ..
MapTileSystem_Branch_B61B:
        lda     Bank08_MapCoordinateRecords,x   ; B61B BD 72 BE                 .r.
        cmp     #$FF                            ; B61E C9 FF                    ..
        beq     MapTileSystem_Branch_B65B       ; B620 F0 39                    .9
        cmp     CurrentTilesetCandidate         ; B622 C5 65                    .e
        bne     MapTileSystem_Branch_B63E       ; B624 D0 18                    ..
        lda     $BE73,x                         ; B626 BD 73 BE                 .s.
        cmp     PlayerWorldX                    ; B629 C5 42                    .B
        bne     MapTileSystem_Branch_B63E       ; B62B D0 11                    ..
        lda     PlayerWorldY                    ; B62D A5 43                    .C
        cmp     $BE74,x                         ; B62F DD 74 BE                 .t.
        bne     MapTileSystem_Branch_B63E       ; B632 D0 0A                    ..
        jsr     MapTileSystem_Entry_B644        ; B634 20 44 B6                  D.
        bcc     MapTileSystem_Branch_B63E       ; B637 90 05                    ..
        jsr     MapTileSystem_Entry_AEE3        ; B639 20 E3 AE                  ..
MapTileSystem_Branch_B63C:
        sec                                     ; B63C 38                       8
        rts                                     ; B63D 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B63E:
        inx                                     ; B63E E8                       .
        inx                                     ; B63F E8                       .
        inx                                     ; B640 E8                       .
        jmp     MapTileSystem_Branch_B61B       ; B641 4C 1B B6                 L..
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B644:
        lda     CurrentTilesetCandidate         ; B644 A5 65                    .e
        bne     MapTileSystem_Branch_B63C       ; B646 D0 F4                    ..
        lda     PlayerWorldX                    ; B648 A5 42                    .B
        cmp     #$A2                            ; B64A C9 A2                    ..
        bne     MapTileSystem_Branch_B65D       ; B64C D0 0F                    ..
        lda     PlayerWorldY                    ; B64E A5 43                    .C
        cmp     #$1A                            ; B650 C9 1A                    ..
        bne     MapTileSystem_Branch_B65D       ; B652 D0 09                    ..
        lda     $627E                           ; B654 AD 7E 62                 .~b
        and     #$40                            ; B657 29 40                    )@
        bne     MapTileSystem_Branch_B63C       ; B659 D0 E1                    ..
MapTileSystem_Branch_B65B:
        clc                                     ; B65B 18                       .
        rts                                     ; B65C 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B65D:
        lda     PlayerWorldX                    ; B65D A5 42                    .B
        cmp     #$3F                            ; B65F C9 3F                    .?
        bne     MapTileSystem_Branch_B63C       ; B661 D0 D9                    ..
        lda     PlayerWorldY                    ; B663 A5 43                    .C
        cmp     #$4A                            ; B665 C9 4A                    .J
        bne     MapTileSystem_Branch_B63C       ; B667 D0 D3                    ..
        brk                                     ; B669 00                       .
        db   $07,$EB,$10                     ; B66A 07 EB 10                 ...
; ----------------------------------------------------------------------------
        bne     MapTileSystem_Branch_B65B       ; B66D D0 EC                    ..
        beq     MapTileSystem_Branch_B63C       ; B66F F0 CB                    ..
        db   $00                             ; B671 00                       .
        db   $78                             ; B672 78                       x
        db   $75                             ; B673 75                       u
        db   $B6                             ; B674 B6                       .
        db   $08,$09,$26,$25,$0F,$0A,$06,$00 ; B675 08 09 26 25 0F 0A 06 00  ..&%....
        db   $7F                             ; B67D 7F                       .
        db   $B6,$04,$00                     ; B67E B6 04 00                 ...
        db   $00                             ; B681 00                       .
        db   $04                             ; B682 04                       .
        db   $10                             ; B683 10                       .
        db   $01                             ; B684 01                       .
        db   $00                             ; B685 00                       .
        db   $00                             ; B686 00                       .
        db   $0A                             ; B687 0A                       .
        db   $13                             ; B688 13                       .
        db   $81,$31,$04,$03,$0A,$31,$03,$0B ; B689 81 31 04 03 0A 31 03 0B  .1...1..
        db   $12,$81,$1B,$01,$12,$06,$1B,$00 ; B691 12 81 1B 01 12 06 1B 00  ........
        db   $10,$08,$81,$1B,$00,$10,$08,$1B ; B699 10 08 81 1B 00 10 08 1B  ........
        db   $01,$12,$06,$83,$3E,$00,$0C,$06 ; B6A1 01 12 06 83 3E 00 0C 06  ....>...
        db   $46,$00,$10,$1F,$00,$3E,$00,$0D ; B6A9 46 00 10 1F 00 3E 00 0D  F....>..
        db   $06,$46,$00,$10,$1F,$00,$FF     ; B6B1 06 46 00 10 1F 00 FF     .F.....
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B6B8:
        lda     #$00                            ; B6B8 A9 00                    ..
        sta     $6289                           ; B6BA 8D 89 62                 ..b
        brk                                     ; B6BD 00                       .
        db   $1F,$DB,$7F                     ; B6BE 1F DB 7F                 ...
; ----------------------------------------------------------------------------
        lda     #$FF                            ; B6C1 A9 FF                    ..
        sta     $628B                           ; B6C3 8D 8B 62                 ..b
        ldx     #$DC                            ; B6C6 A2 DC                    ..
        brk                                     ; B6C8 00                       .
        db   $81,$7F                         ; B6C9 81 7F                    ..
; ----------------------------------------------------------------------------
        lda     CurrentMapNumber                ; B6CB A5 63                    .c
        asl     a                               ; B6CD 0A                       .
        adc     $DC                             ; B6CE 65 DC                    e.
        sta     $DC                             ; B6D0 85 DC                    ..
        bcc     MapTileSystem_Branch_B6D6       ; B6D2 90 02                    ..
        inc     $DD                             ; B6D4 E6 DD                    ..
MapTileSystem_Branch_B6D6:
        ldy     #$00                            ; B6D6 A0 00                    ..
        ldx     #$DC                            ; B6D8 A2 DC                    ..
        lda     #$17                            ; B6DA A9 17                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; B6DC 20 EA C3                  ..
        sta     $DA                             ; B6DF 85 DA                    ..
        iny                                     ; B6E1 C8                       .
        lda     #$17                            ; B6E2 A9 17                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; B6E4 20 EA C3                  ..
        sta     $DB                             ; B6E7 85 DB                    ..
        lda     CurrentSubmapNumber             ; B6E9 A5 64                    .d
        asl     a                               ; B6EB 0A                       .
        adc     CurrentSubmapNumber             ; B6EC 65 64                    ed
        tay                                     ; B6EE A8                       .
        iny                                     ; B6EF C8                       .
        ldx     #$DA                            ; B6F0 A2 DA                    ..
        lda     #$17                            ; B6F2 A9 17                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; B6F4 20 EA C3                  ..
        sta     $49                             ; B6F7 85 49                    .I
        iny                                     ; B6F9 C8                       .
        lda     #$17                            ; B6FA A9 17                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; B6FC 20 EA C3                  ..
        sta     $4A                             ; B6FF 85 4A                    .J
        dey                                     ; B701 88                       .
        dey                                     ; B702 88                       .
        lda     #$17                            ; B703 A9 17                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; B705 20 EA C3                  ..
        sta     $0550                           ; B708 8D 50 05                 .P.
        and     #$3F                            ; B70B 29 3F                    )?
        rts                                     ; B70D 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B70E:
        pha                                     ; B70E 48                       H
        lda     $07BA                           ; B70F AD BA 07                 ...
        cmp     #$02                            ; B712 C9 02                    ..
        bne     MapTileSystem_Branch_B719       ; B714 D0 03                    ..
        clc                                     ; B716 18                       .
        bcc     MapTileSystem_Branch_B71A       ; B717 90 01                    ..
MapTileSystem_Branch_B719:
        sec                                     ; B719 38                       8
MapTileSystem_Branch_B71A:
        pla                                     ; B71A 68                       h
        rts                                     ; B71B 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B71C:
        bit     $0550                           ; B71C 2C 50 05                 ,P.
        bvc     MapTileSystem_Branch_B723       ; B71F 50 02                    P.
        clc                                     ; B721 18                       .
        rts                                     ; B722 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B723:
        sec                                     ; B723 38                       8
        rts                                     ; B724 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B725:
        jsr     LowerFixedEngine_Entry_C891     ; B725 20 91 C8                  ..
        sta     $DE                             ; B728 85 DE                    ..
        lda     #$00                            ; B72A A9 00                    ..
        sta     $DF                             ; B72C 85 DF                    ..
        ldx     #$DE                            ; B72E A2 DE                    ..
        lda     #$03                            ; B730 A9 03                    ..
        jsr     LowerFixedEngine_Entry_C851     ; B732 20 51 C8                  Q.
        ldx     #$04                            ; B735 A2 04                    ..
        clc                                     ; B737 18                       .
        adc     #$46                            ; B738 69 46                    iF
        brk                                     ; B73A 00                       .
        db   $04,$6F                         ; B73B 04 6F                    .o
; ----------------------------------------------------------------------------
        ldy     #$00                            ; B73D A0 00                    ..
MapTileSystem_Branch_B73F:
        lda     $B756,y                         ; B73F B9 56 B7                 .V.
        cmp     #$FF                            ; B742 C9 FF                    ..
        beq     MapTileSystem_Branch_B753       ; B744 F0 0D                    ..
        cmp     $DA                             ; B746 C5 DA                    ..
        beq     MapTileSystem_Branch_B74D       ; B748 F0 03                    ..
        iny                                     ; B74A C8                       .
        bne     MapTileSystem_Branch_B73F       ; B74B D0 F2                    ..
MapTileSystem_Branch_B74D:
        tya                                     ; B74D 98                       .
        clc                                     ; B74E 18                       .
        adc     #$1C                            ; B74F 69 1C                    i.
        tay                                     ; B751 A8                       .
        rts                                     ; B752 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B753:
        ldy     #$1C                            ; B753 A0 1C                    ..
        rts                                     ; B755 60                       `
; ----------------------------------------------------------------------------
        db   $2A,$36,$37,$0D,$35,$34,$FF     ; B756 2A 36 37 0D 35 34 FF     *67.54.
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B75D:
        lda     CurrentMapNumber                ; B75D A5 63                    .c
        cmp     #$3E                            ; B75F C9 3E                    .>
        bne     MapTileSystem_Branch_B799       ; B761 D0 36                    .6
        lda     PlayerLocalY                    ; B763 A5 45                    .E
        cmp     #$08                            ; B765 C9 08                    ..
        bcs     MapTileSystem_Branch_B799       ; B767 B0 30                    .0
        lda     #$00                            ; B769 A9 00                    ..
        brk                                     ; B76B 00                       .
        db   $63,$63,$40                     ; B76C 63 63 40                 cc@
; ----------------------------------------------------------------------------
        bcc     MapTileSystem_Branch_B79B       ; B76F 90 2A                    .*
        lda     #$37                            ; B771 A9 37                    .7
        brk                                     ; B773 00                       .
        db   $66,$63,$40                     ; B774 66 63 40                 fc@
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B777:
        bcc     MapTileSystem_Branch_B79B       ; B777 90 22                    ."
        lda     #$44                            ; B779 A9 44                    .D
        brk                                     ; B77B 00                       .
        db   $66,$63,$40                     ; B77C 66 63 40                 fc@
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B77F:
        bcc     MapTileSystem_Branch_B79B       ; B77F 90 1A                    ..
        lda     #$4B                            ; B781 A9 4B                    .K
        brk                                     ; B783 00                       .
        db   $66,$63,$40                     ; B784 66 63 40                 fc@
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B787:
        bcc     MapTileSystem_Branch_B79B       ; B787 90 12                    ..
        lda     #$21                            ; B789 A9 21                    .!
        brk                                     ; B78B 00                       .
        db   $66,$63,$40                     ; B78C 66 63 40                 fc@
; ----------------------------------------------------------------------------
MapTileSystem_Entry_B78F:
        bcs     MapTileSystem_Branch_B799       ; B78F B0 08                    ..
        lda     #$14                            ; B791 A9 14                    ..
        brk                                     ; B793 00                       .
        db   $66,$63,$40                     ; B794 66 63 40                 fc@
; ----------------------------------------------------------------------------
        bcc     MapTileSystem_Branch_B79B       ; B797 90 02                    ..
MapTileSystem_Branch_B799:
        sec                                     ; B799 38                       8
        rts                                     ; B79A 60                       `
; ----------------------------------------------------------------------------
MapTileSystem_Branch_B79B:
        brk                                     ; B79B 00                       .
        db   $05,$6F                         ; B79C 05 6F                    .o
; ----------------------------------------------------------------------------
        lda     #$43                            ; B79E A9 43                    .C
        brk                                     ; B7A0 00                       .
        db   $00,$6F                         ; B7A1 00 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; B7A3 00                       .
        db   $D4,$4B                         ; B7A4 D4 4B                    .K
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_D218     ; B7A6 20 18 D2                  ..
        jsr     LowerFixedEngine_Entry_D1F3     ; B7A9 20 F3 D1                  ..
        clc                                     ; B7AC 18                       .
        rts                                     ; B7AD 60                       `
; ----------------------------------------------------------------------------
        db   $05,$03,$04,$04,$0F,$02,$04,$02 ; B7AE 05 03 04 04 0F 02 04 02  ........
        db   $05,$08,$01,$02,$01,$03,$01,$02 ; B7B6 05 08 01 02 01 03 01 02  ........
        db   $04,$06,$03,$05,$03,$04,$03,$02 ; B7BE 04 06 03 05 03 04 03 02  ........
        db   $02,$03,$02,$05,$02,$01,$01,$01 ; B7C6 02 03 02 05 02 01 01 01  ........
        db   $01,$01,$02,$01,$01,$02,$01,$03 ; B7CE 01 01 02 01 01 02 01 03  ........
        db   $03,$02,$01,$01,$01,$0A,$02,$03 ; B7D6 03 02 01 01 01 0A 02 03  ........
        db   $03,$05,$02,$07,$05,$0A,$07,$03 ; B7DE 03 05 02 07 05 0A 07 03  ........
        db   $06,$01,$02,$03,$01,$11,$01,$06 ; B7E6 06 01 02 03 01 11 01 06  ........
        db   $06,$06,$05,$0B,$04,$08,$04,$02 ; B7EE 06 06 05 0B 04 08 04 02  ........
        db   $0A                             ; B7F6 0A                       .
Bank08_MapRoutingPointer:
        db   $F9                             ; B7F7 F9                       .
        db   $B7                             ; B7F8 B7                       .
Bank08_MapRoutingRecords:
        db   $00,$00,$0F,$1A,$00,$01,$00,$0F ; B7F9 00 00 0F 1A 00 01 00 0F  ........
        db   $1B,$00,$02,$00,$00,$1D,$01,$03 ; B801 1B 00 02 00 00 1D 01 03  ........
        db   $00,$09,$1D,$00,$04,$00,$17,$20 ; B809 00 09 1D 00 04 00 17 20  .......
        db   $00,$05,$01,$11,$1F,$00,$06,$00 ; B811 00 05 01 11 1F 00 06 00  ........
        db   $10,$1D,$00,$07,$00,$00,$13,$01 ; B819 10 1D 00 07 00 00 13 01  ........
        db   $08,$00,$10,$18,$00,$09,$00,$10 ; B821 08 00 10 18 00 09 00 10  ........
        db   $1B,$00,$0A,$00,$0D,$17,$04,$0B ; B829 1B 00 0A 00 0D 17 04 0B  ........
        db   $00,$06,$30,$04,$0C,$00,$1F,$0B ; B831 00 06 30 04 0C 00 1F 0B  ..0.....
        db   $07,$0D,$00,$00,$0D,$05,$0E,$00 ; B839 07 0D 00 00 0D 05 0E 00  ........
        db   $0A,$2C,$04,$0F,$00,$16,$00,$06 ; B841 0A 2C 04 0F 00 16 00 06  .,......
        db   $10,$00,$0D,$21,$04,$11,$00,$26 ; B849 10 00 0D 21 04 11 00 26  ...!...&
        db   $25,$04,$12,$00,$0D,$19,$04,$13 ; B851 25 04 12 00 0D 19 04 13  %.......
        db   $00,$0C,$19,$04,$14,$02,$0C,$18 ; B859 00 0C 19 04 14 02 0C 18  ........
        db   $04,$15,$00,$13,$1B,$04,$16,$00 ; B861 04 15 00 13 1B 04 16 00  ........
        db   $00,$0D,$05,$17,$00,$00,$10,$05 ; B869 00 0D 05 17 00 00 10 05  ........
        db   $18,$00,$0A,$1D,$05,$19,$00,$00 ; B871 18 00 0A 1D 05 19 00 00  ........
        db   $0A,$05,$1A,$20,$26,$16,$07,$1B ; B879 0A 05 1A 20 26 16 07 1B  ... &...
        db   $00,$22,$13,$07,$1C,$00,$0D,$10 ; B881 00 22 13 07 1C 00 0D 10  ."......
        db   $04,$1D,$00,$04,$0E,$8C,$1E,$00 ; B889 04 1D 00 04 0E 8C 1E 00  ........
        db   $05,$0A,$0C,$1F,$00,$07,$0D,$0C ; B891 05 0A 0C 1F 00 07 0D 0C  ........
        db   $20,$00,$06,$0C,$0C,$21,$00,$00 ; B899 20 00 06 0C 0C 21 00 00   ....!..
        db   $0A,$0D,$22,$00,$08,$0F,$0C,$23 ; B8A1 0A 0D 22 00 08 0F 0C 23  .."....#
        db   $00,$07,$12,$0C,$24,$00,$00,$05 ; B8A9 00 07 12 0C 24 00 00 05  ....$...
        db   $0D,$25,$01,$09,$10,$0C,$26,$60 ; B8B1 0D 25 01 09 10 0C 26 60  .%....&`
        db   $07,$15,$0C,$27,$60,$0D,$08,$0E ; B8B9 07 15 0C 27 60 0D 08 0E  ...'`...
        db   $28,$60,$04,$09,$0C,$29,$60,$08 ; B8C1 28 60 04 09 0C 29 60 08  (`...)`.
        db   $0A,$0C,$2A,$E0,$05,$11,$0C,$2B ; B8C9 0A 0C 2A E0 05 11 0C 2B  ..*....+
        db   $00,$02,$04,$0C,$2C,$00,$13,$00 ; B8D1 00 02 04 0C 2C 00 13 00  ....,...
        db   $0E,$2D,$00,$07,$24,$96,$2E,$00 ; B8D9 0E 2D 00 07 24 96 2E 00  .-..$...
        db   $12,$28,$94,$2F,$00,$19,$02,$97 ; B8E1 12 28 94 2F 00 19 02 97  .(./....
        db   $30,$01,$0E,$09,$97,$31,$80,$11 ; B8E9 30 01 0E 09 97 31 80 11  0....1..
        db   $24,$97,$32,$01,$23,$08,$97,$33 ; B8F1 24 97 32 01 23 08 97 33  $.2.#..3
        db   $00,$14,$02,$96,$34,$00,$15,$1A ; B8F9 00 14 02 96 34 00 15 1A  ....4...
        db   $97,$35,$A0,$31,$1B,$97,$36,$00 ; B901 97 35 A0 31 1B 97 36 00  .5.1..6.
        db   $0B,$03,$97,$37,$00,$07,$1B,$97 ; B909 0B 03 97 37 00 07 1B 97  ...7....
        db   $38,$00,$03,$13,$97,$39,$80,$03 ; B911 38 00 03 13 97 39 80 03  8....9..
        db   $03,$97,$3A,$80,$05,$0B,$97,$3B ; B919 03 97 3A 80 05 0B 97 3B  ..:....;
        db   $00,$1D,$1F,$97,$3C,$E0,$15,$25 ; B921 00 1D 1F 97 3C E0 15 25  ....<..%
        db   $14,$3D,$20,$13,$31,$10,$3E,$A0 ; B929 14 3D 20 13 31 10 3E A0  .= .1.>.
        db   $0C,$07,$9E,$3F,$03,$15,$1F,$10 ; B931 0C 07 9E 3F 03 15 1F 10  ...?....
        db   $40,$05,$10,$19,$10,$41,$03,$10 ; B939 40 05 10 19 10 41 03 10  @....A..
        db   $21,$10,$42,$04,$0E,$1D,$10,$43 ; B941 21 10 42 04 0E 1D 10 43  !.B....C
        db   $06,$31,$13,$07,$44,$60,$07,$0D ; B949 06 31 13 07 44 60 07 0D  .1..D`..
        db   $0C,$45,$60,$1D,$24,$18,$46,$20 ; B951 0C 45 60 1D 24 18 46 20  .E`.$.F
        db   $10,$1F,$1C,$47,$20,$05,$0C,$8C ; B959 10 1F 1C 47 20 05 0C 8C  ...G ...
        db   $48,$00,$0A,$13,$14,$FF         ; B961 48 00 0A 13 14 FF        H.....
Bank08_MapTransitionRecords:
        db   $46                             ; B967 46                       F
        db   $3E                             ; B968 3E                       >
        db   $00                             ; B969 00                       .
        db   $0C                             ; B96A 0C                       .
        db   $06                             ; B96B 06                       .
        db   $82,$48,$2C,$00,$0B,$09,$82,$FF ; B96C 82 48 2C 00 0B 09 82 FF  .H,.....
Bank08_MapSubmapPointer:
        db   $76                             ; B974 76                       v
        db   $B9                             ; B975 B9                       .
Bank08_MapSubmapData:
        db   $00,$61,$03,$64,$01,$E4,$00,$62 ; B976 00 61 03 64 01 E4 00 62  .a.d...b
        db   $01,$62,$02,$62,$03,$E0,$00,$63 ; B97E 01 62 02 62 03 E0 00 63  .b.b...c
        db   $00,$61,$00,$61,$01,$E1,$02,$E2 ; B986 00 61 00 61 01 E1 02 E2  .a.a....
        db   $00,$60,$02,$E0,$01,$FF,$01,$E1 ; B98E 00 60 02 E0 01 FF 01 E1  .`......
        db   $01,$62,$00,$E0,$00,$E1,$00,$FF ; B996 01 62 00 E0 00 E1 00 FF  .b......
        db   $02,$63,$01,$E3,$00,$62,$00,$E2 ; B99E 02 63 01 E3 00 62 00 E2  .c...b..
        db   $01,$61,$00,$E1,$01,$60,$01,$E0 ; B9A6 01 61 00 E1 01 60 01 E0  .a...`..
        db   $00,$FF,$03,$62,$00,$61,$00,$61 ; B9AE 00 FF 03 62 00 61 00 61  ...b.a.a
        db   $01,$62,$02,$62,$01,$63,$00,$61 ; B9B6 01 62 02 62 01 63 00 61  .b.b.c.a
        db   $02,$E2,$03,$60,$01,$60,$02,$E0 ; B9BE 02 E2 03 60 01 60 02 E0  ...`.`..
        db   $06,$60,$00,$60,$04,$60,$03,$E0 ; B9C6 06 60 00 60 04 60 03 E0  .`.`.`..
        db   $07,$E0,$05,$FF,$04,$6A,$00,$6B ; B9CE 07 E0 05 FF 04 6A 00 6B  .....j.k
        db   $00,$69,$01,$61,$02,$E8,$00,$00 ; B9D6 00 69 01 61 02 E8 00 00  .i.a....
        db   $00,$E0,$03,$6E,$02,$6D,$00,$65 ; B9DE 00 E0 03 6E 02 6D 00 65  ...n.m.e
        db   $00,$66,$01,$E5,$01,$69,$00,$E9 ; B9E6 00 66 01 E5 01 69 00 E9  .f...i..
        db   $02,$EA,$01,$62,$02,$E2,$04,$6C ; B9EE 02 EA 01 62 02 E2 04 6C  ...b...l
        db   $00,$E2,$03,$6E,$01,$EE,$00,$E0 ; B9F6 00 E2 03 6E 01 EE 00 E0  ...n....
        db   $04,$63,$00,$60,$02,$E3,$01,$60 ; B9FE 04 63 00 60 02 E3 01 60  .c.`...`
        db   $00,$E4,$00,$E0,$01,$E6,$00,$62 ; BA06 00 E4 00 E0 01 E6 00 62  .......b
        db   $01,$6D,$03,$6D,$05,$6D,$01,$6D ; BA0E 01 6D 03 6D 05 6D 01 6D  .m.m.m.m
        db   $06,$6D,$02,$ED,$04,$67,$01,$67 ; BA16 06 6D 02 ED 04 67 01 67  .m...g.g
        db   $00,$E2,$00,$FF,$05,$E1,$00,$E0 ; BA1E 00 E2 00 FF 05 E1 00 E0  ........
        db   $00,$FF,$06,$61,$00,$61,$01,$62 ; BA26 00 FF 06 61 00 61 01 62  ...a.a.b
        db   $00,$E3,$00,$60,$00,$E0,$01,$E0 ; BA2E 00 E3 00 60 00 E0 01 E0  ...`....
        db   $02,$E0,$03,$FF,$07,$E1,$00,$E0 ; BA36 02 E0 03 FF 07 E1 00 E0  ........
        db   $00,$FF,$08,$80,$63,$00,$64,$00 ; BA3E 00 FF 08 80 63 00 64 00  ....c.d.
        db   $63,$01,$E2,$00,$E1,$03,$61,$00 ; BA46 63 01 E2 00 E1 03 61 00  c.....a.
        db   $E1,$02,$E1,$01,$FF,$09,$E7,$00 ; BA4E E1 02 E1 01 FF 09 E7 00  ........
        db   $80,$63,$01,$E3,$00,$62,$01,$62 ; BA56 80 63 01 E3 00 62 01 62  .c...b.b
        db   $00,$E4,$00,$E3,$02,$80,$80,$E0 ; BA5E 00 E4 00 E3 02 80 80 E0  ........
        db   $00,$FF,$0A,$A0,$01,$2D,$FF,$0B ; BA66 00 FF 0A A0 01 2D FF 0B  .....-..
        db   $61,$01,$E1,$00,$60,$01,$E0,$00 ; BA6E 61 01 E1 00 60 01 E0 00  a...`...
        db   $FF,$0C,$80,$FF,$0D,$61,$02,$E2 ; BA76 FF 0C 80 FF 0D 61 02 E2  .....a..
        db   $00,$61,$01,$61,$00,$E0,$00,$E0 ; BA7E 00 61 01 61 00 E0 00 E0  .a.a....
        db   $01,$FF,$0E,$80,$FF,$0F,$61,$01 ; BA86 01 FF 0E 80 FF 0F 61 01  ......a.
        db   $61,$00,$61,$02,$80,$60,$01,$60 ; BA8E 61 00 61 02 80 60 01 60  a.a..`.`
        db   $00,$E0,$02,$FF,$10,$62,$00,$63 ; BA96 00 E0 02 FF 10 62 00 63  .....b.c
        db   $00,$E1,$00,$E0,$02,$E0,$00,$E0 ; BA9E 00 E1 00 E0 02 E0 00 E0  ........
        db   $01,$FF,$11,$61,$01,$62,$00,$E1 ; BAA6 01 FF 11 61 01 62 00 E1  ...a.b..
        db   $00,$60,$02,$E0,$00,$E0,$01,$65 ; BAAE 00 60 02 E0 00 E0 01 65  .`.....e
        db   $00,$E4,$00,$E3,$01,$E3,$00,$FF ; BAB6 00 E4 00 E3 01 E3 00 FF  ........
        db   $12,$62,$00,$61,$02,$61,$00,$61 ; BABE 12 62 00 61 02 61 00 61  .b.a.a.a
        db   $01,$E1,$03,$60,$02,$60,$03,$60 ; BAC6 01 E1 03 60 02 60 03 60  ...`.`.`
        db   $01,$E0,$04,$E0,$00,$FF,$13,$63 ; BACE 01 E0 04 E0 00 FF 13 63  .......c
        db   $00,$64,$00,$63,$01,$63,$02,$61 ; BAD6 00 64 00 63 01 63 02 61  .d.c.c.a
        db   $00,$E1,$01,$60,$04,$E0,$05,$E3 ; BADE 00 E1 01 60 04 E0 05 E3  ...`....
        db   $03,$60,$00,$60,$02,$60,$03,$E2 ; BAE6 03 60 00 60 02 60 03 E2  .`.`.`..
        db   $00,$E0,$01,$FF,$14,$E1,$00,$E0 ; BAEE 00 E0 01 FF 14 E1 00 E0  ........
        db   $00,$E1,$00,$FF,$15,$63,$00,$61 ; BAF6 00 E1 00 FF 15 63 00 61  .....c.a
        db   $01,$61,$00,$E1,$02,$60,$02,$60 ; BAFE 01 61 00 E1 02 60 02 60  .a...`.`
        db   $01,$E0,$03,$E0,$00,$E0,$00,$FF ; BB06 01 E0 03 E0 00 E0 00 FF  ........
        db   $16,$61,$00,$62,$00,$E1,$01,$60 ; BB0E 16 61 00 62 00 E1 01 60  .a.b...`
        db   $00,$E0,$02,$E0,$01,$FF,$17,$E1 ; BB16 00 E0 02 E0 01 FF 17 E1  ........
        db   $00,$E0,$00,$FF,$18,$80,$80,$FF ; BB1E 00 E0 00 FF 18 80 80 FF  ........
        db   $19,$E2,$00,$E2,$00,$E0,$00,$FF ; BB26 19 E2 00 E2 00 E0 00 FF  ........
        db   $1A,$61,$00,$E1,$01,$60,$00,$E0 ; BB2E 1A 61 00 E1 01 60 00 E0  .a...`..
        db   $01,$FF,$1B,$E1,$01,$62,$03,$60 ; BB36 01 FF 1B E1 01 62 03 60  .....b.`
        db   $00,$61,$03,$E1,$02,$62,$02,$63 ; BB3E 00 61 03 E1 02 62 02 63  .a...b.c
        db   $00,$62,$00,$E1,$00,$E2,$01,$80 ; BB46 00 62 00 E1 00 E2 01 80  .b......
        db   $FF,$1C,$E1,$01,$22,$00,$33,$E0 ; BB4E FF 1C E1 01 22 00 33 E0  ....".3.
        db   $00,$FF,$1D,$80,$FF,$1E,$A0,$00 ; BB56 00 FF 1D 80 FF 1E A0 00  ........
        db   $1F,$FF,$1F,$A0,$00,$1E,$FF,$20 ; BB5E 1F FF 1F A0 00 1E FF 20  .......
        db   $80,$FF,$21,$80,$FF,$22,$E1,$01 ; BB66 80 FF 21 80 FF 22 E1 01  ..!.."..
        db   $20,$01,$23,$E0,$00,$FF,$23,$20 ; BB6E 20 01 23 E0 00 FF 23 20   .#...#
        db   $00,$2B,$A1,$00,$22,$FF,$24,$80 ; BB76 00 2B A1 00 22 FF 24 80  .+..".$.
        db   $FF,$25,$A0,$03,$3B,$80,$FF,$26 ; BB7E FF 25 A0 03 3B 80 FF 26  .%..;..&
        db   $80,$FF,$27,$61,$01,$E1,$02,$62 ; BB86 80 FF 27 61 01 E1 02 62  ..'a...b
        db   $00,$60,$00,$E0,$01,$E1,$00,$FF ; BB8E 00 60 00 E0 01 E1 00 FF  .`......
        db   $28,$E1,$01,$62,$00,$E0,$00,$E1 ; BB96 28 E1 01 62 00 E0 00 E1  (..b....
        db   $00,$FF,$29,$80,$80,$FF,$2A,$80 ; BB9E 00 FF 29 80 80 FF 2A 80  ..)...*.
        db   $FF,$2B,$A0,$00,$23,$FF,$2C,$80 ; BBA6 FF 2B A0 00 23 FF 2C 80  .+..#.,.
        db   $FF,$2D,$61,$01,$A0,$00,$0A,$63 ; BBAE FF 2D 61 01 A0 00 0A 63  .-a....c
        db   $01,$E0,$00,$E1,$00,$64,$00,$E1 ; BBB6 01 E0 00 E1 00 64 00 E1  .....d..
        db   $00,$E3,$00,$67,$01,$67,$03,$E7 ; BBBE 00 E3 00 67 01 67 03 E7  ...g.g..
        db   $04,$67,$02,$E7,$00,$66,$01,$65 ; BBC6 04 67 02 E7 00 66 01 65  .g...f.e
        db   $00,$66,$00,$65,$01,$E5,$02,$80 ; BBCE 00 66 00 65 01 E5 02 80  .f.e....
        db   $80,$FF,$2E,$E1,$00,$E0,$00,$FF ; BBD6 80 FF 2E E1 00 E0 00 FF  ........
        db   $2F,$00,$E1,$02,$62,$00,$62,$01 ; BBDE 2F 00 E1 02 62 00 62 01  /...b.b.
        db   $E0,$01,$61,$00,$E1,$01,$FF,$30 ; BBE6 E0 01 61 00 E1 01 FF 30  ..a....0
        db   $E2,$01,$00,$E2,$00,$61,$01,$E0 ; BBEE E2 01 00 E2 00 61 01 E0  .....a..
        db   $00,$FF,$31,$61,$00,$80,$60,$00 ; BBF6 00 FF 31 61 00 80 60 00  ..1a..`.
        db   $63,$00,$E2,$00,$61,$02,$E3,$02 ; BBFE 63 00 E2 00 61 02 E3 02  c...a...
        db   $61,$01,$64,$00,$E2,$01,$E3,$01 ; BC06 61 01 64 00 E2 01 E3 01  a.d.....
        db   $FF,$32,$E1,$00,$60,$00,$80,$FF ; BC0E FF 32 E1 00 60 00 80 FF  .2..`...
        db   $33,$65,$00,$E3,$02,$80,$A1,$00 ; BC16 33 65 00 E3 02 80 A1 00  3e......
        db   $1C,$66,$00,$66,$01,$E0,$01,$80 ; BC1E 1C 66 00 66 01 E0 01 80  .f.f....
        db   $E0,$00,$63,$00,$E3,$01,$FF,$34 ; BC26 E0 00 63 00 E3 01 FF 34  ..c....4
        db   $80,$64,$00,$E3,$00,$E4,$01,$E1 ; BC2E 80 64 00 E3 00 E4 01 E1  .d......
        db   $01,$61,$00,$E2,$00,$FF,$35,$80 ; BC36 01 61 00 E2 00 FF 35 80  .a....5.
        db   $63,$00,$E3,$01,$64,$01,$E3,$02 ; BC3E 63 00 E3 01 64 01 E3 02  c...d...
        db   $61,$00,$61,$01,$E2,$01,$68,$00 ; BC46 61 00 61 01 E2 01 68 00  a.a...h.
        db   $E2,$00,$69,$00,$E6,$01,$67,$00 ; BC4E E2 00 69 00 E6 01 67 00  ..i...g.
        db   $E5,$01,$E6,$00,$E4,$00,$E5,$00 ; BC56 E5 01 E6 00 E4 00 E5 00  ........
        db   $FF,$36,$00,$61,$00,$61,$01,$61 ; BC5E FF 36 00 61 00 61 01 61  .6.a.a.a
        db   $02,$E1,$03,$60,$01,$60,$02,$60 ; BC66 02 E1 03 60 01 60 02 60  ...`.`.`
        db   $03,$E0,$04,$60,$01,$63,$01,$60 ; BC6E 03 E0 04 60 01 63 01 60  ...`.c.`
        db   $02,$60,$03,$E0,$04,$64,$01,$E2 ; BC76 02 60 03 E0 04 64 01 E2  .`...d..
        db   $01,$65,$00,$63,$00,$66,$00,$E5 ; BC7E 01 65 00 63 00 66 00 E5  .e.c.f..
        db   $01,$64,$00,$E4,$03,$E4,$02,$FF ; BC86 01 64 00 E4 03 E4 02 FF  .d......
        db   $37,$61,$04,$61,$03,$80,$62,$00 ; BC8E 37 61 04 61 03 80 62 00  7a.a..b.
        db   $62,$01,$62,$02,$60,$01,$60,$00 ; BC96 62 01 62 02 60 01 60 00  b.b.`.`.
        db   $E2,$03,$61,$00,$61,$01,$61,$02 ; BC9E E2 03 61 00 61 01 61 02  ..a.a.a.
        db   $E1,$05,$FF,$38,$61,$00,$80,$60 ; BCA6 E1 05 FF 38 61 00 80 60  ...8a..`
        db   $00,$E3,$02,$60,$00,$64,$01,$80 ; BCAE 00 E3 02 60 00 64 01 80  ...`.d..
        db   $00,$00,$E1,$01,$65,$00,$E2,$01 ; BCB6 00 00 E1 01 65 00 E2 01  ....e...
        db   $E4,$00,$FF,$39,$00,$80,$FF,$3A ; BCBE E4 00 FF 39 00 80 FF 3A  ...9...:
        db   $80,$00,$80,$FF,$3B,$61,$02,$61 ; BCC6 80 00 80 FF 3B 61 02 61  ....;a.a
        db   $03,$62,$00,$A0,$00,$25,$62,$01 ; BCCE 03 62 00 A0 00 25 62 01  .b...%b.
        db   $62,$02,$60,$00,$E0,$01,$60,$02 ; BCD6 62 02 60 00 E0 01 60 02  b.`...`.
        db   $61,$00,$E1,$01,$FF,$3C,$80,$FF ; BCDE 61 00 E1 01 FF 3C 80 FF  a....<..
        db   $3D,$6C,$00,$6A,$00,$6A,$01,$68 ; BCE6 3D 6C 00 6A 00 6A 01 68  =l.j.j.h
        db   $00,$68,$01,$67,$02,$64,$01,$E1 ; BCEE 00 68 01 67 02 64 01 E1  .h.g.d..
        db   $00,$60,$07,$E2,$01,$64,$00,$E1 ; BCF6 00 60 07 E2 01 64 00 E1  .`...d..
        db   $01,$80,$62,$00,$E0,$06,$67,$01 ; BCFE 01 80 62 00 E0 06 67 01  ..b...g.
        db   $E6,$00,$E5,$01,$69,$01,$65,$00 ; BD06 E6 00 E5 01 69 01 65 00  ....i.e.
        db   $E0,$05,$60,$03,$E0,$04,$6B,$00 ; BD0E E0 05 60 03 E0 04 6B 00  ..`...k.
        db   $E7,$00,$60,$01,$E0,$02,$E9,$00 ; BD16 E7 00 60 01 E0 02 E9 00  ..`.....
        db   $E0,$00,$EE,$00,$6D,$00,$EF,$01 ; BD1E E0 00 EE 00 6D 00 EF 01  ....m...
        db   $70,$01,$EE,$01,$20,$01,$3E,$EF ; BD26 70 01 EE 01 20 01 3E EF  p... .>.
        db   $00,$FF,$3E,$40,$46,$B0,$00,$3D ; BD2E 00 FF 3E 40 46 B0 00 3D  ..>@F..=
        db   $FF,$3F,$E5,$01,$65,$00,$62,$01 ; BD36 FF 3F E5 01 65 00 62 01  .?..e.b.
        db   $E2,$02,$63,$00,$61,$01,$E1,$02 ; BD3E E2 02 63 00 61 01 E1 02  ..c.a...
        db   $62,$00,$E4,$00,$E3,$01,$61,$00 ; BD46 62 00 E4 00 E3 01 61 00  b.....a.
        db   $E0,$00,$FF,$40,$E1,$01,$62,$00 ; BD4E E0 00 FF 40 E1 01 62 00  ...@..b.
        db   $60,$00,$E2,$02,$61,$00,$63,$02 ; BD56 60 00 E2 02 61 00 63 02  `...a.c.
        db   $E1,$02,$64,$00,$64,$01,$E2,$01 ; BD5E E1 02 64 00 64 01 E2 01  ..d.d...
        db   $63,$00,$E3,$01,$80,$FF,$41,$E1 ; BD66 63 00 E3 01 80 FF 41 E1  c.....A.
        db   $01,$62,$00,$60,$00,$E2,$02,$61 ; BD6E 01 62 00 60 00 E2 02 61  .b.`...a
        db   $00,$63,$00,$E1,$02,$62,$01,$64 ; BD76 00 63 00 E1 02 62 01 64  .c...b.d
        db   $00,$E5,$00,$E3,$01,$E3,$02,$FF ; BD7E 00 E5 00 E3 01 E3 02 FF  ........
        db   $42,$61,$00,$61,$02,$E1,$03,$60 ; BD86 42 61 00 61 02 E1 03 60  Ba.a...`
        db   $00,$62,$00,$60,$01,$E0,$02,$61 ; BD8E 00 62 00 60 01 E0 02 61  .b.`...a
        db   $01,$63,$01,$E3,$02,$64,$00,$62 ; BD96 01 63 01 E3 02 64 00 62  .c...d.b
        db   $01,$E2,$02,$E3,$00,$FF,$43,$61 ; BD9E 01 E2 02 E3 00 FF 43 61  ......Ca
        db   $00,$62,$00,$E1,$01,$60,$00,$E0 ; BDA6 00 62 00 E1 01 60 00 E0  .b...`..
        db   $02,$E0,$01,$E6,$01,$E6,$02,$E6 ; BDAE 02 E0 01 E6 01 E6 02 E6  ........
        db   $00,$65,$00,$63,$00,$E4,$00,$69 ; BDB6 00 65 00 63 00 E4 00 69  .e.c...i
        db   $00,$E8,$00,$E7,$01,$E7,$00,$80 ; BDBE 00 E8 00 E7 01 E7 00 80  ........
        db   $FF,$44,$E1,$01,$62,$01,$60,$00 ; BDC6 FF 44 E1 01 62 01 60 00  .D..b.`.
        db   $E2,$02,$63,$00,$61,$00,$E1,$02 ; BDCE E2 02 63 00 61 00 E1 02  ..c.a...
        db   $E2,$00,$FF,$45,$80,$64,$00,$E5 ; BDD6 E2 00 FF 45 80 64 00 E5  ...E.d..
        db   $02,$62,$02,$63,$00,$62,$00,$67 ; BDDE 02 62 02 63 00 62 00 67  .b.c.b.g
        db   $02,$E4,$04,$E2,$01,$61,$00,$64 ; BDE6 02 E4 04 E2 01 61 00 64  .....a.d
        db   $03,$64,$05,$64,$01,$62,$04,$64 ; BDEE 03 64 05 64 01 62 04 64  .d.d.b.d
        db   $02,$E6,$03,$65,$03,$00,$61,$01 ; BDF6 02 E6 03 65 03 00 61 01  ...e..a.
        db   $65,$00,$E7,$01,$61,$00,$66,$04 ; BDFE 65 00 E7 01 61 00 66 04  e...a.f.
        db   $66,$06,$64,$06,$66,$01,$62,$04 ; BE06 66 06 64 06 66 01 62 04  f.d.f.b.
        db   $E6,$02,$67,$04,$65,$04,$62,$03 ; BE0E E6 02 67 04 65 04 62 03  ..g.e.b.
        db   $61,$01,$E7,$00,$FF,$46,$80,$E2 ; BE16 61 01 E7 00 FF 46 80 E2  a....F..
        db   $00,$E1,$00,$63,$01,$E3,$00,$FF ; BE1E 00 E1 00 63 01 E3 00 FF  ...c....
        db   $47,$60,$01,$60,$00,$60,$03,$60 ; BE26 47 60 01 60 00 60 03 60  G`.`.`.`
        db   $02,$60,$05,$60,$04,$60,$07,$60 ; BE2E 02 60 05 60 04 60 07 60  .`.`.`.`
        db   $06,$60,$09,$60,$08,$61,$00,$60 ; BE36 06 60 09 60 08 61 00 60  .`.`.a.`
        db   $0C,$60,$0B,$60,$0E,$E0,$0D,$E0 ; BE3E 0C 60 0B 60 0E E0 0D E0  .`.`....
        db   $0A,$FF,$48,$80,$62,$00,$65,$00 ; BE46 0A FF 48 80 62 00 65 00  ..H.b.e.
        db   $E5,$01,$61,$00,$E3,$01,$66,$00 ; BE4E E5 01 61 00 E3 01 66 00  ..a...f.
        db   $62,$01,$E6,$03,$E8,$01,$61,$01 ; BE56 62 01 E6 03 E8 01 61 01  b.....a.
        db   $E1,$02,$63,$00,$68,$00,$68,$02 ; BE5E E1 02 63 00 68 00 68 02  ..c.h.h.
        db   $E3,$02,$80,$66,$01,$64,$00,$E6 ; BE66 E3 02 80 66 01 64 00 E6  ...f.d..
        db   $02,$80,$FF,$FF                 ; BE6E 02 80 FF FF              ....
Bank08_MapCoordinateRecords:
        db   $00                             ; BE72 00                       .
        db   $A2                             ; BE73 A2                       .
        db   $1A,$00,$E3,$8F,$00,$44,$80,$00 ; BE74 1A 00 E3 8F 00 44 80 00  .....D..
        db   $3F,$4A,$00,$91,$CD,$00,$91,$CF ; BE7C 3F 4A 00 91 CD 00 91 CF  ?J......
        db   $00,$E7,$1B,$03,$23,$19,$03,$24 ; BE84 00 E7 1B 03 23 19 03 24  ....#..$
        db   $19,$03,$23,$1C,$03,$24,$1C,$FF ; BE8C 19 03 23 1C 03 24 1C FF  ..#..$..
Bank08_MapDisplayRecords:
        db   $1C,$1B,$1C,$FF,$04,$04,$04,$00 ; BE94 1C 1B 1C FF 04 04 04 00  ........
        db   $2D,$4A,$2D,$FF,$03,$04,$03,$00 ; BE9C 2D 4A 2D FF 03 04 03 00  -J-.....
        db   $4E,$37,$45,$4E,$06,$04,$05,$06 ; BEA4 4E 37 45 4E 06 04 05 06  N7EN....
        db   $0F,$16,$10,$FF,$05,$03,$04,$00 ; BEAC 0F 16 10 FF 05 03 04 00  ........
        db   $4E,$47,$4F,$FF,$01,$04,$07,$00 ; BEB4 4E 47 4F FF 01 04 07 00  NGO.....
        db   $3C,$2B,$51,$3C,$05,$05,$05,$05 ; BEBC 3C 2B 51 3C 05 05 05 05  <+Q<....
        db   $5A,$55,$5F,$FF,$03,$0A,$03,$00 ; BEC4 5A 55 5F FF 03 0A 03 00  ZU_.....
        db   $49,$5A,$50,$FF,$03,$03,$05,$00 ; BECC 49 5A 50 FF 03 03 05 00  IZP.....
        db   $66,$58,$58,$52,$01,$09,$09,$07 ; BED4 66 58 58 52 01 09 09 07  fXXR....
        db   $5D,$64,$68,$FF,$04,$04,$03,$00 ; BEDC 5D 64 68 FF 04 04 03 00  ]dh.....
        db   $6E,$71,$86,$FF,$03,$07,$03,$00 ; BEE4 6E 71 86 FF 03 07 03 00  nq......
        db   $55,$78,$55,$FF,$03,$05,$03,$00 ; BEEC 55 78 55 FF 03 05 03 00  UxU.....
        db   $7C,$6A,$7C,$FF,$04,$03,$04,$00 ; BEF4 7C 6A 7C FF 04 03 04 00  |j|.....
        db   $7C,$70,$63,$63,$08,$05,$05,$05 ; BEFC 7C 70 63 63 08 05 05 05  |pcc....
        db   $5D,$5F,$68,$FF,$07,$04,$01,$00 ; BF04 5D 5F 68 FF 07 04 01 00  ]_h.....
        db   $7B,$7B,$87,$FF,$03,$03,$09,$00 ; BF0C 7B 7B 87 FF 03 03 09 00  {{......
        db   $5F,$75,$85,$FF,$05,$03,$05,$00 ; BF14 5F 75 85 FF 05 03 05 00  _u......
        db   $7A,$77,$79,$FF,$02,$03,$04,$00 ; BF1C 7A 77 79 FF 02 03 04 00  zwy.....
        db   $93,$8B,$FF,$FF,$02,$04,$00,$00 ; BF24 93 8B FF FF 02 04 00 00  ........
        db   $A1,$A0,$FF,$FF,$02,$04,$00,$00 ; BF2C A1 A0 FF FF 02 04 00 00  ........
        db   $00,$30,$97,$05,$C8,$14,$02,$C8 ; BF34 00 30 97 05 C8 14 02 C8  .0......
        db   $5C,$A8,$75,$FF,$64,$64,$64,$00 ; BF3C 5C A8 75 FF 64 64 64 00  \.u.ddd.
        db   $A4,$A4,$FF,$FF,$80,$80,$00,$00 ; BF44 A4 A4 FF FF 80 80 00 00  ........
        db   $89,$97,$FF,$FF,$0A,$C8,$00,$00 ; BF4C 89 97 FF FF 0A C8 00 00  ........
        db   $90,$90,$90,$FF,$05,$05,$05,$00 ; BF54 90 90 90 FF 05 05 05 00  ........
        db   $92,$8A,$FF,$FF,$14,$01,$00,$00 ; BF5C 92 8A FF FF 14 01 00 00  ........
Bank08_MapPadding:
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF64 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF6C FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF74 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF7C FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF84 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF8C FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF94 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF9C FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA4 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFAC FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB4 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFBC FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC4 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCC FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF                 ; BFD4 FF FF FF FF              ....
Bank08_CompatibilityFooter:
        db   $78,$EE,$DF,$BF,$4C,$8E,$FF,$80 ; BFD8 78 EE DF BF 4C 8E FF 80  x...L...
        db   $20,$44,$52,$41,$47,$4F,$4E,$20 ; BFE0 20 44 52 41 47 4F 4E 20   DRAGON
        db   $51,$55,$45,$53,$54,$20,$49,$56 ; BFE8 51 55 45 53 54 20 49 56  QUEST IV
        db   $00,$00,$00,$00,$48,$04,$01,$0E ; BFF0 00 00 00 00 48 04 01 0E  ....H...
        db   $07,$9E,$D8,$BF,$D8,$BF,$D8,$BF ; BFF8 07 9E D8 BF D8 BF D8 BF  ........
Bank08_End:
