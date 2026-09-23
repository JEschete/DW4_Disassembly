; PRG bank $1D: ROM file $074010-$07800F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank1D_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank1D_EventServiceDirectory:
        db   $1E,$8B,$ED,$8D,$2A,$80,$97,$96 ; 8000 1E 8B ED 8D 2A 80 97 96  ....*...
        db   $9F,$98,$F4,$BB,$AF,$A1,$3E,$B7 ; 8008 9F 98 F4 BB AF A1 3E B7  ......>.
        db   $04,$B9,$7B,$A9,$5A,$A2,$E9,$B3 ; 8010 04 B9 7B A9 5A A2 E9 B3  ..{.Z...
        db   $52,$8F,$8E,$91,$2A,$92,$23,$94 ; 8018 52 8F 8E 91 2A 92 23 94  R...*.#.
        db   $84,$94,$52,$AA,$71,$BD,$69,$BD ; 8020 84 94 52 AA 71 BD 69 BD  ..R.q.i.
        db   $6D,$BD                         ; 8028 6D BD                    m.
; ----------------------------------------------------------------------------
Bank1D_MapEventServices:
        ldx     #$00                            ; 802A A2 00                    ..
        stx     $0573                           ; 802C 8E 73 05                 .s.
        ldx     #$FF                            ; 802F A2 FF                    ..
        ldy     #$00                            ; 8031 A0 00                    ..
MapEventSystem_Branch_8033:
        sty     $00                             ; 8033 84 00                    ..
        lda     Bank1D_MapGraphicsConfiguration,y; 8035 B9 96 80                ...
        bpl     MapEventSystem_Branch_8041      ; 8038 10 07                    ..
        cmp     #$FF                            ; 803A C9 FF                    ..
        beq     MapEventSystem_Branch_8048      ; 803C F0 0A                    ..
        inx                                     ; 803E E8                       .
        and     #$7F                            ; 803F 29 7F                    ).
MapEventSystem_Branch_8041:
        cmp     $28                             ; 8041 C5 28                    .(
        beq     MapEventSystem_Branch_8049      ; 8043 F0 04                    ..
        iny                                     ; 8045 C8                       .
        bne     MapEventSystem_Branch_8033      ; 8046 D0 EB                    ..
MapEventSystem_Branch_8048:
        rts                                     ; 8048 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8049:
        asl     $00                             ; 8049 06 00                    ..
        asl     $00                             ; 804B 06 00                    ..
        asl     $00                             ; 804D 06 00                    ..
        lda     $809E,x                         ; 804F BD 9E 80                 ...
        sta     $0573                           ; 8052 8D 73 05                 .s.
        lda     $80A2,x                         ; 8055 BD A2 80                 ...
        sta     $058D                           ; 8058 8D 8D 05                 ...
        txa                                     ; 805B 8A                       .
        asl     a                               ; 805C 0A                       .
        asl     a                               ; 805D 0A                       .
        asl     a                               ; 805E 0A                       .
        tax                                     ; 805F AA                       .
        asl     a                               ; 8060 0A                       .
        pha                                     ; 8061 48                       H
        ldy     #$00                            ; 8062 A0 00                    ..
MapEventSystem_Branch_8064:
        txa                                     ; 8064 8A                       .
        pha                                     ; 8065 48                       H
        ldx     $00                             ; 8066 A6 00                    ..
        lda     $80A6,x                         ; 8068 BD A6 80                 ...
        asl     a                               ; 806B 0A                       .
        asl     a                               ; 806C 0A                       .
        tax                                     ; 806D AA                       .
        lda     $7600,x                         ; 806E BD 00 76                 ..v
        sta     $0574,y                         ; 8071 99 74 05                 .t.
        pla                                     ; 8074 68                       h
        tax                                     ; 8075 AA                       .
        inc     $00                             ; 8076 E6 00                    ..
        inx                                     ; 8078 E8                       .
        iny                                     ; 8079 C8                       .
        cpy     #$08                            ; 807A C0 08                    ..
        bne     MapEventSystem_Branch_8064      ; 807C D0 E6                    ..
        ldy     #$00                            ; 807E A0 00                    ..
        pla                                     ; 8080 68                       h
        tax                                     ; 8081 AA                       .
MapEventSystem_Branch_8082:
        lda     Bank1D_GraphicsPointers,x       ; 8082 BD DE 80                 ...
        sta     $0584,y                         ; 8085 99 84 05                 ...
        inx                                     ; 8088 E8                       .
        lda     Bank1D_GraphicsPointers,x       ; 8089 BD DE 80                 ...
        sta     $057C,y                         ; 808C 99 7C 05                 .|.
        inx                                     ; 808F E8                       .
        iny                                     ; 8090 C8                       .
        cpy     #$08                            ; 8091 C0 08                    ..
        bne     MapEventSystem_Branch_8082      ; 8093 D0 ED                    ..
        rts                                     ; 8095 60                       `
; ----------------------------------------------------------------------------
Bank1D_MapGraphicsConfiguration:
        db   $AD,$AC,$8E,$81,$06,$08,$10,$FF ; 8096 AD AC 8E 81 06 08 10 FF  ........
        db   $FF,$1B,$08,$AA                 ; 809E FF 1B 08 AA              ....
        db   $10,$10,$70,$10                 ; 80A2 10 10 70 10              ..p.
        db   $0E,$0F,$10,$11,$12,$13,$14,$1F ; 80A6 0E 0F 10 11 12 13 14 1F  ........
        db   $00,$00,$00,$0D,$0E,$00,$19,$1B ; 80AE 00 00 00 0D 0E 00 19 1B  ........
        db   $00,$00,$00,$00,$14,$00,$00,$00 ; 80B6 00 00 00 00 14 00 00 00  ........
        db   $0B,$00,$0B,$00,$0B,$00,$0B,$00 ; 80BE 0B 00 0B 00 0B 00 0B 00  ........
        db   $10,$00,$10,$00,$10,$00,$10,$00 ; 80C6 10 00 10 00 10 00 10 00  ........
        db   $14,$00,$14,$00,$14,$00,$14,$00 ; 80CE 14 00 14 00 14 00 14 00  ........
        db   $1C,$00,$1C,$00,$1C,$00,$1C,$00 ; 80D6 1C 00 1C 00 1C 00 1C 00  ........
Bank1D_GraphicsPointers:
        db   $1E,$81,$9E,$81,$1E,$82,$9E,$82 ; 80DE 1E 81 9E 81 1E 82 9E 82  ........
        db   $1E,$83,$9E,$83,$1E,$84,$9E,$84 ; 80E6 1E 83 9E 83 1E 84 9E 84  ........
        db   $00,$00,$00,$00,$00,$00,$1E,$85 ; 80EE 00 00 00 00 00 00 1E 85  ........
        db   $9E,$85,$00,$00,$1E,$86,$9E,$86 ; 80F6 9E 85 00 00 1E 86 9E 86  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 80FE 00 00 00 00 00 00 00 00  ........
        db   $1E,$87,$00,$00,$00,$00,$00,$00 ; 8106 1E 87 00 00 00 00 00 00  ........
        db   $1E,$89,$00,$00,$9E,$89,$00,$00 ; 810E 1E 89 00 00 9E 89 00 00  ........
        db   $1E,$8A,$00,$00,$9E,$8A,$00,$00 ; 8116 1E 8A 00 00 9E 8A 00 00  ........
Bank1D_MapGraphics:
        db   $DE,$FE,$FE,$DE,$EE,$F2,$B0,$F0 ; 811E DE FE FE DE EE F2 B0 F0  ........
        db   $D9,$F1,$F1,$C1,$F1,$FD,$B7,$C8 ; 8126 D9 F1 F1 C1 F1 FD B7 C8  ........
        db   $7F,$7E,$7B,$7F,$77,$4D,$0F,$0F ; 812E 7F 7E 7B 7F 77 4D 0F 0F  .~{.wM..
        db   $9F,$8E,$8B,$87,$8F,$BD,$EF,$13 ; 8136 9F 8E 8B 87 8F BD EF 13  ........
        db   $F8,$F7,$B7,$8F,$EF,$DF,$80,$FF ; 813E F8 F7 B7 8F EF DF 80 FF  ........
        db   $87,$88,$C8,$F0,$F0,$E0,$BF,$FF ; 8146 87 88 C8 F0 F0 E0 BF FF  ........
        db   $1F,$EE,$ED,$F1,$F5,$0B,$F3,$0F ; 814E 1F EE ED F1 F5 0B F3 0F  ........
        db   $E1,$10,$13,$0F,$0D,$F7,$0F,$FF ; 8156 E1 10 13 0F 0D F7 0F FF  ........
        db   $DE,$FE,$FE,$DE,$EE,$F2,$90,$B0 ; 815E DE FE FE DE EE F2 90 B0  ........
        db   $D9,$F1,$F1,$C1,$F1,$FD,$F7,$C8 ; 8166 D9 F1 F1 C1 F1 FD F7 C8  ........
        db   $7F,$7E,$7B,$7F,$77,$4D,$09,$0D ; 816E 7F 7E 7B 7F 77 4D 09 0D  .~{.wM..
        db   $9F,$8E,$8B,$87,$8F,$BD,$EF,$13 ; 8176 9F 8E 8B 87 8F BD EF 13  ........
        db   $F8,$F7,$F7,$EF,$EF,$D0,$8F,$F0 ; 817E F8 F7 F7 EF EF D0 8F F0  ........
        db   $87,$C8,$E8,$F0,$F0,$EF,$B0,$FF ; 8186 87 C8 E8 F0 F0 EF B0 FF  ........
        db   $1F,$EE,$EF,$F7,$F5,$FB,$03,$F7 ; 818E 1F EE EF F7 F5 FB 03 F7  ........
        db   $E1,$12,$17,$0F,$0D,$07,$FF,$F7 ; 8196 E1 12 17 0F 0D 07 FF F7  ........
        db   $D8,$F7,$EF,$C7,$E9,$EE,$B6,$F0 ; 819E D8 F7 EF C7 E9 EE B6 F0  ........
        db   $DF,$F8,$F0,$D8,$F6,$F1,$B9,$C7 ; 81A6 DF F8 F0 D8 F6 F1 B9 C7  ........
        db   $1F,$EE,$F3,$E7,$97,$77,$6D,$0F ; 81AE 1F EE F3 E7 97 77 6D 0F  .....wm.
        db   $FF,$1E,$0B,$1F,$6F,$8F,$9D,$E3 ; 81B6 FF 1E 0B 1F 6F 8F 9D E3  ....o...
        db   $D8,$8F,$9F,$90,$FB,$F5,$B0,$FF ; 81BE D8 8F 9F 90 FB F5 B0 FF  ........
        db   $E0,$F0,$E0,$FF,$E0,$E0,$BE,$FF ; 81C6 E0 F0 E0 FF E0 E0 BE FF  ........
        db   $1B,$F0,$F9,$09,$DF,$AF,$7D,$0F ; 81CE 1B F0 F9 09 DF AF 7D 0F  ......}.
        db   $07,$0E,$07,$FF,$07,$07,$0D,$FF ; 81D6 07 0E 07 FF 07 07 0D FF  ........
        db   $D8,$F7,$EF,$C7,$E9,$EE,$86,$B0 ; 81DE D8 F7 EF C7 E9 EE 86 B0  ........
        db   $DF,$F8,$F0,$D8,$F6,$F1,$E9,$C7 ; 81E6 DF F8 F0 D8 F6 F1 E9 C7  ........
        db   $1F,$EE,$F3,$E7,$97,$77,$61,$0D ; 81EE 1F EE F3 E7 97 77 61 0D  .....wa.
        db   $FF,$1E,$0B,$1F,$6F,$8F,$97,$E3 ; 81F6 FF 1E 0B 1F 6F 8F 97 E3  ....o...
        db   $98,$CF,$FF,$F0,$FB,$F5,$BE,$F0 ; 81FE 98 CF FF F0 FB F5 BE F0  ........
        db   $E0,$F0,$E0,$FF,$E0,$E0,$B0,$FF ; 8206 E0 F0 E0 FF E0 E0 B0 FF  ........
        db   $19,$F2,$FF,$0B,$DF,$AF,$0D,$FF ; 820E 19 F2 FF 0B DF AF 0D FF  ........
        db   $07,$0E,$07,$FB,$07,$07,$7D,$FF ; 8216 07 0E 07 FB 07 07 7D FF  ......}.
        db   $D8,$F0,$F0,$D0,$E0,$E0,$F0,$F0 ; 821E D8 F0 F0 D0 E0 E0 F0 F0  ........
        db   $D8,$F0,$F3,$DC,$E2,$E5,$ED,$C7 ; 8226 D8 F0 F3 DC E2 E5 ED C7  ........
        db   $1F,$0E,$0B,$0F,$07,$05,$0F,$0F ; 822E 1F 0E 0B 0F 07 05 0F 0F  ........
        db   $1F,$0E,$CB,$3F,$47,$A5,$B7,$E3 ; 8236 1F 0E CB 3F 47 A5 B7 E3  ...?G...
        db   $F8,$9A,$9B,$F0,$FF,$FF,$BF,$F0 ; 823E F8 9A 9B F0 FF FF BF F0  ........
        db   $81,$E4,$E4,$FF,$E0,$E0,$B0,$FF ; 8246 81 E4 E4 FF E0 E0 B0 FF  ........
        db   $1F,$59,$D9,$0F,$FF,$FD,$8F,$F7 ; 824E 1F 59 D9 0F FF FD 8F F7  .Y......
        db   $81,$27,$27,$FF,$07,$05,$FF,$F7 ; 8256 81 27 27 FF 07 05 FF F7  .''.....
        db   $D8,$F0,$F0,$D0,$80,$80,$F0,$F0 ; 825E D8 F0 F0 D0 80 80 F0 F0  ........
        db   $D8,$F0,$F3,$DC,$E2,$E5,$8D,$87 ; 8266 D8 F0 F3 DC E2 E5 8D 87  ........
        db   $1F,$0E,$0B,$0F,$01,$01,$0F,$0F ; 826E 1F 0E 0B 0F 01 01 0F 0F  ........
        db   $1F,$0E,$CB,$3F,$47,$A7,$B1,$E1 ; 8276 1F 0E CB 3F 47 A7 B1 E1  ...?G...
        db   $F8,$FA,$FB,$F0,$FF,$FF,$B1,$FF ; 827E F8 FA FB F0 FF FF B1 FF  ........
        db   $81,$C4,$F4,$FF,$E0,$E0,$BF,$FF ; 8286 81 C4 F4 FF E0 E0 BF FF  ........
        db   $1F,$5F,$DF,$0F,$FF,$FD,$FF,$0F ; 828E 1F 5F DF 0F FF FD FF 0F  ._......
        db   $81,$23,$2F,$FF,$07,$05,$0F,$FF ; 8296 81 23 2F FF 07 05 0F FF  .#/.....
        db   $DE,$FE,$F8,$D0,$F0,$F0,$F0,$F0 ; 829E DE FE F8 D0 F0 F0 F0 F0  ........
        db   $D9,$F1,$F7,$D8,$F3,$F5,$ED,$C7 ; 82A6 D9 F1 F7 D8 F3 F5 ED C7  ........
        db   $7F,$7E,$1B,$0F,$0F,$0D,$0F,$0F ; 82AE 7F 7E 1B 0F 0F 0D 0F 0F  .~......
        db   $9F,$8E,$EB,$1F,$CF,$AD,$B7,$E3 ; 82B6 9F 8E EB 1F CF AD B7 E3  ........
        db   $F0,$96,$97,$F7,$F7,$F8,$BF,$F0 ; 82BE F0 96 97 F7 F7 F8 BF F0  ........
        db   $89,$E8,$E8,$E8,$E8,$E7,$B0,$FF ; 82C6 89 E8 E8 E8 E8 E7 B0 FF  ........
        db   $0F,$69,$E9,$EF,$1F,$FD,$8F,$F7 ; 82CE 0F 69 E9 EF 1F FD 8F F7  .i......
        db   $91,$17,$17,$17,$E7,$05,$FF,$F7 ; 82D6 91 17 17 17 E7 05 FF F7  ........
        db   $DE,$FE,$F8,$D0,$90,$90,$F0,$F0 ; 82DE DE FE F8 D0 90 90 F0 F0  ........
        db   $D9,$F1,$F7,$D8,$F3,$F5,$8D,$87 ; 82E6 D9 F1 F7 D8 F3 F5 8D 87  ........
        db   $7F,$7E,$1B,$0F,$09,$09,$0F,$0F ; 82EE 7F 7E 1B 0F 09 09 0F 0F  .~......
        db   $9F,$8E,$EB,$1F,$CF,$AF,$B1,$E1 ; 82F6 9F 8E EB 1F CF AF B1 E1  ........
        db   $F0,$F6,$F7,$F7,$F8,$FF,$B1,$FF ; 82FE F0 F6 F7 F7 F8 FF B1 FF  ........
        db   $89,$C8,$E8,$E8,$E7,$E0,$BF,$FF ; 8306 89 C8 E8 E8 E7 E0 BF FF  ........
        db   $0F,$6F,$EF,$EF,$EF,$1D,$FF,$0F ; 830E 0F 6F EF EF EF 1D FF 0F  .o......
        db   $91,$13,$17,$17,$17,$E5,$0F,$FF ; 8316 91 13 17 17 17 E5 0F FF  ........
        db   $D8,$F0,$E0,$FE,$E1,$F0,$B0,$F1 ; 831E D8 F0 E0 FE E1 F0 B0 F1  ........
        db   $D8,$F0,$E0,$E0,$E4,$FA,$BB,$FE ; 8326 D8 F0 E0 E0 E4 FA BB FE  ........
        db   $1F,$0E,$07,$03,$C7,$3F,$0F,$1F ; 832E 1F 0E 07 03 C7 3F 0F 1F  .....?..
        db   $1F,$0E,$07,$03,$07,$07,$0F,$FF ; 8336 1F 0E 07 03 07 07 0F FF  ........
        db   $DA,$FD,$FB,$DA,$F6,$FF,$BF,$F0 ; 833E DA FD FB DA F6 FF BF F0  ........
        db   $DD,$FA,$F4,$D4,$F8,$F0,$B0,$EF ; 8346 DD FA F4 D4 F8 F0 B0 EF  ........
        db   $CF,$E6,$67,$23,$13,$33,$F9,$FD ; 834E CF E6 67 23 13 33 F9 FD  ..g#.3..
        db   $1F,$0E,$0F,$C7,$C7,$07,$03,$01 ; 8356 1F 0E 0F C7 C7 07 03 01  ........
        db   $D8,$F0,$E0,$FE,$E1,$F0,$B0,$F0 ; 835E D8 F0 E0 FE E1 F0 B0 F0  ........
        db   $D8,$F0,$E0,$E0,$E4,$FA,$BB,$FF ; 8366 D8 F0 E0 E0 E4 FA BB FF  ........
        db   $1F,$0E,$07,$03,$C7,$3F,$0F,$1F ; 836E 1F 0E 07 03 C7 3F 0F 1F  .....?..
        db   $1F,$0E,$07,$03,$07,$07,$0F,$FF ; 8376 1F 0E 07 03 07 07 0F FF  ........
        db   $D8,$FF,$FB,$D9,$F6,$FF,$BF,$FF ; 837E D8 FF FB D9 F6 FF BF FF  ........
        db   $DF,$F8,$F4,$D4,$F8,$F0,$B0,$E0 ; 8386 DF F8 F4 D4 F8 F0 B0 E0  ........
        db   $0F,$C6,$E7,$E3,$73,$F3,$F9,$0D ; 838E 0F C6 E7 E3 73 F3 F9 0D  ....s...
        db   $1F,$0E,$0F,$07,$07,$07,$03,$F1 ; 8396 1F 0E 0F 07 07 07 03 F1  ........
        db   $D8,$F7,$EF,$E7,$E0,$F0,$30,$30 ; 839E D8 F7 EF E7 E0 F0 30 30  ......00
        db   $DF,$F8,$F0,$F8,$E7,$FA,$BB,$FE ; 83A6 DF F8 F0 F8 E7 FA BB FE  ........
        db   $1F,$EE,$EB,$F7,$F7,$77,$35,$0F ; 83AE 1F EE EB F7 F7 77 35 0F  .....w5.
        db   $FF,$1E,$1B,$0F,$0F,$8F,$4D,$3F ; 83B6 FF 1E 1B 0F 0F 8F 4D 3F  ......M?
        db   $98,$CC,$FD,$F0,$FC,$FE,$BF,$F0 ; 83BE 98 CC FD F0 FC FE BF F0  ........
        db   $FD,$F0,$E0,$FC,$E1,$E0,$B0,$FF ; 83C6 FD F0 E0 FC E1 E0 B0 FF  ........
        db   $0F,$1E,$1F,$1F,$0F,$3F,$8D,$FF ; 83CE 0F 1E 1F 1F 0F 3F 8D FF  .....?..
        db   $87,$42,$43,$47,$8F,$0F,$7D,$FF ; 83D6 87 42 43 47 8F 0F 7D FF  .BCG..}.
        db   $D8,$F7,$EF,$E7,$E0,$F0,$B0,$F1 ; 83DE D8 F7 EF E7 E0 F0 B0 F1  ........
        db   $DF,$F8,$F0,$F8,$E7,$FA,$BB,$FE ; 83E6 DF F8 F0 F8 E7 FA BB FE  ........
        db   $1F,$EE,$EB,$F7,$F7,$77,$35,$CF ; 83EE 1F EE EB F7 F7 77 35 CF  .....w5.
        db   $FF,$1E,$1B,$0F,$0F,$8F,$4D,$3F ; 83F6 FF 1E 1B 0F 0F 8F 4D 3F  ......M?
        db   $7A,$3C,$9C,$C1,$FC,$FC,$B1,$FF ; 83FE 7A 3C 9C C1 FC FC B1 FF  z<......
        db   $FC,$F1,$E0,$FC,$E0,$F1,$BE,$FF ; 8406 FC F1 E0 FC E0 F1 BE FF  ........
        db   $7F,$1E,$0F,$1F,$1F,$0F,$FD,$0F ; 840E 7F 1E 0F 1F 1F 0F FD 0F  ........
        db   $0F,$86,$43,$43,$47,$8F,$0D,$FF ; 8416 0F 86 43 43 47 8F 0D FF  ..CCG...
        db   $D8,$F0,$E0,$E0,$F0,$E0,$B0,$F8 ; 841E D8 F0 E0 E0 F0 E0 B0 F8  ........
        db   $D8,$F0,$E0,$E3,$FC,$E0,$B0,$F8 ; 8426 D8 F0 E0 E3 FC E0 B0 F8  ........
        db   $1F,$06,$0B,$07,$07,$0D,$0F,$8F ; 842E 1F 06 0B 07 07 0D 0F 8F  ........
        db   $1F,$06,$7B,$87,$27,$5D,$DF,$7F ; 8436 1F 06 7B 87 27 5D DF 7F  ..{.']..
        db   $DF,$FE,$FE,$D4,$F0,$FF,$B1,$FE ; 843E DF FE FE D4 F0 FF B1 FE  ........
        db   $D8,$F0,$F0,$D3,$FB,$F0,$BE,$FF ; 8446 D8 F0 F0 D3 FB F0 BE FF  ........
        db   $9F,$DE,$FB,$7F,$0F,$FD,$FF,$1F ; 844E 9F DE FB 7F 0F FD FF 1F  ........
        db   $3F,$1E,$0B,$0F,$7F,$0D,$1F,$FF ; 8456 3F 1E 0B 0F 7F 0D 1F FF  ?.......
        db   $D8,$F0,$E0,$E0,$F0,$E0,$B0,$F8 ; 845E D8 F0 E0 E0 F0 E0 B0 F8  ........
        db   $D8,$F0,$E0,$E3,$FC,$E0,$B0,$F8 ; 8466 D8 F0 E0 E3 FC E0 B0 F8  ........
        db   $1F,$06,$0B,$07,$07,$0D,$0F,$8F ; 846E 1F 06 0B 07 07 0D 0F 8F  ........
        db   $1F,$06,$7B,$87,$27,$5D,$DF,$7F ; 8476 1F 06 7B 87 27 5D DF 7F  ..{.']..
        db   $DD,$FF,$FF,$DC,$F0,$FF,$BF,$F0 ; 847E DD FF FF DC F0 FF BF F0  ........
        db   $D8,$F0,$F0,$D0,$FF,$F0,$B0,$FF ; 8486 D8 F0 F0 D0 FF F0 B0 FF  ........
        db   $1F,$1E,$3B,$FF,$0F,$FD,$1F,$FF ; 848E 1F 1E 3B FF 0F FD 1F FF  ..;.....
        db   $FF,$DE,$0B,$0F,$FF,$0D,$FF,$FF ; 8496 FF DE 0B 0F FF 0D FF FF  ........
        db   $D0,$EE,$DE,$DC,$C0,$C0,$C0,$CC ; 849E D0 EE DE DC C0 C0 C0 CC  ........
        db   $DF,$F1,$E1,$E3,$FE,$C1,$C3,$C1 ; 84A6 DF F1 E1 E3 FE C1 C3 C1  ........
        db   $3F,$DE,$DB,$1F,$1F,$3D,$3F,$2D ; 84AE 3F DE DB 1F 1F 3D 3F 2D  ?....=?-
        db   $FF,$3E,$3B,$DF,$1F,$7D,$7F,$EF ; 84B6 FF 3E 3B DF 1F 7D 7F EF  .>;..}..
        db   $FB,$FA,$F0,$E0,$FF,$FF,$A3,$FC ; 84BE FB FA F0 E0 FF FF A3 FC  ........
        db   $E0,$E1,$ED,$CD,$C0,$E0,$BC,$FF ; 84C6 E0 E1 ED CD C0 E0 BC FF  ........
        db   $F3,$CE,$3B,$FF,$FF,$FF,$FD,$2F ; 84CE F3 CE 3B FF FF FF FD 2F  ..;..../
        db   $7F,$3E,$FB,$1F,$1F,$3F,$3D,$EF ; 84D6 7F 3E FB 1F 1F 3F 3D EF  .>...?=.
        db   $D0,$EE,$DE,$DC,$C0,$C0,$C0,$DC ; 84DE D0 EE DE DC C0 C0 C0 DC  ........
        db   $DF,$F1,$E1,$E3,$FE,$C1,$C3,$C1 ; 84E6 DF F1 E1 E3 FE C1 C3 C1  ........
        db   $3F,$DE,$DB,$1F,$1F,$3D,$3E,$29 ; 84EE 3F DE DB 1F 1F 3D 3E 29  ?....=>)
        db   $FF,$3E,$3B,$DF,$1F,$7D,$7F,$EF ; 84F6 FF 3E 3B DF 1F 7D 7F EF  .>;..}..
        db   $FA,$F8,$E8,$F1,$FF,$FF,$BE,$E1 ; 84FE FA F8 E8 F1 FF FF BE E1  ........
        db   $C0,$C6,$E6,$C0,$C0,$E0,$A1,$FF ; 8506 C0 C6 E6 C0 C0 E0 A1 FF  ........
        db   $67,$1E,$7B,$FF,$FF,$FF,$3D,$EF ; 850E 67 1E 7B FF FF FF 3D EF  g.{...=.
        db   $FF,$FE,$BB,$1F,$1F,$3F,$FD,$EF ; 8516 FF FE BB 1F 1F 3F FD EF  .....?..
        db   $EB,$D7,$97,$7F,$BF,$AF,$EF,$E7 ; 851E EB D7 97 7F BF AF EF E7  ........
        db   $E8,$D0,$90,$68,$88,$80,$E0,$E0 ; 8526 E8 D0 90 68 88 80 E0 E0  ...h....
        db   $FB,$FD,$FE,$FF,$FF,$FF,$FF,$FF ; 852E FB FD FE FF FF FF FF FF  ........
        db   $0B,$05,$06,$05,$04,$02,$03,$07 ; 8536 0B 05 06 05 04 02 03 07  ........
        db   $CF,$A7,$27,$C7,$DF,$D7,$E8,$EC ; 853E CF A7 27 C7 DF D7 E8 EC  ..'.....
        db   $CE,$AF,$3F,$D8,$D8,$D7,$EB,$EC ; 8546 CE AF 3F D8 D8 D7 EB EC  ..?.....
        db   $F9,$FD,$FD,$FE,$FD,$FB,$07,$07 ; 854E F9 FD FD FE FD FB 07 07  ........
        db   $1F,$FF,$FD,$06,$05,$FB,$77,$77 ; 8556 1F FF FD 06 05 FB 77 77  ......ww
        db   $EF,$DF,$9F,$7F,$FF,$BF,$FF,$DF ; 855E EF DF 9F 7F FF BF FF DF  ........
        db   $E0,$C0                         ; 8566 E0 C0                    ..
        db   $80,$20,$20,$00,$C0,$C0,$DB,$ED ; 8568 80 20 20 00 C0 C0 DB ED  .  .....
        db   $E6,$F9,$FF,$F7,$F3,$E7,$1B,$0D ; 8570 E6 F9 FF F7 F3 E7 1B 0D  ........
        db   $06,$11,$13,$03,$03,$07,$9F,$BF ; 8578 06 11 13 03 03 07 9F BF  ........
        db   $3F,$DF,$DF,$DF,$E0,$E0,$F8,$FF ; 8580 3F DF DF DF E0 E0 F8 FF  ?.......
        db   $3F,$C0,$C0,$DF,$EE,$EE,$F7,$E7 ; 8588 3F C0 C0 DF EE EE F7 E7  ?.......
        db   $E1,$E4,$ED,$EB,$17,$47,$77,$F7 ; 8590 E1 E4 ED EB 17 47 77 F7  .....Gw.
        db   $F9,$1C,$0D,$EB,$D7,$47,$EC,$D0 ; 8598 F9 1C 0D EB D7 47 EC D0  .....G..
        db   $38,$BC,$D3,$D0,$E8,$E4,$03,$07 ; 85A0 38 BC D3 D0 E8 E4 03 07  8.......
        db   $07,$07,$0F,$0F,$07,$07,$CB,$C5 ; 85A8 07 07 0F 0F 07 07 CB C5  ........
        db   $C6,$CD,$F3,$03,$07,$0F,$F0,$F8 ; 85B0 C6 CD F3 03 07 0F F0 F8  ........
        db   $F8,$F8,$FC,$FC,$F8,$F8,$D0,$A0 ; 85B8 F8 F8 FC FC F8 F8 D0 A0  ........
        db   $78,$78,$B8,$DF,$E0,$E8,$0C,$1F ; 85C0 78 78 B8 DF E0 E8 0C 1F  xx......
        db   $1F,$1F,$07,$07,$07,$00,$03,$01 ; 85C8 1F 1F 07 07 07 00 03 01  ........
        db   $01,$06,$05,$FB,$7F,$07,$0F,$FF ; 85D0 01 06 05 FB 7F 07 0F FF  ........
        db   $FE,$F8,$F8,$F8,$78,$78,$E3,$C3 ; 85D8 FE F8 F8 F8 78 78 E3 C3  ....xx..
        db   $23,$B3,$CF,$C0,$E0,$F0,$0F,$1F ; 85E0 23 B3 CF C0 E0 F0 0F 1F  #.......
        db   $1F,$1F,$3F,$3F,$1F,$1F,$1B,$1D ; 85E8 1F 1F 3F 3F 1F 1F 1B 1D  ..??....
        db   $1E,$3D,$CB,$07,$17,$37,$C0,$E0 ; 85F0 1E 3D CB 07 17 37 C0 E0  .=...7..
        db   $E0,$E0,$F0,$F0,$E0,$E0,$C0,$80 ; 85F8 E0 E0 F0 F0 E0 E0 C0 80  ........
        db   $00,$60,$A0,$DF,$FE,$E0,$F0,$FF ; 8600 00 60 A0 DF FE E0 F0 FF  .`......
        db   $7F,$1F,$1F,$1F,$1E,$1E,$07,$03 ; 8608 7F 1F 1F 1F 1E 1E 07 03  ........
        db   $1D,$1C,$1D,$FB,$17,$07,$30,$F8 ; 8610 1D 1C 1D FB 17 07 30 F8  ......0.
        db   $F8,$F8,$E0,$E0,$E0,$00,$EC,$D0 ; 8618 F8 F8 E0 E0 E0 00 EC D0  ........
        db   $38,$B8,$D0,$C0,$E0,$E0,$03,$07 ; 8620 38 B8 D0 C0 E0 E0 03 07  8.......
        db   $07,$07,$0F,$1F,$1F,$1F,$0B,$05 ; 8628 07 07 0F 1F 1F 1F 0B 05  ........
        db   $06,$05,$03,$03,$03,$03,$F0,$F8 ; 8630 06 05 03 03 03 03 F0 F8  ........
        db   $F8,$F8,$F8,$FC,$FC,$FC,$C0,$A0 ; 8638 F8 F8 F8 FC FC FC C0 A0  ........
        db   $7F,$7F,$BF,$D7,$EB,$E8,$1F,$0F ; 8640 7F 7F BF D7 EB E8 1F 0F  ........
        db   $08,$18,$1F,$00,$03,$00,$07,$1F ; 8648 08 18 1F 00 03 00 07 1F  ........
        db   $FD,$F8,$FB,$FB,$77,$77,$FE,$E2 ; 8650 FD F8 FB FB 77 77 FE E2  ....ww..
        db   $00,$00,$F8,$00,$70,$70,$E0,$C0 ; 8658 00 00 F8 00 70 70 E0 C0  ....pp..
        db   $20,$A0,$C0,$C0,$C0,$C0,$0F,$1F ; 8660 20 A0 C0 C0 C0 C0 0F 1F   .......
        db   $1F,$1F,$1F,$3F,$3F,$3F,$1B,$1D ; 8668 1F 1F 1F 3F 3F 3F 1B 1D  ...???..
        db   $1E,$1D,$03,$07,$07,$07,$C0,$E0 ; 8670 1E 1D 03 07 07 07 C0 E0  ........
        db   $E0,$E0,$F0,$F8,$F8,$F8,$E0,$F8 ; 8678 E0 E0 F0 F8 F8 F8 E0 F8  ........
        db   $3F,$5F,$9F,$DF,$EE,$EE,$7F,$47 ; 8680 3F 5F 9F DF EE EE 7F 47  ?_.....G
        db   $00,$00,$1F,$00,$0E,$0E,$07,$03 ; 8688 00 00 1F 00 0E 0E 07 03  ........
        db   $FD,$FC,$FB,$EB,$D7,$37,$F8,$F0 ; 8690 FD FC FB EB D7 37 F8 F0  .....7..
        db   $10,$18,$F8,$00,$C0,$00,$EF,$D7 ; 8698 10 18 F8 00 C0 00 EF D7  ........
        db   $3F,$B9,$DE,$DF,$EF,$E1,$EC,$D0 ; 86A0 3F B9 DE DF EF E1 EC D0  ?.......
        db   $38,$B8,$D0,$D0,$E8,$E2,$FB,$FD ; 86A8 38 B8 D0 D0 E8 E2 FB FD  8.......
        db   $FE,$E6,$1D,$FF,$FF,$E7,$0B,$05 ; 86B0 FE E6 1D FF FF E7 0B 05  ........
        db   $06,$06,$01,$03,$07,$17,$DF,$BF ; 86B8 06 06 01 03 07 17 DF BF  ........
        db   $67,$67,$B8,$D8,$E7,$E8,$D7,$A7 ; 86C0 67 67 B8 D8 E7 E8 D7 A7  gg......
        db   $7F,$7F,$B8,$DF,$E0,$E8,$FC,$FE ; 86C8 7F 7F B8 DF E0 E8 FC FE  ........
        db   $FE,$3E,$05,$03,$07,$7F,$FB,$F9 ; 86D0 FE 3E 05 03 07 7F FB F9  .>......
        db   $F8,$3E,$C5,$FB,$7F,$07,$EF,$DF ; 86D8 F8 3E C5 FB 7F 07 EF DF  .>......
        db   $3F,$A7,$F8,$FF,$FF,$E7,$E0,$C0 ; 86E0 3F A7 F8 FF FF E7 E0 C0  ?.......
        db   $20,$A0,$C0,$C0,$E0,$E8,$DB,$FD ; 86E8 20 A0 C0 C0 E0 E8 DB FD   .......
        db   $FE,$9D,$7B,$F7,$F7,$B7,$1B,$1D ; 86F0 FE 9D 7B F7 F7 B7 1B 1D  ..{.....
        db   $1E,$1D,$0B,$07,$17,$77,$3F,$7F ; 86F8 1E 1D 0B 07 17 77 3F 7F  .....w?.
        db   $7F,$7C,$A0,$C0,$E0,$FE,$DF,$9F ; 8700 7F 7C A0 C0 E0 FE DF 9F  .|......
        db   $1F,$7C,$A3,$DF,$FE,$E0,$F7,$FB ; 8708 1F 7C A3 DF FE E0 F7 FB  .|......
        db   $E5,$E4,$1D,$1B,$F7,$07,$E7,$E3 ; 8710 E5 E4 1D 1B F7 07 E7 E3  ........
        db   $FD,$FC,$1D,$FB,$17,$07,$B8,$06 ; 8718 FD FC 1D FB 17 07 B8 06  ........
        db   $01,$02,$84,$73,$C4,$02,$FF,$FF ; 8720 01 02 84 73 C4 02 FF FF  ...s....
        db   $FF,$FF,$FF,$FF,$FF,$FF,$01,$02 ; 8728 FF FF FF FF FF FF 01 02  ........
        db   $8C,$72,$8E,$01,$00,$01,$FF,$FF ; 8730 8C 72 8E 01 00 01 FF FF  .r......
        db   $FF,$FF,$FF,$FF,$FF,$FF,$03,$84 ; 8738 FF FF FF FF FF FF 03 84  ........
        db   $78,$84,$03,$07,$07,$0B,$FF,$FF ; 8740 78 84 03 07 07 0B FF FF  x.......
        db   $FF,$FF,$FC,$FA,$FB,$F5,$B3,$0C ; 8748 FF FF FC FA FB F5 B3 0C  ........
        db   $02,$01,$01,$E6,$98,$46,$FF,$FF ; 8750 02 01 01 E6 98 46 FF FF  .....F..
        db   $FF,$FF,$FF,$7F,$7F,$BF,$B8,$06 ; 8758 FF FF FF 7F 7F BF B8 06  ........
        db   $01,$00,$83,$77,$CF,$0F,$FF,$FF ; 8760 01 00 83 77 CF 0F FF FF  ...w....
        db   $FF,$FF,$FC,$F9,$F3,$F7,$01,$02 ; 8768 FF FF FC F9 F3 F7 01 02  ........
        db   $8C,$32,$CE,$E1,$F0,$F1,$FF,$FF ; 8770 8C 32 CE E1 F0 F1 FF FF  .2......
        db   $FF,$FF,$3F,$9F,$8F,$4F,$0F,$87 ; 8778 FF FF 3F 9F 8F 4F 0F 87  ..?..O..
        db   $65,$85,$01,$11,$05,$03,$F5,$F9 ; 8780 65 85 01 11 05 03 F5 F9  e.......
        db   $FA,$FA,$FE,$EE,$FA,$FF,$F3,$E4 ; 8788 FA FA FE EE FA FF F3 E4  ........
        db   $A2,$81,$81,$AE,$98,$A4,$6F,$1F ; 8790 A2 81 81 AE 98 A4 6F 1F  ......o.
        db   $5F,$7F,$7F,$77,$7F,$5F,$B8,$04 ; 8798 5F 7F 7F 77 7F 5F B8 04  _..w._..
        db   $03,$07,$8F,$6B,$CB,$16,$FF,$FF ; 87A0 03 07 8F 6B CB 16 FF FF  ...k....
        db   $FC,$F9,$F2,$F5,$F7,$ED,$01,$02 ; 87A8 FC F9 F2 F5 F7 ED 01 02  ........
        db   $6C,$F2,$FA,$E9,$E8,$B5,$FF,$FF ; 87B0 6C F2 FA E9 E8 B5 FF FF  l.......
        db   $9F,$4F,$A7,$57,$77,$5B,$55,$9D ; 87B8 9F 4F A7 57 77 5B 55 9D  .O.Ww[U.
        db   $3F,$BF,$17,$87,$22,$0B,$AB,$EB ; 87C0 3F BF 17 87 22 0B AB EB  ?..."...
        db   $D7,$D7,$EA,$7A,$DD,$F7,$55,$DC ; 87C8 D7 D7 EA 7A DD F7 55 DC  ...z..U.
        db   $FE,$FE,$75,$76,$28,$0F,$EA,$6B ; 87D0 FE FE 75 76 28 0F EA 6B  ..uv(..k
        db   $F5,$75,$AB,$AF,$DF,$F6,$B8,$06 ; 87D8 F5 75 AB AF DF F6 B8 06  .u......
        db   $01,$02,$84,$72,$C4,$03,$FF,$FF ; 87E0 01 02 84 72 C4 03 FF FF  ...r....
        db   $FF,$FF,$FF,$FF,$FF,$FC,$01,$02 ; 87E8 FF FF FF FF FF FC 01 02  ........
        db   $8C,$72,$8E,$01,$00,$C1,$FF,$FF ; 87F0 8C 72 8E 01 00 C1 FF FF  .r......
        db   $FF,$FF,$FF,$FF,$FF,$3F,$07,$8F ; 87F8 FF FF FF FF FF 3F 07 8F  .....?..
        db   $4F,$A7,$45,$41,$A1,$19,$FB,$F7 ; 8800 4F A7 45 41 A1 19 FB F7  O.EA....
        db   $F3,$D9,$BA,$BE,$5E,$E6,$E3,$F0 ; 8808 F3 D9 BA BE 5E E6 E3 F0  ....^...
        db   $F4,$A3,$A1,$A2,$84,$5A,$9F,$CF ; 8810 F4 A3 A1 A2 84 5A 9F CF  .....Z..
        db   $8B,$5D,$5F,$7D,$7B,$A5,$B8,$04 ; 8818 8B 5D 5F 7D 7B A5 B8 04  .]_}{...
        db   $03,$07,$8F,$6B,$CB,$16,$FF,$FF ; 8820 03 07 8F 6B CB 16 FF FF  ...k....
        db   $FC,$F9,$F2,$F5,$F7,$ED,$01,$02 ; 8828 FC F9 F2 F5 F7 ED 01 02  ........
        db   $6C,$F2,$FA,$E9,$E8,$B5,$FF,$FF ; 8830 6C F2 FA E9 E8 B5 FF FF  l.......
        db   $9F,$4F,$A7,$57,$77,$5B,$55,$9D ; 8838 9F 4F A7 57 77 5B 55 9D  .O.Ww[U.
        db   $3F,$BF,$17,$87,$22,$0B,$AB,$EB ; 8840 3F BF 17 87 22 0B AB EB  ?..."...
        db   $D7,$D7,$EA,$7A,$DD,$F7,$55,$DC ; 8848 D7 D7 EA 7A DD F7 55 DC  ...z..U.
        db   $FE,$FE,$75,$76,$28,$0F,$EA,$6B ; 8850 FE FE 75 76 28 0F EA 6B  ..uv(..k
        db   $F5,$75,$AB,$AF,$DF,$F6,$00,$06 ; 8858 F5 75 AB AF DF F6 00 06  .u......
        db   $4B,$1F,$16,$BF,$3D,$1F,$FF,$F9 ; 8860 4B 1F 16 BF 3D 1F FF F9  K...=...
        db   $B4,$E6,$ED,$53,$D3,$EF,$00,$30 ; 8868 B4 E6 ED 53 D3 EF 00 30  ...S...0
        db   $59,$FC,$B4,$DE,$FE,$FC,$FF,$CF ; 8870 59 FC B4 DE FE FC FF CF  Y.......
        db   $A6,$B3,$DB,$E5,$E5,$FB,$3F,$BF ; 8878 A6 B3 DB E5 E5 FB 3F BF  ......?.
        db   $39,$19,$15,$96,$5C,$9B,$D9,$51 ; 8880 39 19 15 96 5C 9B D9 51  9...\..Q
        db   $D6,$E6,$EA,$6D,$B7,$64,$BE,$FE ; 8888 D6 E6 EA 6D B7 64 BE FE  ...m.d..
        db   $CE,$CC,$D4,$B4,$9D,$6C,$CD,$C5 ; 8890 CE CC D4 B4 9D 6C CD C5  .....l..
        db   $B5,$B3,$AB,$5B,$76,$93,$0E,$1F ; 8898 B5 B3 AB 5B 76 93 0E 1F  ...[v...
        db   $1F,$3F,$3F,$3F,$7F,$7F,$F1,$E6 ; 88A0 1F 3F 3F 3F 7F 7F F1 E6  .???....
        db   $E2,$CD,$D3,$D1,$A6,$AE,$38,$7C ; 88A8 E2 CD D3 D1 A6 AE 38 7C  ......8|
        db   $FC,$FE,$FE,$FE,$FF,$FF,$C7,$B3 ; 88B0 FC FE FE FE FF FF C7 B3  ........
        db   $A3,$59,$E5,$C5,$B2,$BA,$7F,$7F ; 88B8 A3 59 E5 C5 B2 BA 7F 7F  .Y......
        db   $6F,$7B,$77,$7F,$3E,$AF,$95,$91 ; 88C0 6F 7B 77 7F 3E AF 95 91  o{w.>...
        db   $94,$AC,$AA,$A6,$C7,$71,$FF,$FF ; 88C8 94 AC AA A6 C7 71 FF FF  .....q..
        db   $FB,$EF,$F7,$FF,$BE,$FA,$54,$C4 ; 88D0 FB EF F7 FF BE FA 54 C4  ......T.
        db   $94,$9A,$2A,$3A,$71,$47,$B8,$06 ; 88D8 94 9A 2A 3A 71 47 B8 06  ..*:qG..
        db   $01,$02,$84,$72,$C5,$03,$FF,$FF ; 88E0 01 02 84 72 C5 03 FF FF  ...r....
        db   $FF,$FF,$FF,$FF,$FE,$FC,$01,$02 ; 88E8 FF FF FF FF FE FC 01 02  ........
        db   $8C,$72,$8E,$01,$80,$C1,$FF,$FF ; 88F0 8C 72 8E 01 80 C1 FF FF  .r......
        db   $FF,$FF,$FF,$FF,$7F,$3F,$07,$87 ; 88F8 FF FF FF FF 7F 3F 07 87  .....?..
        db   $6B,$8D,$0D,$16,$01,$07,$FB,$F9 ; 8900 6B 8D 0D 16 01 07 FB F9  k.......
        db   $F5,$F6,$F6,$EB,$FE,$FB,$E3,$EC ; 8908 F5 F6 F6 EB FE FB E3 EC  ........
        db   $F2,$D1,$71,$AE,$58,$16,$9F,$5F ; 8910 F2 D1 71 AE 58 16 9F 5F  ..q.X.._
        db   $4F,$AF,$EF,$D7,$BF,$EF,$21,$0F ; 8918 4F AF EF D7 BF EF 21 0F  O.....!.
        db   $9F,$3D,$9E,$BD,$9E,$CE,$3E,$74 ; 8920 9F 3D 9E BD 9E CE 3E 74  .=....>t
        db   $EB,$C7,$EB,$C6,$6B,$74,$F4,$80 ; 8928 EB C7 EB C6 6B 74 F4 80  ....kt..
        db   $29,$7C,$FE,$FE,$D6,$2F,$3C,$FE ; 8930 29 7C FE FE D6 2F 3C FE  )|.../<.
        db   $D7,$83,$55,$AB,$7D,$5C,$F4,$6B ; 8938 D7 83 55 AB 7D 5C F4 6B  ..U.}\.k
        db   $7F,$7F,$3E,$94,$01,$27,$3A,$BE ; 8940 7F 7F 3E 94 01 27 3A BE  ..>..':.
        db   $D5,$AA,$C1,$EB,$7F,$3E,$73,$79 ; 8948 D5 AA C1 EB 7F 3E 73 79  .....>sy
        db   $BD,$79,$BC,$F9,$F0,$84,$2E,$D6 ; 8950 BD 79 BC F9 F0 84 2E D6  .y......
        db   $63,$D7,$E3,$D7,$2E,$7C,$21,$0F ; 8958 63 D7 E3 D7 2E 7C 21 0F  c....|!.
        db   $9F,$3D,$9E,$BD,$9E,$CE,$3E,$74 ; 8960 9F 3D 9E BD 9E CE 3E 74  .=....>t
        db   $EB,$C7,$EB,$C6,$6B,$74,$F4,$80 ; 8968 EB C7 EB C6 6B 74 F4 80  ....kt..
        db   $29,$7C,$FE,$FE,$D6,$2F,$3C,$FE ; 8970 29 7C FE FE D6 2F 3C FE  )|.../<.
        db   $D7,$83,$55,$AB,$7D,$5C,$F4,$6B ; 8978 D7 83 55 AB 7D 5C F4 6B  ..U.}\.k
        db   $7F,$7F,$3E,$94,$01,$27,$3A,$BE ; 8980 7F 7F 3E 94 01 27 3A BE  ..>..':.
        db   $D5,$AA,$C1,$EB,$7F,$3E,$73,$79 ; 8988 D5 AA C1 EB 7F 3E 73 79  .....>sy
        db   $BD,$79,$BC,$F9,$F0,$84,$2E,$D6 ; 8990 BD 79 BC F9 F0 84 2E D6  .y......
        db   $63,$D7,$E3,$D7,$2E,$7C,$1D,$73 ; 8998 63 D7 E3 D7 2E 7C 1D 73  c....|.s
        db   $67,$C7,$EB,$C6,$E3,$F4,$3E,$7C ; 89A0 67 C7 EB C6 E3 F4 3E 7C  g.....>|
        db   $F9,$F9,$75,$F9,$7C,$78,$F8,$FE ; 89A8 F9 F9 75 F9 7C 78 F8 FE  ..u.|x..
        db   $D6,$83,$11,$AD,$7E,$5F,$2C,$FE ; 89B0 D6 83 11 AD 7E 5F 2C FE  ....~_,.
        db   $FF,$FF,$EF,$53,$01,$3C,$FA,$7E ; 89B8 FF FF EF 53 01 3C FA 7E  ...S.<.~
        db   $B5,$88,$C1,$6B,$7F,$1F,$3C,$80 ; 89C0 B5 88 C1 6B 7F 1F 3C 80  ...k..<.
        db   $CA,$F7,$FF,$FF,$7F,$34,$2F,$C7 ; 89C8 CA F7 FF FF 7F 34 2F C7  .....4/.
        db   $63,$D7,$E3,$E6,$CE,$B8,$1E,$3E ; 89D0 63 D7 E3 E6 CE B8 1E 3E  c......>
        db   $9F,$AE,$9F,$9F,$3E,$7C,$1D,$73 ; 89D8 9F AE 9F 9F 3E 7C 1D 73  ....>|.s
        db   $67,$C7,$EB,$C6,$E3,$F4,$3E,$7C ; 89E0 67 C7 EB C6 E3 F4 3E 7C  g.....>|
        db   $F9,$F9,$75,$F9,$7C,$78,$F8,$FE ; 89E8 F9 F9 75 F9 7C 78 F8 FE  ..u.|x..
        db   $D6,$83,$11,$AD,$7E,$5F,$2C,$FE ; 89F0 D6 83 11 AD 7E 5F 2C FE  ....~_,.
        db   $FF,$FF,$EF,$53,$01,$3C,$FA,$7E ; 89F8 FF FF EF 53 01 3C FA 7E  ...S.<.~
        db   $B5,$88,$C1,$6B,$7F,$1F,$3C,$80 ; 8A00 B5 88 C1 6B 7F 1F 3C 80  ...k..<.
        db   $CA,$F7,$FF,$FF,$7F,$34,$2F,$C7 ; 8A08 CA F7 FF FF 7F 34 2F C7  .....4/.
        db   $63,$D7,$E3,$E6,$CE,$B8,$1E,$3E ; 8A10 63 D7 E3 E6 CE B8 1E 3E  c......>
        db   $9F,$AE,$9F,$9F,$3E,$7C,$1C,$73 ; 8A18 9F AE 9F 9F 3E 7C 1C 73  ....>|.s
        db   $6B,$C7,$CB,$C7,$EA,$F6,$2F,$3C ; 8A20 6B C7 CB C7 EA F6 2F 3C  k...../<
        db   $FC,$79,$75,$7A,$77,$3C,$F8,$FE ; 8A28 FC 79 75 7A 77 3C F8 FE  .yuzw<..
        db   $C6,$83,$55,$A9,$FE,$3E,$04,$7C ; 8A30 C6 83 55 A9 FE 3E 04 7C  ..U..>.|
        db   $FF,$FE,$AF,$D7,$61,$59,$7C,$7F ; 8A38 FF FE AF D7 61 59 7C 7F  ....aY|.
        db   $95,$AA,$C1,$63,$7F,$1F,$9A,$86 ; 8A40 95 AA C1 63 7F 1F 9A 86  ...c....
        db   $EB,$F5,$7F,$FF,$3E,$20,$6F,$57 ; 8A48 EB F5 7F FF 3E 20 6F 57  ....> oW
        db   $E3,$D3,$E3,$D6,$CE,$38,$3C,$EE ; 8A50 E3 D3 E3 D6 CE 38 3C EE  .....8<.
        db   $5E,$AE,$9E,$3F,$3C,$F4,$1C,$73 ; 8A58 5E AE 9E 3F 3C F4 1C 73  ^..?<..s
        db   $6B,$C7,$CB,$C7,$EA,$F6,$2F,$3C ; 8A60 6B C7 CB C7 EA F6 2F 3C  k...../<
        db   $FC,$79,$75,$7A,$77,$3C,$F8,$FE ; 8A68 FC 79 75 7A 77 3C F8 FE  .yuzw<..
        db   $C6,$83,$55,$A9,$FE,$3E,$04,$7C ; 8A70 C6 83 55 A9 FE 3E 04 7C  ..U..>.|
        db   $FF,$FE,$AF,$D7,$61,$59,$7C,$7F ; 8A78 FF FE AF D7 61 59 7C 7F  ....aY|.
        db   $95,$AA,$C1,$63,$7F,$1F,$9A,$86 ; 8A80 95 AA C1 63 7F 1F 9A 86  ...c....
        db   $EB,$F5,$7F,$FF,$3E,$20,$6F,$57 ; 8A88 EB F5 7F FF 3E 20 6F 57  ....> oW
        db   $E3,$D3,$E3,$D6,$CE,$38,$3C,$EE ; 8A90 E3 D3 E3 D6 CE 38 3C EE  .....8<.
        db   $5E,$AE,$9E,$3F,$3C,$F4,$1F,$7A ; 8A98 5E AE 9E 3F 3C F4 1F 7A  ^..?<..z
        db   $74,$F9,$F5,$FB,$77,$7C,$20,$0F ; 8AA0 74 F9 F5 FB 77 7C 20 0F  t...w| .
        db   $9F,$3E,$1E,$3D,$9C,$8B,$38,$FE ; 8AA8 9F 3E 1E 3D 9C 8B 38 FE  .>.=..8.
        db   $FE,$FF,$AB,$D5,$63,$79,$C4,$00 ; 8AB0 FE FF AB D5 63 79 C4 00  ....cy..
        db   $29,$7C,$FE,$7E,$9E,$A6,$9E,$C6 ; 8AB8 29 7C FE 7E 9E A6 9E C6  )|.~....
        db   $AB,$D5,$FF,$7F,$7F,$1C,$65,$79 ; 8AC0 AB D5 FF 7F 7F 1C 65 79  ......ey
        db   $7E,$7F,$3E,$94,$00,$23,$3E,$EE ; 8AC8 7E 7F 3E 94 00 23 3E EE  ~.>..#>.
        db   $DF,$AF,$9F,$2E,$5E,$F8,$D1,$39 ; 8AD0 DF AF 9F 2E 5E F8 D1 39  ....^..9
        db   $BC,$78,$7C,$F9,$F0,$04,$1F,$7A ; 8AD8 BC 78 7C F9 F0 04 1F 7A  .x|....z
        db   $74,$F9,$F5,$FB,$77,$7C,$20,$0F ; 8AE0 74 F9 F5 FB 77 7C 20 0F  t...w| .
        db   $9F,$3E,$1E,$3D,$9C,$8B,$38,$FE ; 8AE8 9F 3E 1E 3D 9C 8B 38 FE  .>.=..8.
        db   $FE,$FF,$AB,$D5,$63,$79,$C4,$00 ; 8AF0 FE FF AB D5 63 79 C4 00  ....cy..
        db   $29,$7C,$FE,$7E,$9E,$A6,$9E,$C6 ; 8AF8 29 7C FE 7E 9E A6 9E C6  )|.~....
        db   $AB,$D5,$FF,$7F,$7F,$1C,$65,$79 ; 8B00 AB D5 FF 7F 7F 1C 65 79  ......ey
        db   $7E,$7F,$3E,$94,$00,$23,$3E,$EE ; 8B08 7E 7F 3E 94 00 23 3E EE  ~.>..#>.
        db   $DF,$AF,$9F,$2E,$5E,$F8,$D1,$39 ; 8B10 DF AF 9F 2E 5E F8 D1 39  ....^..9
        db   $BC,$78,$7C,$F9,$F0,$04         ; 8B18 BC 78 7C F9 F0 04        .x|...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8B1E:
        lda     $3E                             ; 8B1E A5 3E                    .>
        beq     MapEventSystem_Branch_8B29      ; 8B20 F0 07                    ..
        lda     $058E                           ; 8B22 AD 8E 05                 ...
        cmp     #$02                            ; 8B25 C9 02                    ..
        bcs     MapEventSystem_Branch_8B37      ; 8B27 B0 0E                    ..
MapEventSystem_Branch_8B29:
        lda     $3C                             ; 8B29 A5 3C                    .<
        and     #$0F                            ; 8B2B 29 0F                    ).
        ldx     #$07                            ; 8B2D A2 07                    ..
MapEventSystem_Branch_8B2F:
        cmp     $8B38,x                         ; 8B2F DD 38 8B                 .8.
        beq     MapEventSystem_Branch_8B40      ; 8B32 F0 0C                    ..
        dex                                     ; 8B34 CA                       .
        bpl     MapEventSystem_Branch_8B2F      ; 8B35 10 F8                    ..
MapEventSystem_Branch_8B37:
        rts                                     ; 8B37 60                       `
; ----------------------------------------------------------------------------
        db   $0F,$0D,$0B,$09,$07,$05,$03,$01 ; 8B38 0F 0D 0B 09 07 05 03 01  ........
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8B40:
        jsr     MapEventSystem_Entry_8B4A       ; 8B40 20 4A 8B                  J.
        jsr     MapEventSystem_Entry_8CE6       ; 8B43 20 E6 8C                  ..
        rts                                     ; 8B46 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8B47:
        jmp     MapEventSystem_Branch_8D26      ; 8B47 4C 26 8D                 L&.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8B4A:
        ldy     $28                             ; 8B4A A4 28                    .(
        bne     $8BCB                           ; 8B4C D0 7D                    .}
        and     #$0F                            ; 8B4E 29 0F                    ).
        cmp     #$0F                            ; 8B50 C9 0F                    ..
        bne     MapEventSystem_Branch_8B47      ; 8B52 D0 F3                    ..
        ldy     $050A                           ; 8B54 AC 0A 05                 ...
        lda     #$BF                            ; 8B57 A9 BF                    ..
        sta     $0300,y                         ; 8B59 99 00 03                 ...
        lda     #$02                            ; 8B5C A9 02                    ..
        sta     $0301,y                         ; 8B5E 99 01 03                 ...
        lda     #$02                            ; 8B61 A9 02                    ..
        sta     NextTextCharacter,y             ; 8B63 99 02 03                 ...
        lda     $05FE                           ; 8B66 AD FE 05                 ...
        sta     $00                             ; 8B69 85 00                    ..
        lda     $05FF                           ; 8B6B AD FF 05                 ...
        sta     $05FE                           ; 8B6E 8D FE 05                 ...
        sta     $0303,y                         ; 8B71 99 03 03                 ...
        lda     $00                             ; 8B74 A5 00                    ..
        sta     $05FF                           ; 8B76 8D FF 05                 ...
        sta     $0304,y                         ; 8B79 99 04 03                 ...
        tya                                     ; 8B7C 98                       .
        clc                                     ; 8B7D 18                       .
        adc     #$05                            ; 8B7E 69 05                    i.
        sta     $050A                           ; 8B80 8D 0A 05                 ...
        tay                                     ; 8B83 A8                       .
        inc     $050B                           ; 8B84 EE 0B 05                 ...
        lda     CurrentTilesetCandidate         ; 8B87 A5 65                    .e
        cmp     #$03                            ; 8B89 C9 03                    ..
        bne     MapEventSystem_Branch_8BC8      ; 8B8B D0 3B                    .;
        lda     #$BF                            ; 8B8D A9 BF                    ..
        sta     $0300,y                         ; 8B8F 99 00 03                 ...
        lda     #$03                            ; 8B92 A9 03                    ..
        sta     $0301,y                         ; 8B94 99 01 03                 ...
        lda     #$0D                            ; 8B97 A9 0D                    ..
        sta     NextTextCharacter,y             ; 8B99 99 02 03                 ...
        lda     $0606                           ; 8B9C AD 06 06                 ...
        sta     $00                             ; 8B9F 85 00                    ..
        lda     $0608                           ; 8BA1 AD 08 06                 ...
        sta     $0606                           ; 8BA4 8D 06 06                 ...
        sta     $0303,y                         ; 8BA7 99 03 03                 ...
        lda     $0607                           ; 8BAA AD 07 06                 ...
        sta     $0608                           ; 8BAD 8D 08 06                 ...
        sta     $0304,y                         ; 8BB0 99 04 03                 ...
        lda     $00                             ; 8BB3 A5 00                    ..
        sta     $0607                           ; 8BB5 8D 07 06                 ...
        sta     $0305,y                         ; 8BB8 99 05 03                 ...
        inc     $050B                           ; 8BBB EE 0B 05                 ...
        tya                                     ; 8BBE 98                       .
        clc                                     ; 8BBF 18                       .
        adc     #$06                            ; 8BC0 69 06                    i.
        sta     $050A                           ; 8BC2 8D 0A 05                 ...
        jsr     MapEventSystem_Entry_8D2C       ; 8BC5 20 2C 8D                  ,.
MapEventSystem_Branch_8BC8:
        jmp     MapEventSystem_Branch_8C4B      ; 8BC8 4C 4B 8C                 LK.
; ----------------------------------------------------------------------------
        cpy     #$18                            ; 8BCB C0 18                    ..
        beq     $8BD2                           ; 8BCD F0 03                    ..
        jmp     $8C52                           ; 8BCF 4C 52 8C                 LR.
; ----------------------------------------------------------------------------
        ldy     $050A                           ; 8BD2 AC 0A 05                 ...
        tax                                     ; 8BD5 AA                       .
        lda     #$BF                            ; 8BD6 A9 BF                    ..
        sta     $0300,y                         ; 8BD8 99 00 03                 ...
        txa                                     ; 8BDB 8A                       .
        cmp     #$0F                            ; 8BDC C9 0F                    ..
        beq     MapEventSystem_Branch_8BF3      ; 8BDE F0 13                    ..
        and     #$03                            ; 8BE0 29 03                    ).
        cmp     #$03                            ; 8BE2 C9 03                    ..
        beq     MapEventSystem_Branch_8BE7      ; 8BE4 F0 01                    ..
        rts                                     ; 8BE6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8BE7:
        lda     #$05                            ; 8BE7 A9 05                    ..
        sta     $0301,y                         ; 8BE9 99 01 03                 ...
        lda     #$07                            ; 8BEC A9 07                    ..
        sta     NextTextCharacter,y             ; 8BEE 99 02 03                 ...
        bne     MapEventSystem_Branch_8C15      ; 8BF1 D0 22                    ."
MapEventSystem_Branch_8BF3:
        lda     #$07                            ; 8BF3 A9 07                    ..
        sta     $0301,y                         ; 8BF5 99 01 03                 ...
        lda     #$05                            ; 8BF8 A9 05                    ..
        sta     NextTextCharacter,y             ; 8BFA 99 02 03                 ...
        lda     $0600                           ; 8BFD AD 00 06                 ...
        sta     $00                             ; 8C00 85 00                    ..
        lda     $0601                           ; 8C02 AD 01 06                 ...
        sta     $0600                           ; 8C05 8D 00 06                 ...
        sta     $0303,y                         ; 8C08 99 03 03                 ...
        lda     $00                             ; 8C0B A5 00                    ..
        sta     $0601                           ; 8C0D 8D 01 06                 ...
        sta     $0304,y                         ; 8C10 99 04 03                 ...
        iny                                     ; 8C13 C8                       .
        iny                                     ; 8C14 C8                       .
MapEventSystem_Branch_8C15:
        iny                                     ; 8C15 C8                       .
        iny                                     ; 8C16 C8                       .
        iny                                     ; 8C17 C8                       .
        lda     #$11                            ; 8C18 A9 11                    ..
        sta     $0300,y                         ; 8C1A 99 00 03                 ...
        lda     #$0F                            ; 8C1D A9 0F                    ..
        sta     $0301,y                         ; 8C1F 99 01 03                 ...
        lda     $0605                           ; 8C22 AD 05 06                 ...
        sta     $00                             ; 8C25 85 00                    ..
        lda     $0604                           ; 8C27 AD 04 06                 ...
        sta     $0605                           ; 8C2A 8D 05 06                 ...
        sta     $0304,y                         ; 8C2D 99 04 03                 ...
        lda     $0603                           ; 8C30 AD 03 06                 ...
        sta     $0604                           ; 8C33 8D 04 06                 ...
        sta     $0303,y                         ; 8C36 99 03 03                 ...
        lda     $00                             ; 8C39 A5 00                    ..
        sta     $0603                           ; 8C3B 8D 03 06                 ...
        sta     NextTextCharacter,y             ; 8C3E 99 02 03                 ...
        tya                                     ; 8C41 98                       .
        clc                                     ; 8C42 18                       .
        adc     #$05                            ; 8C43 69 05                    i.
        sta     $050A                           ; 8C45 8D 0A 05                 ...
        inc     $050B                           ; 8C48 EE 0B 05                 ...
MapEventSystem_Branch_8C4B:
        lda     $1F                             ; 8C4B A5 1F                    ..
        ora     #$20                            ; 8C4D 09 20                    .
        sta     $1F                             ; 8C4F 85 1F                    ..
        rts                                     ; 8C51 60                       `
; ----------------------------------------------------------------------------
        txa                                     ; 8C52 8A                       .
        tay                                     ; 8C53 A8                       .
        lda     $0573                           ; 8C54 AD 73 05                 .s.
        asl     a                               ; 8C57 0A                       .
        dex                                     ; 8C58 CA                       .
        bpl     $8C57                           ; 8C59 10 FC                    ..
        bcs     $8C5E                           ; 8C5B B0 01                    ..
        rts                                     ; 8C5D 60                       `
; ----------------------------------------------------------------------------
        tya                                     ; 8C5E 98                       .
        lda     $0584,y                         ; 8C5F B9 84 05                 ...
        sta     $02                             ; 8C62 85 02                    ..
        lda     $057C,y                         ; 8C64 B9 7C 05                 .|.
        sta     $03                             ; 8C67 85 03                    ..
        lda     $3C                             ; 8C69 A5 3C                    .<
        and     $058D                           ; 8C6B 2D 8D 05                 -..
        asl     a                               ; 8C6E 0A                       .
        asl     a                               ; 8C6F 0A                       .
        bcc     MapEventSystem_Branch_8C74      ; 8C70 90 02                    ..
        inc     $03                             ; 8C72 E6 03                    ..
MapEventSystem_Branch_8C74:
        clc                                     ; 8C74 18                       .
        adc     $02                             ; 8C75 65 02                    e.
        sta     $02                             ; 8C77 85 02                    ..
        bcc     MapEventSystem_Branch_8C7D      ; 8C79 90 02                    ..
        inc     $03                             ; 8C7B E6 03                    ..
MapEventSystem_Branch_8C7D:
        lda     #$09                            ; 8C7D A9 09                    ..
        sta     $04                             ; 8C7F 85 04                    ..
        lda     $0574,y                         ; 8C81 B9 74 05                 .t.
        sta     $00                             ; 8C84 85 00                    ..
        beq     MapEventSystem_Branch_8CA9      ; 8C86 F0 21                    .!
        asl     $00                             ; 8C88 06 00                    ..
        rol     $04                             ; 8C8A 26 04                    &.
        asl     $00                             ; 8C8C 06 00                    ..
        rol     $04                             ; 8C8E 26 04                    &.
        asl     $00                             ; 8C90 06 00                    ..
        rol     $04                             ; 8C92 26 04                    &.
        asl     $00                             ; 8C94 06 00                    ..
        rol     $04                             ; 8C96 26 04                    &.
        ldy     #$00                            ; 8C98 A0 00                    ..
        jsr     MapEventSystem_Entry_8CAC       ; 8C9A 20 AC 8C                  ..
        jsr     MapEventSystem_Entry_8CAC       ; 8C9D 20 AC 8C                  ..
        jsr     MapEventSystem_Entry_8CAC       ; 8CA0 20 AC 8C                  ..
        jsr     MapEventSystem_Entry_8CAC       ; 8CA3 20 AC 8C                  ..
        jsr     UpperFixedEngine_Entry_C626     ; 8CA6 20 26 C6                  &.
MapEventSystem_Branch_8CA9:
        lda     #$FF                            ; 8CA9 A9 FF                    ..
        rts                                     ; 8CAB 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8CAC:
        ldx     $050A                           ; 8CAC AE 0A 05                 ...
        lda     $04                             ; 8CAF A5 04                    ..
        sta     $0300,x                         ; 8CB1 9D 00 03                 ...
        lda     #$10                            ; 8CB4 A9 10                    ..
        sta     $0301,x                         ; 8CB6 9D 01 03                 ...
        lda     $00                             ; 8CB9 A5 00                    ..
        sta     NextTextCharacter,x             ; 8CBB 9D 02 03                 ...
        lda     #$10                            ; 8CBE A9 10                    ..
        sta     $01                             ; 8CC0 85 01                    ..
MapEventSystem_Branch_8CC2:
        lda     ($02),y                         ; 8CC2 B1 02                    ..
        sta     $0303,x                         ; 8CC4 9D 03 03                 ...
        inx                                     ; 8CC7 E8                       .
        iny                                     ; 8CC8 C8                       .
        tya                                     ; 8CC9 98                       .
        dec     $01                             ; 8CCA C6 01                    ..
        bne     MapEventSystem_Branch_8CC2      ; 8CCC D0 F4                    ..
        lda     $050A                           ; 8CCE AD 0A 05                 ...
        clc                                     ; 8CD1 18                       .
        adc     #$13                            ; 8CD2 69 13                    i.
        sta     $050A                           ; 8CD4 8D 0A 05                 ...
        inc     $050B                           ; 8CD7 EE 0B 05                 ...
        lda     $00                             ; 8CDA A5 00                    ..
        clc                                     ; 8CDC 18                       .
        adc     #$10                            ; 8CDD 69 10                    i.
        sta     $00                             ; 8CDF 85 00                    ..
        bcc     MapEventSystem_Branch_8CE5      ; 8CE1 90 02                    ..
        inc     $04                             ; 8CE3 E6 04                    ..
MapEventSystem_Branch_8CE5:
        rts                                     ; 8CE5 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8CE6:
        lda     $629A                           ; 8CE6 AD 9A 62                 ..b
        bpl     MapEventSystem_Branch_8D25      ; 8CE9 10 3A                    .:
        lda     $3C                             ; 8CEB A5 3C                    .<
        and     #$07                            ; 8CED 29 07                    ).
        cmp     #$07                            ; 8CEF C9 07                    ..
        bne     MapEventSystem_Branch_8D25      ; 8CF1 D0 32                    .2
        jsr     UpperFixedEngine_Entry_C891     ; 8CF3 20 91 C8                  ..
        and     #$03                            ; 8CF6 29 03                    ).
        asl     a                               ; 8CF8 0A                       .
        tax                                     ; 8CF9 AA                       .
        jsr     UpperFixedEngine_Entry_C891     ; 8CFA 20 91 C8                  ..
        and     #$03                            ; 8CFD 29 03                    ).
        asl     a                               ; 8CFF 0A                       .
        tay                                     ; 8D00 A8                       .
        jsr     MapEventSystem_Entry_8D06       ; 8D01 20 06 8D                  ..
        inx                                     ; 8D04 E8                       .
        iny                                     ; 8D05 C8                       .
MapEventSystem_Entry_8D06:
        lda     $0508                           ; 8D06 AD 08 05                 ...
        clc                                     ; 8D09 18                       .
        adc     Bank1D_MapMotionOffsets,x       ; 8D0A 7D 1D 8D                 }..
        sta     $0508                           ; 8D0D 8D 08 05                 ...
        lda     $0509                           ; 8D10 AD 09 05                 ...
        clc                                     ; 8D13 18                       .
        adc     Bank1D_MapMotionOffsets,y       ; 8D14 79 1D 8D                 y..
        sta     $0509                           ; 8D17 8D 09 05                 ...
        jmp     WaitForNmi                      ; 8D1A 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
Bank1D_MapMotionOffsets:
        db   $00,$00,$01,$FF,$02,$FE,$04,$FC ; 8D1D 00 00 01 FF 02 FE 04 FC  ........
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8D25:
        rts                                     ; 8D25 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8D26:
        lda     CurrentTilesetCandidate         ; 8D26 A5 65                    .e
        cmp     #$03                            ; 8D28 C9 03                    ..
        bne     MapEventSystem_Branch_8D68      ; 8D2A D0 3C                    .<
MapEventSystem_Entry_8D2C:
        lda     $3C                             ; 8D2C A5 3C                    .<
        and     #$02                            ; 8D2E 29 02                    ).
        tax                                     ; 8D30 AA                       .
        lda     Bank1D_PpuPayloadPointers,x     ; 8D31 BD 69 8D                 .i.
        sta     $02                             ; 8D34 85 02                    ..
        lda     $8D6A,x                         ; 8D36 BD 6A 8D                 .j.
        sta     $03                             ; 8D39 85 03                    ..
        lda     $7500                           ; 8D3B AD 00 75                 ..u
        sta     $00                             ; 8D3E 85 00                    ..
        lda     #$08                            ; 8D40 A9 08                    ..
        sta     $04                             ; 8D42 85 04                    ..
        asl     $00                             ; 8D44 06 00                    ..
        rol     $04                             ; 8D46 26 04                    &.
        asl     $00                             ; 8D48 06 00                    ..
        rol     $04                             ; 8D4A 26 04                    &.
        asl     $00                             ; 8D4C 06 00                    ..
        rol     $04                             ; 8D4E 26 04                    &.
        asl     $00                             ; 8D50 06 00                    ..
        rol     $04                             ; 8D52 26 04                    &.
        ldy     #$00                            ; 8D54 A0 00                    ..
        jsr     MapEventSystem_Entry_8CAC       ; 8D56 20 AC 8C                  ..
        jsr     MapEventSystem_Entry_8CAC       ; 8D59 20 AC 8C                  ..
        jsr     MapEventSystem_Entry_8CAC       ; 8D5C 20 AC 8C                  ..
        jsr     MapEventSystem_Entry_8CAC       ; 8D5F 20 AC 8C                  ..
        lda     $1F                             ; 8D62 A5 1F                    ..
        ora     #$20                            ; 8D64 09 20                    .
        sta     $1F                             ; 8D66 85 1F                    ..
MapEventSystem_Branch_8D68:
        rts                                     ; 8D68 60                       `
; ----------------------------------------------------------------------------
Bank1D_PpuPayloadPointers:
        db   $6D                             ; 8D69 6D                       m
        db   $8D,$AD,$8D,$00,$02,$40,$00,$08 ; 8D6A 8D AD 8D 00 02 40 00 08  .....@..
        db   $00,$00,$02,$00,$00,$00,$00,$00 ; 8D72 00 00 02 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$24,$00,$00,$40 ; 8D7A 00 00 00 00 24 00 00 40  ....$..@
        db   $02,$10,$40,$00,$00,$00,$00,$00 ; 8D82 02 10 40 00 00 00 00 00  ..@.....
        db   $00,$00,$00,$08,$10,$00,$00,$10 ; 8D8A 00 00 00 08 10 00 00 10  ........
        db   $00,$14,$00,$00,$00,$00,$00,$00 ; 8D92 00 14 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$20,$09,$80,$00 ; 8D9A 00 00 00 00 20 09 80 00  .... ...
        db   $40,$02,$10,$00,$00,$00,$00,$00 ; 8DA2 40 02 10 00 00 00 00 00  @.......
        db   $00,$00,$00,$80,$00,$04,$20,$80 ; 8DAA 00 00 00 80 00 04 20 80  ...... .
        db   $02,$00,$04,$00,$00,$00,$00,$00 ; 8DB2 02 00 04 00 00 00 00 00  ........
        db   $00,$00,$00,$40,$00,$02,$20,$01 ; 8DBA 00 00 00 40 00 02 20 01  ...@.. .
        db   $00,$40,$01,$00,$00,$00,$00,$00 ; 8DC2 00 40 01 00 00 00 00 00  .@......
        db   $00,$00,$00,$00,$20,$04,$00,$80 ; 8DCA 00 00 00 00 20 04 00 80  .... ...
        db   $02,$00,$08,$00,$00,$00,$00,$00 ; 8DD2 02 00 08 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$88,$00,$21,$00 ; 8DDA 00 00 00 00 88 00 21 00  ......!.
        db   $00,$40,$0A,$00,$00,$00,$00,$00 ; 8DE2 00 40 0A 00 00 00 00 00  .@......
        db   $00,$00,$00                     ; 8DEA 00 00 00                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8DED:
        lda     CurrentTilesetCandidate         ; 8DED A5 65                    .e
        pha                                     ; 8DEF 48                       H
        lda     #$00                            ; 8DF0 A9 00                    ..
        sta     CurrentTilesetCandidate         ; 8DF2 85 65                    .e
        jsr     UpperFixedEngine_Entry_C5C5     ; 8DF4 20 C5 C5                  ..
        jsr     UpperFixedEngine_Entry_C54E     ; 8DF7 20 4E C5                  N.
        jsr     MapEventSystem_Entry_8EA9       ; 8DFA 20 A9 8E                  ..
        jsr     MapEventSystem_Entry_8EC4       ; 8DFD 20 C4 8E                  ..
        jsr     UpperFixedEngine_Entry_C5AF     ; 8E00 20 AF C5                  ..
        jsr     MapEventSystem_Entry_8E68       ; 8E03 20 68 8E                  h.
        jsr     MapEventSystem_Entry_8E91       ; 8E06 20 91 8E                  ..
        jsr     MapEventSystem_Entry_8EE0       ; 8E09 20 E0 8E                  ..
        jsr     UpperFixedEngine_Entry_C58F     ; 8E0C 20 8F C5                  ..
        jsr     UpperFixedEngine_Entry_C5BF     ; 8E0F 20 BF C5                  ..
        jsr     MapEventSystem_Entry_8E50       ; 8E12 20 50 8E                  P.
MapEventSystem_Entry_8E15:
        jsr     FixedTrampoline0F               ; 8E15 20 2E C0                  ..
        pla                                     ; 8E18 68                       h
        pha                                     ; 8E19 48                       H
        jsr     MapEventSystem_Entry_8EF9       ; 8E1A 20 F9 8E                  ..
        jsr     UpperFixedEngine_Entry_C8CC     ; 8E1D 20 CC C8                  ..
        jsr     UpperFixedEngine_Entry_C5C5     ; 8E20 20 C5 C5                  ..
        brk                                     ; 8E23 00                       .
        db   $08,$8F                         ; 8E24 08 8F                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5AF     ; 8E26 20 AF C5                  ..
        pla                                     ; 8E29 68                       h
        sta     CurrentTilesetCandidate         ; 8E2A 85 65                    .e
        lda     $28                             ; 8E2C A5 28                    .(
        brk                                     ; 8E2E 00                       .
        db   $02,$87                         ; 8E2F 02 87                    ..
; ----------------------------------------------------------------------------
        lda     $41                             ; 8E31 A5 41                    .A
        bmi     MapEventSystem_Branch_8E38      ; 8E33 30 03                    0.
        brk                                     ; 8E35 00                       .
        db   $2A,$EF                         ; 8E36 2A EF                    *.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8E38:
        lda     $0572                           ; 8E38 AD 72 05                 .r.
        brk                                     ; 8E3B 00                       .
        db   $11,$87                         ; 8E3C 11 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8E3E 00                       .
        db   $07,$87                         ; 8E3F 07 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 8E41 A2 00                    ..
        brk                                     ; 8E43 00                       .
        db   $23,$EF                         ; 8E44 23 EF                    #.
; ----------------------------------------------------------------------------
        brk                                     ; 8E46 00                       .
        db   $0B,$87                         ; 8E47 0B 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8E49 00                       .
        db   $03,$EF                         ; 8E4A 03 EF                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; 8E4C 20 BF C5                  ..
        rts                                     ; 8E4F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8E50:
        lda     #$00                            ; 8E50 A9 00                    ..
        sta     $7D                             ; 8E52 85 7D                    .}
        sta     $7E                             ; 8E54 85 7E                    .~
        sta     $7F                             ; 8E56 85 7F                    ..
        sta     $82                             ; 8E58 85 82                    ..
        sta     NextTextCharacter               ; 8E5A 8D 02 03                 ...
        lda     #$90                            ; 8E5D A9 90                    ..
        sta     $0300                           ; 8E5F 8D 00 03                 ...
        lda     #$80                            ; 8E62 A9 80                    ..
        sta     $0301                           ; 8E64 8D 01 03                 ...
        rts                                     ; 8E67 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8E68:
        lda     PPUSTATUS                       ; 8E68 AD 02 20                 ..
        ldy     #$00                            ; 8E6B A0 00                    ..
        ldx     #$10                            ; 8E6D A2 10                    ..
MapEventSystem_Branch_8E6F:
        lda     $51                             ; 8E6F A5 51                    .Q
        sta     PPUADDR                         ; 8E71 8D 06 20                 ..
        lda     $52                             ; 8E74 A5 52                    .R
        sta     PPUADDR                         ; 8E76 8D 06 20                 ..
MapEventSystem_Branch_8E79:
        sty     PPUDATA                         ; 8E79 8C 07 20                 ..
        iny                                     ; 8E7C C8                       .
        tya                                     ; 8E7D 98                       .
        and     #$0F                            ; 8E7E 29 0F                    ).
        bne     MapEventSystem_Branch_8E79      ; 8E80 D0 F7                    ..
        lda     $52                             ; 8E82 A5 52                    .R
        clc                                     ; 8E84 18                       .
        adc     #$20                            ; 8E85 69 20                    i
        sta     $52                             ; 8E87 85 52                    .R
        bcc     MapEventSystem_Branch_8E8D      ; 8E89 90 02                    ..
        inc     $51                             ; 8E8B E6 51                    .Q
MapEventSystem_Branch_8E8D:
        dex                                     ; 8E8D CA                       .
        bne     MapEventSystem_Branch_8E6F      ; 8E8E D0 DF                    ..
        rts                                     ; 8E90 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8E91:
        lda     PPUSTATUS                       ; 8E91 AD 02 20                 ..
        ldy     #$10                            ; 8E94 A0 10                    ..
        sty     PPUADDR                         ; 8E96 8C 06 20                 ..
        lda     #$00                            ; 8E99 A9 00                    ..
        sta     PPUADDR                         ; 8E9B 8D 06 20                 ..
        tax                                     ; 8E9E AA                       .
MapEventSystem_Branch_8E9F:
        sta     PPUDATA                         ; 8E9F 8D 07 20                 ..
        dex                                     ; 8EA2 CA                       .
        bne     MapEventSystem_Branch_8E9F      ; 8EA3 D0 FA                    ..
        dey                                     ; 8EA5 88                       .
        bne     MapEventSystem_Branch_8E9F      ; 8EA6 D0 F7                    ..
        rts                                     ; 8EA8 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8EA9:
        lda     #$00                            ; 8EA9 A9 00                    ..
        sta     $0508                           ; 8EAB 8D 08 05                 ...
        sta     $0509                           ; 8EAE 8D 09 05                 ...
        lda     $0505                           ; 8EB1 AD 05 05                 ...
        and     #$FE                            ; 8EB4 29 FE                    ).
        sta     $0505                           ; 8EB6 8D 05 05                 ...
        lda     #$20                            ; 8EB9 A9 20                    .
        sta     $51                             ; 8EBB 85 51                    .Q
        lda     #$E8                            ; 8EBD A9 E8                    ..
        sta     $52                             ; 8EBF 85 52                    .R
        jmp     WaitForNmi                      ; 8EC1 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8EC4:
        ldx     #$03                            ; 8EC4 A2 03                    ..
MapEventSystem_Branch_8EC6:
        lda     Bank1D_PpuSetupBytes,x          ; 8EC6 BD D8 8E                 ...
        sta     $05FC,x                         ; 8EC9 9D FC 05                 ...
        lda     $8EDC,x                         ; 8ECC BD DC 8E                 ...
        sta     $0609,x                         ; 8ECF 9D 09 06                 ...
        dex                                     ; 8ED2 CA                       .
        bpl     MapEventSystem_Branch_8EC6      ; 8ED3 10 F1                    ..
        jmp     UpperFixedEngine_Entry_C5B9     ; 8ED5 4C B9 C5                 L..
; ----------------------------------------------------------------------------
Bank1D_PpuSetupBytes:
        db   $12,$38,$2A,$10                 ; 8ED8 12 38 2A 10              .8*.
        db   $30,$0F,$0F,$0F                 ; 8EDC 30 0F 0F 0F              0...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8EE0:
        lda     PPUSTATUS                       ; 8EE0 AD 02 20                 ..
        lda     #$00                            ; 8EE3 A9 00                    ..
        sta     PPUADDR                         ; 8EE5 8D 06 20                 ..
        sta     PPUADDR                         ; 8EE8 8D 06 20                 ..
        ldx     #$00                            ; 8EEB A2 00                    ..
MapEventSystem_Branch_8EED:
        lda     Bank1D_PpuUploadData,x          ; 8EED BD 32 8F                 .2.
        sta     PPUDATA                         ; 8EF0 8D 07 20                 ..
        inx                                     ; 8EF3 E8                       .
        cpx     #$20                            ; 8EF4 E0 20                    .
        bne     MapEventSystem_Branch_8EED      ; 8EF6 D0 F5                    ..
        rts                                     ; 8EF8 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8EF9:
        bne     MapEventSystem_Branch_8F15      ; 8EF9 D0 1A                    ..
        lda     PlayerWorldX                    ; 8EFB A5 42                    .B
        lsr     a                               ; 8EFD 4A                       J
        clc                                     ; 8EFE 18                       .
        adc     #$40                            ; 8EFF 69 40                    i@
        sta     $0207                           ; 8F01 8D 07 02                 ...
        lda     PlayerWorldY                    ; 8F04 A5 43                    .C
        lsr     a                               ; 8F06 4A                       J
        clc                                     ; 8F07 18                       .
        adc     #$37                            ; 8F08 69 37                    i7
        sta     $0204                           ; 8F0A 8D 04 02                 ...
        lda     #$00                            ; 8F0D A9 00                    ..
        sta     $0205                           ; 8F0F 8D 05 02                 ...
        sta     $0206                           ; 8F12 8D 06 02                 ...
MapEventSystem_Branch_8F15:
        lda     #$E3                            ; 8F15 A9 E3                    ..
        lsr     a                               ; 8F17 4A                       J
        clc                                     ; 8F18 18                       .
        adc     #$3E                            ; 8F19 69 3E                    i>
        sta     $0203                           ; 8F1B 8D 03 02                 ...
        lda     #$8F                            ; 8F1E A9 8F                    ..
        lsr     a                               ; 8F20 4A                       J
        clc                                     ; 8F21 18                       .
        adc     #$35                            ; 8F22 69 35                    i5
        sta     $0200                           ; 8F24 8D 00 02                 ...
        lda     #$01                            ; 8F27 A9 01                    ..
        sta     $0201                           ; 8F29 8D 01 02                 ...
        lda     #$00                            ; 8F2C A9 00                    ..
        sta     $0202                           ; 8F2E 8D 02 02                 ...
        rts                                     ; 8F31 60                       `
; ----------------------------------------------------------------------------
Bank1D_PpuUploadData:
        db   $FC,$88,$88,$84,$E2,$91,$0A,$04 ; 8F32 FC 88 88 84 E2 91 0A 04  ........
        db   $00,$70,$70,$78,$1C,$0E,$04,$00 ; 8F3A 00 70 70 78 1C 0E 04 00  .ppx....
        db   $C3,$A5,$5A,$24,$24,$5A,$A5,$C3 ; 8F42 C3 A5 5A 24 24 5A A5 C3  ..Z$$Z..
        db   $00,$42,$24,$18,$18,$24,$42,$00 ; 8F4A 00 42 24 18 18 24 42 00  .B$..$B.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8F52:
        jsr     MapEventSystem_Entry_8F5F       ; 8F52 20 5F 8F                  _.
        jsr     MapEventSystem_Entry_9073       ; 8F55 20 73 90                  s.
        jsr     WaitForNmi                      ; 8F58 20 74 FF                  t.
        jsr     MapEventSystem_Entry_8F6A       ; 8F5B 20 6A 8F                  j.
        rts                                     ; 8F5E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8F5F:
        jsr     MapEventSystem_Entry_902F       ; 8F5F 20 2F 90                  /.
        ldx     #$99                            ; 8F62 A2 99                    ..
        ldy     #$90                            ; 8F64 A0 90                    ..
        jsr     MapEventSystem_Entry_9062       ; 8F66 20 62 90                  b.
        rts                                     ; 8F69 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8F6A:
        jsr     MapEventSystem_Entry_90B2       ; 8F6A 20 B2 90                  ..
        jsr     MapEventSystem_Entry_908C       ; 8F6D 20 8C 90                  ..
        jsr     MapEventSystem_Entry_8FC3       ; 8F70 20 C3 8F                  ..
        jsr     MapEventSystem_Entry_8F85       ; 8F73 20 85 8F                  ..
        jsr     MapEventSystem_Entry_8FC2       ; 8F76 20 C2 8F                  ..
        jsr     MapEventSystem_Entry_8FD3       ; 8F79 20 D3 8F                  ..
        jsr     WaitForNmi                      ; 8F7C 20 74 FF                  t.
        jsr     MapEventSystem_Entry_9021       ; 8F7F 20 21 90                  !.
        jmp     MapEventSystem_Entry_8F6A       ; 8F82 4C 6A 8F                 Lj.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8F85:
        ldy     #$01                            ; 8F85 A0 01                    ..
MapEventSystem_Entry_8F87:
        ldx     #$00                            ; 8F87 A2 00                    ..
MapEventSystem_Branch_8F89:
        lda     $7F00,x                         ; 8F89 BD 00 7F                 ...
        sta     PPUSCROLL                       ; 8F8C 8D 05 20                 ..
        lda     $0509                           ; 8F8F AD 09 05                 ...
        sta     PPUSCROLL                       ; 8F92 8D 05 20                 ..
        txa                                     ; 8F95 8A                       .
        pha                                     ; 8F96 48                       H
        ldx     #$0C                            ; 8F97 A2 0C                    ..
MapEventSystem_Branch_8F99:
        dex                                     ; 8F99 CA                       .
        bne     MapEventSystem_Branch_8F99      ; 8F9A D0 FD                    ..
        and     $00                             ; 8F9C 25 00                    %.
        pla                                     ; 8F9E 68                       h
        tax                                     ; 8F9F AA                       .
        inx                                     ; 8FA0 E8                       .
        txa                                     ; 8FA1 8A                       .
        and     #$07                            ; 8FA2 29 07                    ).
        bne     MapEventSystem_Branch_8FA8      ; 8FA4 D0 02                    ..
        beq     MapEventSystem_Branch_8FB0      ; 8FA6 F0 08                    ..
MapEventSystem_Branch_8FA8:
        nop                                     ; 8FA8 EA                       .
        nop                                     ; 8FA9 EA                       .
        nop                                     ; 8FAA EA                       .
        and     $00                             ; 8FAB 25 00                    %.
        jmp     MapEventSystem_Branch_8F89      ; 8FAD 4C 89 8F                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_8FB0:
        and     $00                             ; 8FB0 25 00                    %.
        and     $00                             ; 8FB2 25 00                    %.
        and     $00                             ; 8FB4 25 00                    %.
        and     $00                             ; 8FB6 25 00                    %.
        nop                                     ; 8FB8 EA                       .
        nop                                     ; 8FB9 EA                       .
        cpx     #$40                            ; 8FBA E0 40                    .@
        bne     MapEventSystem_Branch_8F89      ; 8FBC D0 CB                    ..
        dey                                     ; 8FBE 88                       .
        bne     MapEventSystem_Entry_8F87       ; 8FBF D0 C6                    ..
        rts                                     ; 8FC1 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8FC2:
        rts                                     ; 8FC2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8FC3:
        ldy     #$05                            ; 8FC3 A0 05                    ..
        ldx     #$00                            ; 8FC5 A2 00                    ..
MapEventSystem_Branch_8FC7:
        dex                                     ; 8FC7 CA                       .
        bne     MapEventSystem_Branch_8FC7      ; 8FC8 D0 FD                    ..
        dey                                     ; 8FCA 88                       .
        bne     MapEventSystem_Branch_8FC7      ; 8FCB D0 FA                    ..
MapEventSystem_Branch_8FCD:
        bit     PPUSTATUS                       ; 8FCD 2C 02 20                 ,.
        bvc     MapEventSystem_Branch_8FCD      ; 8FD0 50 FB                    P.
        rts                                     ; 8FD2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_8FD3:
        lda     $53                             ; 8FD3 A5 53                    .S
        cmp     #$20                            ; 8FD5 C9 20                    .
        bcc     MapEventSystem_Branch_9020      ; 8FD7 90 47                    .G
        sbc     #$20                            ; 8FD9 E9 20                    .
        lsr     a                               ; 8FDB 4A                       J
        clc                                     ; 8FDC 18                       .
        adc     #$01                            ; 8FDD 69 01                    i.
        asl     a                               ; 8FDF 0A                       .
        asl     a                               ; 8FE0 0A                       .
        asl     a                               ; 8FE1 0A                       .
        asl     a                               ; 8FE2 0A                       .
        sta     $54                             ; 8FE3 85 54                    .T
        ldx     #$00                            ; 8FE5 A2 00                    ..
        lda     #$BF                            ; 8FE7 A9 BF                    ..
        sta     $0300,x                         ; 8FE9 9D 00 03                 ...
        lda     #$20                            ; 8FEC A9 20                    .
        sta     $0301,x                         ; 8FEE 9D 01 03                 ...
        lda     #$00                            ; 8FF1 A9 00                    ..
        sta     NextTextCharacter,x             ; 8FF3 9D 02 03                 ...
        ldy     #$01                            ; 8FF6 A0 01                    ..
MapEventSystem_Branch_8FF8:
        txa                                     ; 8FF8 8A                       .
        and     #$03                            ; 8FF9 29 03                    ).
        beq     MapEventSystem_Branch_9009      ; 8FFB F0 0C                    ..
        lda     $05FC,y                         ; 8FFD B9 FC 05                 ...
        sec                                     ; 9000 38                       8
        sbc     $54                             ; 9001 E5 54                    .T
        cmp     #$40                            ; 9003 C9 40                    .@
        bcc     MapEventSystem_Branch_900D      ; 9005 90 06                    ..
        bcs     MapEventSystem_Branch_900A      ; 9007 B0 01                    ..
MapEventSystem_Branch_9009:
        dey                                     ; 9009 88                       .
MapEventSystem_Branch_900A:
        lda     $05FC                           ; 900A AD FC 05                 ...
MapEventSystem_Branch_900D:
        sta     $0303,x                         ; 900D 9D 03 03                 ...
        inx                                     ; 9010 E8                       .
        iny                                     ; 9011 C8                       .
        cpy     #$20                            ; 9012 C0 20                    .
        bcc     MapEventSystem_Branch_8FF8      ; 9014 90 E2                    ..
        inc     $050B                           ; 9016 EE 0B 05                 ...
        lda     $1F                             ; 9019 A5 1F                    ..
        ora     #$20                            ; 901B 09 20                    .
        sta     $1F                             ; 901D 85 1F                    ..
        rts                                     ; 901F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9020:
        rts                                     ; 9020 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9021:
        lda     $53                             ; 9021 A5 53                    .S
        cmp     #$28                            ; 9023 C9 28                    .(
        bcc     MapEventSystem_Branch_902E      ; 9025 90 07                    ..
        lda     $51                             ; 9027 A5 51                    .Q
        sta     $059D                           ; 9029 8D 9D 05                 ...
        pla                                     ; 902C 68                       h
        pla                                     ; 902D 68                       h
MapEventSystem_Branch_902E:
        rts                                     ; 902E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_902F:
        ldx     #$00                            ; 902F A2 00                    ..
        lda     #$80                            ; 9031 A9 80                    ..
        sta     $0300,x                         ; 9033 9D 00 03                 ...
        lda     #$10                            ; 9036 A9 10                    ..
        sta     $0301,x                         ; 9038 9D 01 03                 ...
        lda     #$00                            ; 903B A9 00                    ..
        sta     NextTextCharacter,x             ; 903D 9D 02 03                 ...
MapEventSystem_Branch_9040:
        lda     Bank1D_GraphicsInitializationTemplate,x; 9040 BD 52 90          .R.
        sta     $0303,x                         ; 9043 9D 03 03                 ...
        inx                                     ; 9046 E8                       .
        cpx     #$10                            ; 9047 E0 10                    ..
        bcc     MapEventSystem_Branch_9040      ; 9049 90 F5                    ..
        inc     $050B                           ; 904B EE 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; 904E 20 2D C6                  -.
        rts                                     ; 9051 60                       `
; ----------------------------------------------------------------------------
Bank1D_GraphicsInitializationTemplate:
        db   $FF,$FF,$00,$00,$00,$00,$00,$00 ; 9052 FF FF 00 00 00 00 00 00  ........
        db   $FF,$FF,$00,$00,$00,$00,$00,$00 ; 905A FF FF 00 00 00 00 00 00  ........
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9062:
        sty     $0200                           ; 9062 8C 00 02                 ...
        lda     #$00                            ; 9065 A9 00                    ..
        sta     $0201                           ; 9067 8D 01 02                 ...
        lda     #$20                            ; 906A A9 20                    .
        sta     $0202                           ; 906C 8D 02 02                 ...
        stx     $0203                           ; 906F 8E 03 02                 ...
        rts                                     ; 9072 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9073:
        lda     #$00                            ; 9073 A9 00                    ..
        sta     $51                             ; 9075 85 51                    .Q
        sta     $52                             ; 9077 85 52                    .R
        sta     $53                             ; 9079 85 53                    .S
        ldx     #$3F                            ; 907B A2 3F                    .?
MapEventSystem_Branch_907D:
        lda     $0508                           ; 907D AD 08 05                 ...
        sta     $7F00,x                         ; 9080 9D 00 7F                 ...
        lda     #$00                            ; 9083 A9 00                    ..
        sta     $7F40,x                         ; 9085 9D 40 7F                 .@.
        dex                                     ; 9088 CA                       .
        bpl     MapEventSystem_Branch_907D      ; 9089 10 F2                    ..
        rts                                     ; 908B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_908C:
        ldx     #$00                            ; 908C A2 00                    ..
        lda     $7F00,x                         ; 908E BD 00 7F                 ...
        pha                                     ; 9091 48                       H
        lda     $7F40,x                         ; 9092 BD 40 7F                 .@.
        pha                                     ; 9095 48                       H
MapEventSystem_Branch_9096:
        lda     $7F01,x                         ; 9096 BD 01 7F                 ...
        sta     $7F00,x                         ; 9099 9D 00 7F                 ...
        lda     $7F41,x                         ; 909C BD 41 7F                 .A.
        sta     $7F40,x                         ; 909F 9D 40 7F                 .@.
        inx                                     ; 90A2 E8                       .
        cpx     #$40                            ; 90A3 E0 40                    .@
        bcc     MapEventSystem_Branch_9096      ; 90A5 90 EF                    ..
        pla                                     ; 90A7 68                       h
        sta     $7F7F                           ; 90A8 8D 7F 7F                 ...
        pla                                     ; 90AB 68                       h
        sta     $7F3F                           ; 90AC 8D 3F 7F                 .?.
        dec     $51                             ; 90AF C6 51                    .Q
        rts                                     ; 90B1 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_90B2:
        inc     $52                             ; 90B2 E6 52                    .R
        lda     $52                             ; 90B4 A5 52                    .R
        and     #$07                            ; 90B6 29 07                    ).
        bne     MapEventSystem_Branch_90E1      ; 90B8 D0 27                    .'
        lda     $51                             ; 90BA A5 51                    .Q
        and     #$3F                            ; 90BC 29 3F                    )?
        tay                                     ; 90BE A8                       .
        ldx     #$00                            ; 90BF A2 00                    ..
MapEventSystem_Branch_90C1:
        lda     $7F40,y                         ; 90C1 B9 40 7F                 .@.
        clc                                     ; 90C4 18                       .
        adc     Bank1D_MapMotionDeltas,x        ; 90C5 7D EF 90                 }..
        sta     $7F40,y                         ; 90C8 99 40 7F                 .@.
        lda     $7F00,y                         ; 90CB B9 00 7F                 ...
        adc     $912F,x                         ; 90CE 7D 2F 91                 }/.
        sta     $7F00,y                         ; 90D1 99 00 7F                 ...
        iny                                     ; 90D4 C8                       .
        tya                                     ; 90D5 98                       .
        and     #$3F                            ; 90D6 29 3F                    )?
        tay                                     ; 90D8 A8                       .
        inx                                     ; 90D9 E8                       .
        cpx     #$40                            ; 90DA E0 40                    .@
        bcc     MapEventSystem_Branch_90C1      ; 90DC 90 E3                    ..
        inc     $53                             ; 90DE E6 53                    .S
        rts                                     ; 90E0 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_90E1:
        and     $00                             ; 90E1 25 00                    %.
        nop                                     ; 90E3 EA                       .
        nop                                     ; 90E4 EA                       .
        ldx     #$00                            ; 90E5 A2 00                    ..
MapEventSystem_Branch_90E7:
        and     $00                             ; 90E7 25 00                    %.
        nop                                     ; 90E9 EA                       .
        nop                                     ; 90EA EA                       .
        dex                                     ; 90EB CA                       .
        bne     MapEventSystem_Branch_90E7      ; 90EC D0 F9                    ..
        rts                                     ; 90EE 60                       `
; ----------------------------------------------------------------------------
Bank1D_MapMotionDeltas:
        db   $00,$30,$60,$80,$B0,$E0,$10,$30 ; 90EF 00 30 60 80 B0 E0 10 30  .0`....0
        db   $50,$70,$90,$B0,$C0,$D0,$E0,$E0 ; 90F7 50 70 90 B0 C0 D0 E0 E0  Pp......
        db   $F0,$E0,$E0,$D0,$C0,$B0,$90,$70 ; 90FF F0 E0 E0 D0 C0 B0 90 70  .......p
        db   $50,$30,$10,$E0,$B0,$80,$60,$30 ; 9107 50 30 10 E0 B0 80 60 30  P0....`0
        db   $00,$D0,$A0,$80,$50,$20,$F0,$D0 ; 910F 00 D0 A0 80 50 20 F0 D0  ....P ..
        db   $B0,$90,$70,$50,$40,$30,$20,$20 ; 9117 B0 90 70 50 40 30 20 20  ..pP@0
        db   $10,$20,$20,$30,$40,$50,$70,$90 ; 911F 10 20 20 30 40 50 70 90  .  0@Pp.
        db   $B0,$D0,$F0,$20,$50,$80,$A0,$D0 ; 9127 B0 D0 F0 20 50 80 A0 D0  ... P...
        db   $00,$00,$00,$00,$00,$00,$01,$01 ; 912F 00 00 00 00 00 00 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 9137 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 913F 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$00,$00,$00,$00,$00 ; 9147 01 01 01 00 00 00 00 00  ........
        db   $00,$FF,$FF,$FF,$FF,$FF,$FE,$FE ; 914F 00 FF FF FF FF FF FE FE  ........
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; 9157 FE FE FE FE FE FE FE FE  ........
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; 915F FE FE FE FE FE FE FE FE  ........
        db   $FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF ; 9167 FE FE FE FF FF FF FF FF  ........
        db   $BF,$C5,$CB,$D1,$D7,$DD,$E6,$EF ; 916F BF C5 CB D1 D7 DD E6 EF  ........
        db   $F8,$FE,$07,$10,$19,$22,$28,$31 ; 9177 F8 FE 07 10 19 22 28 31  ....."(1
        db   $3A,$43,$49,$4F,$55,$5B,$61,$64 ; 917F 3A 43 49 4F 55 5B 61 64  :CIOU[ad
        db   $67,$6A,$6A,$BC,$B9,$B6,$B6     ; 9187 67 6A 6A BC B9 B6 B6     gjj....
; ----------------------------------------------------------------------------
MapEventSystem_Entry_918E:
        jsr     MapEventSystem_Entry_91C4       ; 918E 20 C4 91                  ..
        jsr     MapEventSystem_Entry_91B9       ; 9191 20 B9 91                  ..
        jsr     MapEventSystem_Entry_919B       ; 9194 20 9B 91                  ..
        jsr     MapEventSystem_Entry_91AE       ; 9197 20 AE 91                  ..
        rts                                     ; 919A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_919B:
        lda     #$20                            ; 919B A9 20                    .
        sta     $00                             ; 919D 85 00                    ..
        lda     #$00                            ; 919F A9 00                    ..
        sta     $01                             ; 91A1 85 01                    ..
        ldy     #$00                            ; 91A3 A0 00                    ..
MapEventSystem_Branch_91A5:
        jsr     MapEventSystem_Entry_91F0       ; 91A5 20 F0 91                  ..
        iny                                     ; 91A8 C8                       .
        cpy     #$0F                            ; 91A9 C0 0F                    ..
        bcc     MapEventSystem_Branch_91A5      ; 91AB 90 F8                    ..
        rts                                     ; 91AD 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_91AE:
        ldy     #$0E                            ; 91AE A0 0E                    ..
MapEventSystem_Branch_91B0:
        jsr     MapEventSystem_Entry_91F0       ; 91B0 20 F0 91                  ..
        dey                                     ; 91B3 88                       .
        cpy     #$FF                            ; 91B4 C0 FF                    ..
        bne     MapEventSystem_Branch_91B0      ; 91B6 D0 F8                    ..
        rts                                     ; 91B8 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_91B9:
        ldy     #$0E                            ; 91B9 A0 0E                    ..
MapEventSystem_Branch_91BB:
        jsr     MapEventSystem_Entry_91D7       ; 91BB 20 D7 91                  ..
        dey                                     ; 91BE 88                       .
        cpy     #$FF                            ; 91BF C0 FF                    ..
        bne     MapEventSystem_Branch_91BB      ; 91C1 D0 F8                    ..
        rts                                     ; 91C3 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_91C4:
        lda     #$24                            ; 91C4 A9 24                    .$
        sta     $00                             ; 91C6 85 00                    ..
        lda     #$0E                            ; 91C8 A9 0E                    ..
        sta     $01                             ; 91CA 85 01                    ..
        ldy     #$00                            ; 91CC A0 00                    ..
MapEventSystem_Branch_91CE:
        jsr     MapEventSystem_Entry_91D7       ; 91CE 20 D7 91                  ..
        iny                                     ; 91D1 C8                       .
        cpy     #$0F                            ; 91D2 C0 0F                    ..
        bcc     MapEventSystem_Branch_91CE      ; 91D4 90 F8                    ..
        rts                                     ; 91D6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_91D7:
        lda     $00                             ; 91D7 A5 00                    ..
        sta     PPUADDR                         ; 91D9 8D 06 20                 ..
        lda     $01                             ; 91DC A5 01                    ..
        sta     PPUADDR                         ; 91DE 8D 06 20                 ..
        jsr     MapEventSystem_Entry_91F6       ; 91E1 20 F6 91                  ..
MapEventSystem_Branch_91E4:
        lda     $01                             ; 91E4 A5 01                    ..
        clc                                     ; 91E6 18                       .
        adc     #$20                            ; 91E7 69 20                    i
        sta     $01                             ; 91E9 85 01                    ..
        bcc     MapEventSystem_Branch_91EF      ; 91EB 90 02                    ..
        inc     $00                             ; 91ED E6 00                    ..
MapEventSystem_Branch_91EF:
        rts                                     ; 91EF 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_91F0:
        jsr     MapEventSystem_Entry_9204       ; 91F0 20 04 92                  ..
        jmp     MapEventSystem_Branch_91E4      ; 91F3 4C E4 91                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_91F6:
        ldx     Bank1D_PpuBlankWidths,y         ; 91F6 BE 1B 92                 ...
        beq     MapEventSystem_Branch_9203      ; 91F9 F0 08                    ..
        lda     #$00                            ; 91FB A9 00                    ..
MapEventSystem_Branch_91FD:
        sta     PPUDATA                         ; 91FD 8D 07 20                 ..
        dex                                     ; 9200 CA                       .
        bne     MapEventSystem_Branch_91FD      ; 9201 D0 FA                    ..
MapEventSystem_Branch_9203:
        rts                                     ; 9203 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9204:
        lda     #$12                            ; 9204 A9 12                    ..
        sec                                     ; 9206 38                       8
        sbc     Bank1D_PpuBlankWidths,y         ; 9207 F9 1B 92                 ...
        clc                                     ; 920A 18                       .
        adc     $01                             ; 920B 65 01                    e.
        pha                                     ; 920D 48                       H
        lda     $00                             ; 920E A5 00                    ..
        sta     PPUADDR                         ; 9210 8D 06 20                 ..
        pla                                     ; 9213 68                       h
        sta     PPUADDR                         ; 9214 8D 06 20                 ..
        jmp     MapEventSystem_Entry_91F6       ; 9217 4C F6 91                 L..
; ----------------------------------------------------------------------------
        db   $60                             ; 921A 60                       `
Bank1D_PpuBlankWidths:
        db   $12,$12,$12,$12,$0F,$0C,$0A,$09 ; 921B 12 12 12 12 0F 0C 0A 09  ........
        db   $08,$07,$06,$06,$05,$05,$04     ; 9223 08 07 06 06 05 05 04     .......
; ----------------------------------------------------------------------------
MapEventSystem_Entry_922A:
        jsr     MapEventSystem_Entry_93CA       ; 922A 20 CA 93                  ..
        jsr     InitializeOamShadow             ; 922D 20 43 C5                  C.
        jsr     WaitForNmi                      ; 9230 20 74 FF                  t.
        jsr     MapEventSystem_Entry_9240       ; 9233 20 40 92                  @.
        jsr     MapEventSystem_Entry_925C       ; 9236 20 5C 92                  \.
        jsr     MapEventSystem_Entry_924D       ; 9239 20 4D 92                  M.
        brk                                     ; 923C 00                       .
        db   $0A,$6F                         ; 923D 0A 6F                    .o
; ----------------------------------------------------------------------------
        rts                                     ; 923F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9240:
        lda     Bank1D_NmiCallbackPointerA      ; 9240 AD 5A 92                 .Z.
        sta     $0503                           ; 9243 8D 03 05                 ...
        lda     $925B                           ; 9246 AD 5B 92                 .[.
        sta     $0504                           ; 9249 8D 04 05                 ...
        rts                                     ; 924C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_924D:
        lda     $C0D2                           ; 924D AD D2 C0                 ...
        sta     $0503                           ; 9250 8D 03 05                 ...
        lda     $C0D3                           ; 9253 AD D3 C0                 ...
        sta     $0504                           ; 9256 8D 04 05                 ...
        rts                                     ; 9259 60                       `
; ----------------------------------------------------------------------------
Bank1D_NmiCallbackPointerA:
        db   $73                             ; 925A 73                       s
        db   $92                             ; 925B 92                       .
; ----------------------------------------------------------------------------
MapEventSystem_Entry_925C:
        jsr     MapEventSystem_Entry_9282       ; 925C 20 82 92                  ..
        jsr     MapEventSystem_Entry_938D       ; 925F 20 8D 93                  ..
        jsr     MapEventSystem_Entry_908C       ; 9262 20 8C 90                  ..
        jsr     MapEventSystem_Entry_93F0       ; 9265 20 F0 93                  ..
        tsx                                     ; 9268 BA                       .
        stx     $0F                             ; 9269 86 0F                    ..
        ldy     #$03                            ; 926B A0 03                    ..
        jsr     MapEventSystem_Entry_8F87       ; 926D 20 87 8F                  ..
MapEventSystem_Branch_9270:
        jmp     MapEventSystem_Branch_9270      ; 9270 4C 70 92                 Lp.
; ----------------------------------------------------------------------------
Bank1D_NmiCallbackA:
        pla                                     ; 9273 68                       h
        pla                                     ; 9274 68                       h
        pla                                     ; 9275 68                       h
        ldx     $0F                             ; 9276 A6 0F                    ..
        txs                                     ; 9278 9A                       .
        jsr     MapEventSystem_Entry_92B5       ; 9279 20 B5 92                  ..
        jsr     MapEventSystem_Entry_9021       ; 927C 20 21 90                  !.
        jmp     MapEventSystem_Entry_925C       ; 927F 4C 5C 92                 L\.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9282:
        lda     PPUSTATUS                       ; 9282 AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 9285 30 FB                    0.
        lda     PPUSTATUS                       ; 9287 AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 928A 30 F6                    0.
        lda     PPUSTATUS                       ; 928C AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 928F 30 F1                    0.
        lda     PPUSTATUS                       ; 9291 AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 9294 30 EC                    0.
        lda     PPUSTATUS                       ; 9296 AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 9299 30 E7                    0.
        lda     PPUSTATUS                       ; 929B AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 929E 30 E2                    0.
        lda     PPUSTATUS                       ; 92A0 AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 92A3 30 DD                    0.
        lda     PPUSTATUS                       ; 92A5 AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 92A8 30 D8                    0.
        lda     PPUSTATUS                       ; 92AA AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 92AD 30 D3                    0.
        lda     PPUSTATUS                       ; 92AF AD 02 20                 ..
        bmi     MapEventSystem_Entry_9282       ; 92B2 30 CE                    0.
        rts                                     ; 92B4 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_92B5:
        lda     PPUSTATUS                       ; 92B5 AD 02 20                 ..
        lda     #$3F                            ; 92B8 A9 3F                    .?
        sta     PPUADDR                         ; 92BA 8D 06 20                 ..
        lda     #$00                            ; 92BD A9 00                    ..
        sta     PPUADDR                         ; 92BF 8D 06 20                 ..
        lda     $0300                           ; 92C2 AD 00 03                 ...
        sta     PPUDATA                         ; 92C5 8D 07 20                 ..
        lda     $0301                           ; 92C8 AD 01 03                 ...
        sta     PPUDATA                         ; 92CB 8D 07 20                 ..
        lda     NextTextCharacter               ; 92CE AD 02 03                 ...
        sta     PPUDATA                         ; 92D1 8D 07 20                 ..
        lda     $0303                           ; 92D4 AD 03 03                 ...
        sta     PPUDATA                         ; 92D7 8D 07 20                 ..
        lda     $0304                           ; 92DA AD 04 03                 ...
        sta     PPUDATA                         ; 92DD 8D 07 20                 ..
        lda     $0305                           ; 92E0 AD 05 03                 ...
        sta     PPUDATA                         ; 92E3 8D 07 20                 ..
        lda     $0306                           ; 92E6 AD 06 03                 ...
        sta     PPUDATA                         ; 92E9 8D 07 20                 ..
        lda     $0307                           ; 92EC AD 07 03                 ...
        sta     PPUDATA                         ; 92EF 8D 07 20                 ..
        lda     $0308                           ; 92F2 AD 08 03                 ...
        sta     PPUDATA                         ; 92F5 8D 07 20                 ..
        lda     $0309                           ; 92F8 AD 09 03                 ...
        sta     PPUDATA                         ; 92FB 8D 07 20                 ..
        lda     $030A                           ; 92FE AD 0A 03                 ...
        sta     PPUDATA                         ; 9301 8D 07 20                 ..
        lda     $030B                           ; 9304 AD 0B 03                 ...
        sta     PPUDATA                         ; 9307 8D 07 20                 ..
        lda     $030C                           ; 930A AD 0C 03                 ...
        sta     PPUDATA                         ; 930D 8D 07 20                 ..
        lda     $030D                           ; 9310 AD 0D 03                 ...
        sta     PPUDATA                         ; 9313 8D 07 20                 ..
        lda     $030E                           ; 9316 AD 0E 03                 ...
        sta     PPUDATA                         ; 9319 8D 07 20                 ..
        lda     $030F                           ; 931C AD 0F 03                 ...
        sta     PPUDATA                         ; 931F 8D 07 20                 ..
        lda     $0310                           ; 9322 AD 10 03                 ...
        sta     PPUDATA                         ; 9325 8D 07 20                 ..
        lda     $0311                           ; 9328 AD 11 03                 ...
        sta     PPUDATA                         ; 932B 8D 07 20                 ..
        lda     $0312                           ; 932E AD 12 03                 ...
        sta     PPUDATA                         ; 9331 8D 07 20                 ..
        lda     $0313                           ; 9334 AD 13 03                 ...
        sta     PPUDATA                         ; 9337 8D 07 20                 ..
        lda     $0314                           ; 933A AD 14 03                 ...
        sta     PPUDATA                         ; 933D 8D 07 20                 ..
        lda     $0315                           ; 9340 AD 15 03                 ...
        sta     PPUDATA                         ; 9343 8D 07 20                 ..
        lda     $0316                           ; 9346 AD 16 03                 ...
        sta     PPUDATA                         ; 9349 8D 07 20                 ..
        lda     $0317                           ; 934C AD 17 03                 ...
        sta     PPUDATA                         ; 934F 8D 07 20                 ..
        lda     $0318                           ; 9352 AD 18 03                 ...
        sta     PPUDATA                         ; 9355 8D 07 20                 ..
        lda     $0319                           ; 9358 AD 19 03                 ...
        sta     PPUDATA                         ; 935B 8D 07 20                 ..
        lda     $031A                           ; 935E AD 1A 03                 ...
        sta     PPUDATA                         ; 9361 8D 07 20                 ..
        lda     $031B                           ; 9364 AD 1B 03                 ...
        sta     PPUDATA                         ; 9367 8D 07 20                 ..
        lda     $031C                           ; 936A AD 1C 03                 ...
        sta     PPUDATA                         ; 936D 8D 07 20                 ..
        lda     $031D                           ; 9370 AD 1D 03                 ...
        sta     PPUDATA                         ; 9373 8D 07 20                 ..
        lda     $031E                           ; 9376 AD 1E 03                 ...
        sta     PPUDATA                         ; 9379 8D 07 20                 ..
        lda     $031F                           ; 937C AD 1F 03                 ...
        sta     PPUDATA                         ; 937F 8D 07 20                 ..
        lda     #$80                            ; 9382 A9 80                    ..
        sta     PPUSCROLL                       ; 9384 8D 05 20                 ..
        lda     #$00                            ; 9387 A9 00                    ..
        sta     PPUSCROLL                       ; 9389 8D 05 20                 ..
        rts                                     ; 938C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_938D:
        inc     $52                             ; 938D E6 52                    .R
        lda     $52                             ; 938F A5 52                    .R
        and     #$07                            ; 9391 29 07                    ).
        bne     MapEventSystem_Branch_93BC      ; 9393 D0 27                    .'
        lda     $51                             ; 9395 A5 51                    .Q
        and     #$3F                            ; 9397 29 3F                    )?
        tay                                     ; 9399 A8                       .
        ldx     #$00                            ; 939A A2 00                    ..
MapEventSystem_Branch_939C:
        lda     $7F40,y                         ; 939C B9 40 7F                 .@.
        sec                                     ; 939F 38                       8
        sbc     Bank1D_MapMotionDeltas,x        ; 93A0 FD EF 90                 ...
        sta     $7F40,y                         ; 93A3 99 40 7F                 .@.
        lda     $7F00,y                         ; 93A6 B9 00 7F                 ...
        sbc     $912F,x                         ; 93A9 FD 2F 91                 ./.
        sta     $7F00,y                         ; 93AC 99 00 7F                 ...
        iny                                     ; 93AF C8                       .
        tya                                     ; 93B0 98                       .
        and     #$3F                            ; 93B1 29 3F                    )?
        tay                                     ; 93B3 A8                       .
        inx                                     ; 93B4 E8                       .
        cpx     #$40                            ; 93B5 E0 40                    .@
        bcc     MapEventSystem_Branch_939C      ; 93B7 90 E3                    ..
        inc     $53                             ; 93B9 E6 53                    .S
        rts                                     ; 93BB 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_93BC:
        and     $00                             ; 93BC 25 00                    %.
        nop                                     ; 93BE EA                       .
        nop                                     ; 93BF EA                       .
        ldx     #$00                            ; 93C0 A2 00                    ..
MapEventSystem_Branch_93C2:
        and     $00                             ; 93C2 25 00                    %.
        nop                                     ; 93C4 EA                       .
        nop                                     ; 93C5 EA                       .
        dex                                     ; 93C6 CA                       .
        bne     MapEventSystem_Branch_93C2      ; 93C7 D0 F9                    ..
        rts                                     ; 93C9 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_93CA:
        lda     $059D                           ; 93CA AD 9D 05                 ...
        sta     $51                             ; 93CD 85 51                    .Q
        ldx     #$00                            ; 93CF A2 00                    ..
        stx     $52                             ; 93D1 86 52                    .R
        stx     $53                             ; 93D3 86 53                    .S
        ldy     #$01                            ; 93D5 A0 01                    ..
MapEventSystem_Branch_93D7:
        txa                                     ; 93D7 8A                       .
        and     #$03                            ; 93D8 29 03                    ).
        beq     MapEventSystem_Branch_93E2      ; 93DA F0 06                    ..
        lda     $05FC,y                         ; 93DC B9 FC 05                 ...
        jmp     MapEventSystem_Branch_93E6      ; 93DF 4C E6 93                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_93E2:
        dey                                     ; 93E2 88                       .
        lda     $05FC                           ; 93E3 AD FC 05                 ...
MapEventSystem_Branch_93E6:
        sta     $0300,x                         ; 93E6 9D 00 03                 ...
        inx                                     ; 93E9 E8                       .
        iny                                     ; 93EA C8                       .
        cpy     #$20                            ; 93EB C0 20                    .
        bcc     MapEventSystem_Branch_93D7      ; 93ED 90 E8                    ..
        rts                                     ; 93EF 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_93F0:
        lda     $53                             ; 93F0 A5 53                    .S
        cmp     #$08                            ; 93F2 C9 08                    ..
        bcs     MapEventSystem_Branch_9422      ; 93F4 B0 2C                    .,
        lsr     a                               ; 93F6 4A                       J
        eor     #$03                            ; 93F7 49 03                    I.
        asl     a                               ; 93F9 0A                       .
MapEventSystem_Branch_93FA:
        asl     a                               ; 93FA 0A                       .
        asl     a                               ; 93FB 0A                       .
        asl     a                               ; 93FC 0A                       .
        sta     $54                             ; 93FD 85 54                    .T
        ldx     #$00                            ; 93FF A2 00                    ..
        ldy     #$01                            ; 9401 A0 01                    ..
MapEventSystem_Branch_9403:
        txa                                     ; 9403 8A                       .
        and     #$03                            ; 9404 29 03                    ).
        beq     MapEventSystem_Branch_9414      ; 9406 F0 0C                    ..
        lda     $05FC,y                         ; 9408 B9 FC 05                 ...
        sec                                     ; 940B 38                       8
        sbc     $54                             ; 940C E5 54                    .T
        cmp     #$40                            ; 940E C9 40                    .@
        bcc     MapEventSystem_Branch_9418      ; 9410 90 06                    ..
        bcs     MapEventSystem_Branch_9415      ; 9412 B0 01                    ..
MapEventSystem_Branch_9414:
        dey                                     ; 9414 88                       .
MapEventSystem_Branch_9415:
        lda     $05FC                           ; 9415 AD FC 05                 ...
MapEventSystem_Branch_9418:
        sta     $0300,x                         ; 9418 9D 00 03                 ...
        inx                                     ; 941B E8                       .
        iny                                     ; 941C C8                       .
        cpy     #$10                            ; 941D C0 10                    ..
        bcc     MapEventSystem_Branch_9403      ; 941F 90 E2                    ..
        rts                                     ; 9421 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9422:
        rts                                     ; 9422 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9423:
        lda     #$00                            ; 9423 A9 00                    ..
        sta     $059D                           ; 9425 8D 9D 05                 ...
        jsr     MapEventSystem_Entry_9073       ; 9428 20 73 90                  s.
        jsr     MapEventSystem_Entry_93CA       ; 942B 20 CA 93                  ..
        jsr     InitializeOamShadow             ; 942E 20 43 C5                  C.
        jsr     WaitForNmi                      ; 9431 20 74 FF                  t.
        jsr     MapEventSystem_Entry_9441       ; 9434 20 41 94                  A.
        jsr     MapEventSystem_Entry_9450       ; 9437 20 50 94                  P.
        jsr     MapEventSystem_Entry_924D       ; 943A 20 4D 92                  M.
        brk                                     ; 943D 00                       .
        db   $0C,$BF                         ; 943E 0C BF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 9440 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9441:
        lda     Bank1D_NmiCallbackPointerB      ; 9441 AD 4E 94                 .N.
        sta     $0503                           ; 9444 8D 03 05                 ...
        lda     $944F                           ; 9447 AD 4F 94                 .O.
        sta     $0504                           ; 944A 8D 04 05                 ...
        rts                                     ; 944D 60                       `
; ----------------------------------------------------------------------------
Bank1D_NmiCallbackPointerB:
        db   $67                             ; 944E 67                       g
        db   $94                             ; 944F 94                       .
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9450:
        jsr     MapEventSystem_Entry_9282       ; 9450 20 82 92                  ..
        jsr     MapEventSystem_Entry_90B2       ; 9453 20 B2 90                  ..
        jsr     MapEventSystem_Entry_908C       ; 9456 20 8C 90                  ..
        jsr     MapEventSystem_Entry_9476       ; 9459 20 76 94                  v.
        tsx                                     ; 945C BA                       .
        stx     $0F                             ; 945D 86 0F                    ..
        ldy     #$03                            ; 945F A0 03                    ..
        jsr     MapEventSystem_Entry_8F87       ; 9461 20 87 8F                  ..
MapEventSystem_Branch_9464:
        jmp     MapEventSystem_Branch_9464      ; 9464 4C 64 94                 Ld.
; ----------------------------------------------------------------------------
Bank1D_NmiCallbackB:
        pla                                     ; 9467 68                       h
        pla                                     ; 9468 68                       h
        pla                                     ; 9469 68                       h
        ldx     $0F                             ; 946A A6 0F                    ..
        txs                                     ; 946C 9A                       .
        jsr     MapEventSystem_Entry_92B5       ; 946D 20 B5 92                  ..
        jsr     MapEventSystem_Entry_9021       ; 9470 20 21 90                  !.
        jmp     MapEventSystem_Entry_9450       ; 9473 4C 50 94                 LP.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9476:
        lda     $53                             ; 9476 A5 53                    .S
        cmp     #$20                            ; 9478 C9 20                    .
        bcc     MapEventSystem_Branch_9483      ; 947A 90 07                    ..
        sbc     #$20                            ; 947C E9 20                    .
        and     #$FE                            ; 947E 29 FE                    ).
        jmp     MapEventSystem_Branch_93FA      ; 9480 4C FA 93                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9483:
        rts                                     ; 9483 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9484:
        brk                                     ; 9484 00                       .
        db   $16,$CB,$10                     ; 9485 16 CB 10                 ...
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_9616       ; 9488 20 16 96                  ..
        jsr     MapEventSystem_Entry_95B6       ; 948B 20 B6 95                  ..
        jsr     MapEventSystem_Entry_95AF       ; 948E 20 AF 95                  ..
        jsr     MapEventSystem_Entry_95A2       ; 9491 20 A2 95                  ..
        jsr     MapEventSystem_Entry_9509       ; 9494 20 09 95                  ..
        jsr     MapEventSystem_Entry_9501       ; 9497 20 01 95                  ..
        jsr     MapEventSystem_Entry_94C4       ; 949A 20 C4 94                  ..
        jsr     MapEventSystem_Entry_94AC       ; 949D 20 AC 94                  ..
        ldx     #$14                            ; 94A0 A2 14                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 94A2 20 0C C9                  ..
        lda     $1F                             ; 94A5 A5 1F                    ..
        and     #$F7                            ; 94A7 29 F7                    ).
        sta     $1F                             ; 94A9 85 1F                    ..
        rts                                     ; 94AB 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_94AC:
        brk                                     ; 94AC 00                       .
        db   $36,$4B                         ; 94AD 36 4B                    6K
; ----------------------------------------------------------------------------
        ldx     #$06                            ; 94AF A2 06                    ..
        lda     $7000,x                         ; 94B1 BD 00 70                 ..p
        and     #$FC                            ; 94B4 29 FC                    ).
        ora     #$02                            ; 94B6 09 02                    ..
        sta     $7000,x                         ; 94B8 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D804     ; 94BB 20 04 D8                  ..
        brk                                     ; 94BE 00                       .
        db   $37,$4B                         ; 94BF 37 4B                    7K
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_D218     ; 94C1 4C 18 D2                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_94C4:
        ldx     #$08                            ; 94C4 A2 08                    ..
        lda     $7000,x                         ; 94C6 BD 00 70                 ..p
        and     #$FC                            ; 94C9 29 FC                    ).
        sta     $7000,x                         ; 94CB 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D804     ; 94CE 20 04 D8                  ..
        brk                                     ; 94D1 00                       .
        db   $82,$FB                         ; 94D2 82 FB                    ..
; ----------------------------------------------------------------------------
        ldy     #$0C                            ; 94D4 A0 0C                    ..
MapEventSystem_Branch_94D6:
        tya                                     ; 94D6 98                       .
        pha                                     ; 94D7 48                       H
        ldx     $7B                             ; 94D8 A6 7B                    .{
        inc     $0200,x                         ; 94DA FE 00 02                 ...
        inc     $0204,x                         ; 94DD FE 04 02                 ...
        inc     $0208,x                         ; 94E0 FE 08 02                 ...
        inc     $020C,x                         ; 94E3 FE 0C 02                 ...
        jsr     MapEventSystem_Entry_960D       ; 94E6 20 0D 96                  ..
        ldx     #$05                            ; 94E9 A2 05                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 94EB 20 0C C9                  ..
        pla                                     ; 94EE 68                       h
        tay                                     ; 94EF A8                       .
        dey                                     ; 94F0 88                       .
        bne     MapEventSystem_Branch_94D6      ; 94F1 D0 E3                    ..
        ldx     #$06                            ; 94F3 A2 06                    ..
        lda     $7000,x                         ; 94F5 BD 00 70                 ..p
        and     #$FC                            ; 94F8 29 FC                    ).
        sta     $7000,x                         ; 94FA 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D804     ; 94FD 20 04 D8                  ..
        rts                                     ; 9500 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9501:
        brk                                     ; 9501 00                       .
        db   $07,$6F,$43                     ; 9502 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; 9505 00                       .
        db   $35,$4B                         ; 9506 35 4B                    5K
; ----------------------------------------------------------------------------
        rts                                     ; 9508 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9509:
        ldy     #$10                            ; 9509 A0 10                    ..
        ldx     #$01                            ; 950B A2 01                    ..
        jsr     MapEventSystem_Entry_958A       ; 950D 20 8A 95                  ..
        brk                                     ; 9510 00                       .
        db   $82,$FB                         ; 9511 82 FB                    ..
; ----------------------------------------------------------------------------
        ldx     $7B                             ; 9513 A6 7B                    .{
        lda     #$F7                            ; 9515 A9 F7                    ..
        sta     $0200,x                         ; 9517 9D 00 02                 ...
        sta     $0204,x                         ; 951A 9D 04 02                 ...
        sta     $0208,x                         ; 951D 9D 08 02                 ...
        sta     $020C,x                         ; 9520 9D 0C 02                 ...
        ldx     #$B4                            ; 9523 A2 B4                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 9525 20 0C C9                  ..
        ldx     #$09                            ; 9528 A2 09                    ..
        ldy     #$08                            ; 952A A0 08                    ..
        lda     $6FE0,x                         ; 952C BD E0 6F                 ..o
        sta     $6FE0,y                         ; 952F 99 E0 6F                 ..o
        ldx     $7B                             ; 9532 A6 7B                    .{
        lda     #$37                            ; 9534 A9 37                    .7
        sta     $0200,x                         ; 9536 9D 00 02                 ...
        sta     $0204,x                         ; 9539 9D 04 02                 ...
        lda     #$3F                            ; 953C A9 3F                    .?
        sta     $0208,x                         ; 953E 9D 08 02                 ...
        sta     $020C,x                         ; 9541 9D 0C 02                 ...
        lda     #$80                            ; 9544 A9 80                    ..
        sta     $0203,x                         ; 9546 9D 03 02                 ...
        sta     $020B,x                         ; 9549 9D 0B 02                 ...
        lda     #$88                            ; 954C A9 88                    ..
        sta     $0207,x                         ; 954E 9D 07 02                 ...
        sta     $020F,x                         ; 9551 9D 0F 02                 ...
        ldx     #$08                            ; 9554 A2 08                    ..
        lda     $7000,x                         ; 9556 BD 00 70                 ..p
        and     #$FC                            ; 9559 29 FC                    ).
        ora     #$02                            ; 955B 09 02                    ..
        sta     $7000,x                         ; 955D 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D804     ; 9560 20 04 D8                  ..
        brk                                     ; 9563 00                       .
        db   $82,$FB                         ; 9564 82 FB                    ..
; ----------------------------------------------------------------------------
        ldy     #$0C                            ; 9566 A0 0C                    ..
        ldx     #$05                            ; 9568 A2 05                    ..
        jsr     MapEventSystem_Entry_958A       ; 956A 20 8A 95                  ..
        ldx     #$08                            ; 956D A2 08                    ..
        lda     $7000,x                         ; 956F BD 00 70                 ..p
        ora     #$03                            ; 9572 09 03                    ..
        sta     $7000,x                         ; 9574 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D804     ; 9577 20 04 D8                  ..
        ldx     #$06                            ; 957A A2 06                    ..
        lda     $7000,x                         ; 957C BD 00 70                 ..p
        and     #$FC                            ; 957F 29 FC                    ).
        ora     #$01                            ; 9581 09 01                    ..
        sta     $7000,x                         ; 9583 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D804     ; 9586 20 04 D8                  ..
        rts                                     ; 9589 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_958A:
        tya                                     ; 958A 98                       .
        pha                                     ; 958B 48                       H
        txa                                     ; 958C 8A                       .
        pha                                     ; 958D 48                       H
        jsr     MapEventSystem_Entry_95EC       ; 958E 20 EC 95                  ..
        jsr     MapEventSystem_Entry_960D       ; 9591 20 0D 96                  ..
        pla                                     ; 9594 68                       h
        pha                                     ; 9595 48                       H
        tax                                     ; 9596 AA                       .
        jsr     UpperFixedEngine_Entry_C90C     ; 9597 20 0C C9                  ..
        pla                                     ; 959A 68                       h
        tax                                     ; 959B AA                       .
        pla                                     ; 959C 68                       h
        tay                                     ; 959D A8                       .
        dey                                     ; 959E 88                       .
        bne     MapEventSystem_Entry_958A       ; 959F D0 E9                    ..
        rts                                     ; 95A1 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_95A2:
        ldx     #$10                            ; 95A2 A2 10                    ..
        ldy     #$08                            ; 95A4 A0 08                    ..
        lda     #$16                            ; 95A6 A9 16                    ..
        brk                                     ; 95A8 00                       .
        db   $09,$EF                         ; 95A9 09 EF                    ..
; ----------------------------------------------------------------------------
        jsr     WaitForNmi                      ; 95AB 20 74 FF                  t.
        rts                                     ; 95AE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_95AF:
        brk                                     ; 95AF 00                       .
        db   $29,$FB                         ; 95B0 29 FB                    ).
; ----------------------------------------------------------------------------
        brk                                     ; 95B2 00                       .
        db   $07,$9F                         ; 95B3 07 9F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 95B5 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_95B6:
        jsr     MapEventSystem_Entry_95C7       ; 95B6 20 C7 95                  ..
MapEventSystem_Branch_95B9:
        jsr     MapEventSystem_Entry_95D8       ; 95B9 20 D8 95                  ..
        jsr     MapEventSystem_Entry_960D       ; 95BC 20 0D 96                  ..
        inc     $51                             ; 95BF E6 51                    .Q
        jsr     WaitForNmi                      ; 95C1 20 74 FF                  t.
        jmp     MapEventSystem_Branch_95B9      ; 95C4 4C B9 95                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_95C7:
        lda     #$00                            ; 95C7 A9 00                    ..
        sta     $51                             ; 95C9 85 51                    .Q
        ldx     #$08                            ; 95CB A2 08                    ..
        lda     $7000,x                         ; 95CD BD 00 70                 ..p
        and     #$3C                            ; 95D0 29 3C                    )<
        jsr     UpperFixedEngine_Entry_C78C     ; 95D2 20 8C C7                  ..
        sty     $7B                             ; 95D5 84 7B                    .{
        rts                                     ; 95D7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_95D8:
        lda     $51                             ; 95D8 A5 51                    .Q
        cmp     #$10                            ; 95DA C9 10                    ..
        bcc     MapEventSystem_Branch_95FB      ; 95DC 90 1D                    ..
        cmp     #$40                            ; 95DE C9 40                    .@
        bcs     MapEventSystem_Branch_960A      ; 95E0 B0 28                    .(
        ldx     #$08                            ; 95E2 A2 08                    ..
        lda     $7000,x                         ; 95E4 BD 00 70                 ..p
        and     #$FC                            ; 95E7 29 FC                    ).
        sta     $7000,x                         ; 95E9 9D 00 70                 ..p
MapEventSystem_Entry_95EC:
        ldx     $7B                             ; 95EC A6 7B                    .{
        dec     $0200,x                         ; 95EE DE 00 02                 ...
        dec     $0204,x                         ; 95F1 DE 04 02                 ...
        dec     $0208,x                         ; 95F4 DE 08 02                 ...
        dec     $020C,x                         ; 95F7 DE 0C 02                 ...
        rts                                     ; 95FA 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_95FB:
        ldx     $7B                             ; 95FB A6 7B                    .{
        inc     $0203,x                         ; 95FD FE 03 02                 ...
        inc     $0207,x                         ; 9600 FE 07 02                 ...
        inc     $020B,x                         ; 9603 FE 0B 02                 ...
        inc     $020F,x                         ; 9606 FE 0F 02                 ...
        rts                                     ; 9609 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_960A:
        pla                                     ; 960A 68                       h
        pla                                     ; 960B 68                       h
        rts                                     ; 960C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_960D:
        ldx     #$08                            ; 960D A2 08                    ..
        jsr     UpperFixedEngine_Entry_D804     ; 960F 20 04 D8                  ..
        jsr     UpperFixedEngine_Entry_CBB4     ; 9612 20 B4 CB                  ..
        rts                                     ; 9615 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9616:
        jsr     WaitForNmi                      ; 9616 20 74 FF                  t.
        lda     #$F7                            ; 9619 A9 F7                    ..
        cmp     $02D0                           ; 961B CD D0 02                 ...
        bne     MapEventSystem_Branch_962A      ; 961E D0 0A                    ..
        cmp     $02E0                           ; 9620 CD E0 02                 ...
        bne     MapEventSystem_Branch_962A      ; 9623 D0 05                    ..
        cmp     $02F0                           ; 9625 CD F0 02                 ...
        beq     MapEventSystem_Entry_9616       ; 9628 F0 EC                    ..
MapEventSystem_Branch_962A:
        lda     $1F                             ; 962A A5 1F                    ..
        ora     #$08                            ; 962C 09 08                    ..
        sta     $1F                             ; 962E 85 1F                    ..
        ldx     #$00                            ; 9630 A2 00                    ..
        ldy     #$38                            ; 9632 A0 38                    .8
        stx     $0203                           ; 9634 8E 03 02                 ...
        sty     $0200                           ; 9637 8C 00 02                 ...
        stx     $0207                           ; 963A 8E 07 02                 ...
        sty     $0204                           ; 963D 8C 04 02                 ...
        stx     $020B                           ; 9640 8E 0B 02                 ...
        sty     $0208                           ; 9643 8C 08 02                 ...
        stx     $020F                           ; 9646 8E 0F 02                 ...
        sty     $020C                           ; 9649 8C 0C 02                 ...
        stx     $0213                           ; 964C 8E 13 02                 ...
        sty     $0210                           ; 964F 8C 10 02                 ...
        stx     $0217                           ; 9652 8E 17 02                 ...
        sty     $0214                           ; 9655 8C 14 02                 ...
        stx     $021B                           ; 9658 8E 1B 02                 ...
        sty     $0218                           ; 965B 8C 18 02                 ...
        stx     $021F                           ; 965E 8E 1F 02                 ...
        sty     $021C                           ; 9661 8C 1C 02                 ...
        ldy     #$40                            ; 9664 A0 40                    .@
        stx     $0223                           ; 9666 8E 23 02                 .#.
        sty     $0220                           ; 9669 8C 20 02                 . .
        stx     $0227                           ; 966C 8E 27 02                 .'.
        sty     $0224                           ; 966F 8C 24 02                 .$.
        stx     $022B                           ; 9672 8E 2B 02                 .+.
        sty     $0228                           ; 9675 8C 28 02                 .(.
        stx     $022F                           ; 9678 8E 2F 02                 ./.
        sty     $022C                           ; 967B 8C 2C 02                 .,.
        stx     $0233                           ; 967E 8E 33 02                 .3.
        sty     $0230                           ; 9681 8C 30 02                 .0.
        stx     $0237                           ; 9684 8E 37 02                 .7.
        sty     $0234                           ; 9687 8C 34 02                 .4.
        stx     $023B                           ; 968A 8E 3B 02                 .;.
        sty     $0238                           ; 968D 8C 38 02                 .8.
        stx     $023F                           ; 9690 8E 3F 02                 .?.
        sty     $023C                           ; 9693 8C 3C 02                 .<.
        rts                                     ; 9696 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9697:
        lda     $41                             ; 9697 A5 41                    .A
        bpl     MapEventSystem_Branch_96B4      ; 9699 10 19                    ..
        ldx     #$00                            ; 969B A2 00                    ..
MapEventSystem_Branch_969D:
        lda     Bank1D_MapSubmapDispatchKeys,x  ; 969D BD B5 96                 ...
        cmp     #$FF                            ; 96A0 C9 FF                    ..
        beq     MapEventSystem_Branch_96B4      ; 96A2 F0 10                    ..
        cmp     CurrentMapNumber                ; 96A4 C5 63                    .c
        bne     MapEventSystem_Branch_96AF      ; 96A6 D0 07                    ..
        lda     $96B6,x                         ; 96A8 BD B6 96                 ...
        cmp     CurrentSubmapNumber             ; 96AB C5 64                    .d
        beq     MapEventSystem_Branch_96C4      ; 96AD F0 15                    ..
MapEventSystem_Branch_96AF:
        inx                                     ; 96AF E8                       .
        inx                                     ; 96B0 E8                       .
        jmp     MapEventSystem_Branch_969D      ; 96B1 4C 9D 96                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_96B4:
        rts                                     ; 96B4 60                       `
; ----------------------------------------------------------------------------
Bank1D_MapSubmapDispatchKeys:
        db   $35                             ; 96B5 35                       5
        db   $07,$01,$02,$37,$00,$00,$01,$36 ; 96B6 07 01 02 37 00 00 01 36  ...7...6
        db   $04,$34,$00,$17,$00,$FF         ; 96BE 04 34 00 17 00 FF        .4....
; ----------------------------------------------------------------------------
MapEventSystem_Branch_96C4:
        lda     Bank1D_MapSubmapHandlerPointers,x; 96C4 BD D1 96                ...
        sta     $49                           ; 96C7 85 49                    .I
        lda     $96D2,x                         ; 96C9 BD D2 96                 ...
        sta     $4A                             ; 96CC 85 4A                    .J
        jmp     ($0049)                         ; 96CE 6C 49 00                 lI.
; ----------------------------------------------------------------------------
Bank1D_MapSubmapHandlerPointers:
        db   $DF                             ; 96D1 DF                       .
        db   $96,$EE,$96,$FA,$96,$13,$97,$3E ; 96D2 96 EE 96 FA 96 13 97 3E  .......>
        db   $97,$24,$97,$30,$97             ; 96DA 97 24 97 30 97           .$.0.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_96DF:
        lda     #$00                            ; 96DF A9 00                    ..
        sta     $7684                           ; 96E1 8D 84 76                 ..v
        sta     $7685                           ; 96E4 8D 85 76                 ..v
        sta     $7686                           ; 96E7 8D 86 76                 ..v
        sta     $7687                           ; 96EA 8D 87 76                 ..v
        rts                                     ; 96ED 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_96EE:
        brk                                     ; 96EE 00                       .
        db   $04,$EB,$02,$F0,$05,$A9,$03,$8D ; 96EF 04 EB 02 F0 05 A9 03 8D  ........
        db   $72,$78,$60                     ; 96F7 72 78 60                 rx`
; ----------------------------------------------------------------------------
MapEventSystem_Entry_96FA:
        brk                                     ; 96FA 00                       .
        db   $0A,$EB,$80                     ; 96FB 0A EB 80                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_9712      ; 96FE F0 12                    ..
        ldx     #$16                            ; 9700 A2 16                    ..
        stx     $798C                           ; 9702 8E 8C 79                 ..y
        inx                                     ; 9705 E8                       .
        stx     $798D                           ; 9706 8E 8D 79                 ..y
        ldx     #$1A                            ; 9709 A2 1A                    ..
        stx     $79AE                           ; 970B 8E AE 79                 ..y
        inx                                     ; 970E E8                       .
        stx     $79AF                           ; 970F 8E AF 79                 ..y
MapEventSystem_Branch_9712:
        rts                                     ; 9712 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9713:
        brk                                     ; 9713 00                       .
        db   $16,$EB,$02,$F0,$0A,$AD,$4A,$79 ; 9714 16 EB 02 F0 0A AD 4A 79  ......Jy
        db   $29,$1F,$09,$20,$8D,$69,$79,$60 ; 971C 29 1F 09 20 8D 69 79 60  ).. .iy`
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9724:
        brk                                     ; 9724 00                       .
        db   $26,$EB,$40                     ; 9725 26 EB 40                 &.@
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_972F      ; 9728 F0 05                    ..
        lda     #$1A                            ; 972A A9 1A                    ..
        sta     $78FF                           ; 972C 8D FF 78                 ..x
MapEventSystem_Branch_972F:
        rts                                     ; 972F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9730:
        lda     $62A5                           ; 9730 AD A5 62                 ..b
        bpl     MapEventSystem_Branch_973D      ; 9733 10 08                    ..
        lda     #$05                            ; 9735 A9 05                    ..
        sta     $788F                           ; 9737 8D 8F 78                 ..x
        sta     $78AE                           ; 973A 8D AE 78                 ..x
MapEventSystem_Branch_973D:
        rts                                     ; 973D 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_973E:
        tsx                                     ; 973E BA                       .
        lda     $0108,x                         ; 973F BD 08 01                 ...
        and     #$FE                            ; 9742 29 FE                    ).
        sta     $0108,x                         ; 9744 9D 08 01                 ...
        jsr     MapEventSystem_Entry_97A4       ; 9747 20 A4 97                  ..
        jsr     MapEventSystem_Entry_9771       ; 974A 20 71 97                  q.
        jsr     MapEventSystem_Entry_9751       ; 974D 20 51 97                  Q.
        rts                                     ; 9750 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9751:
        ldx     #$19                            ; 9751 A2 19                    ..
        stx     $7876                           ; 9753 8E 76 78                 .vx
        inx                                     ; 9756 E8                       .
        stx     $7877                           ; 9757 8E 77 78                 .wx
        inx                                     ; 975A E8                       .
        stx     $788D                           ; 975B 8E 8D 78                 ..x
        inx                                     ; 975E E8                       .
        stx     $788E                           ; 975F 8E 8E 78                 ..x
        lda     #$03                            ; 9762 A9 03                    ..
        sta     $62A3                           ; 9764 8D A3 62                 ..b
        lda     #$05                            ; 9767 A9 05                    ..
        sta     $62A0                           ; 9769 8D A0 62                 ..b
        brk                                     ; 976C 00                       .
        db   $1F,$DB,$BF                     ; 976D 1F DB BF                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9770 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9771:
        ldx     #$17                            ; 9771 A2 17                    ..
MapEventSystem_Branch_9773:
        lda     $978C,x                         ; 9773 BD 8C 97                 ...
        sta     $7664,x                         ; 9776 9D 64 76                 .dv
        dex                                     ; 9779 CA                       .
        bpl     MapEventSystem_Branch_9773      ; 977A 10 F7                    ..
        ldx     #$05                            ; 977C A2 05                    ..
MapEventSystem_Branch_977E:
        lda     #$01                            ; 977E A9 01                    ..
        sta     $76D9,x                         ; 9780 9D D9 76                 ..v
        lda     #$80                            ; 9783 A9 80                    ..
        sta     $6F59,x                         ; 9785 9D 59 6F                 .Yo
        dex                                     ; 9788 CA                       .
        bpl     MapEventSystem_Branch_977E      ; 9789 10 F3                    ..
        rts                                     ; 978B 60                       `
; ----------------------------------------------------------------------------
        db   $F2,$F3,$F6,$F7,$F4,$F5,$F7,$F8 ; 978C F2 F3 F6 F7 F4 F5 F7 F8  ........
        db   $F9,$FA,$FC,$FD,$FA,$FB,$FE,$FF ; 9794 F9 FA FC FD FA FB FE FF  ........
        db   $AD,$AE,$AF,$B0,$AD,$AE,$AF,$B0 ; 979C AD AE AF B0 AD AE AF B0  ........
; ----------------------------------------------------------------------------
MapEventSystem_Entry_97A4:
        lda     PPUSTATUS                       ; 97A4 AD 02 20                 ..
        lda     #$1F                            ; 97A7 A9 1F                    ..
        sta     PPUADDR                         ; 97A9 8D 06 20                 ..
        lda     #$20                            ; 97AC A9 20                    .
        sta     PPUADDR                         ; 97AE 8D 06 20                 ..
        ldx     #$00                            ; 97B1 A2 00                    ..
MapEventSystem_Branch_97B3:
        lda     $97BF,x                         ; 97B3 BD BF 97                 ...
        sta     PPUDATA                         ; 97B6 8D 07 20                 ..
        inx                                     ; 97B9 E8                       .
        cpx     #$E0                            ; 97BA E0 E0                    ..
        bcc     MapEventSystem_Branch_97B3      ; 97BC 90 F5                    ..
        rts                                     ; 97BE 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$DF,$FE,$FC,$F8,$F1,$E1,$E6 ; 97BF FF DF FE FC F8 F1 E1 E6  ........
        db   $FF,$DF,$FE,$FD,$FB,$F7,$EF,$EF ; 97C7 FF DF FE FD FB F7 EF EF  ........
        db   $F0,$80,$17,$71,$6B,$4B,$67,$B1 ; 97CF F0 80 17 71 6B 4B 67 B1  ...qkKg.
        db   $F0,$8F,$7F,$FF,$FF,$FF,$FF,$FF ; 97D7 F0 8F 7F FF FF FF FF FF  ........
        db   $0F,$01,$B0,$7C,$4D,$32,$FA,$99 ; 97DF 0F 01 B0 7C 4D 32 FA 99  ...|M2..
        db   $0F,$F1,$FE,$FF,$FF,$FF,$FF,$FF ; 97E7 0F F1 FE FF FF FF FF FF  ........
        db   $FF,$FD,$7F,$3F,$1F,$0F,$A7,$66 ; 97EF FF FD 7F 3F 1F 0F A7 66  ...?...f
        db   $FF,$FD,$7F,$BF,$DF,$EF,$F7,$F6 ; 97F7 FF FD 7F BF DF EF F7 F6  ........
        db   $CC,$DD,$97,$BE,$BA,$3F,$7E,$7F ; 97FF CC DD 97 BE BA 3F 7E 7F  .....?~.
        db   $DF,$D7,$B9,$AF,$AF,$67,$59,$5E ; 9807 DF D7 B9 AF AF 67 59 5E  .....gY^
        db   $BF,$FC,$7D,$DB,$BB,$3E,$AF,$F9 ; 980F BF FC 7D DB BB 3E AF F9  ..}..>..
        db   $FF,$DF,$F3,$FF,$FF,$EF,$F3,$BF ; 9817 FF DF F3 FF FF EF F3 BF  ........
        db   $F3,$D3,$F9,$FD,$F5,$FC,$BE,$FE ; 981F F3 D3 F9 FD F5 FC BE FE  ........
        db   $FB,$FB,$7D,$9D,$FD,$D6,$CE,$7E ; 9827 FB FB 7D 9D FD D6 CE 7E  ..}....~
        db   $7D,$7F,$7F,$7D,$BE,$BF,$BF,$DF ; 982F 7D 7F 7F 7D BE BF BF DF  }..}....
        db   $2F,$6D,$33,$2F,$97,$82,$89,$CE ; 9837 2F 6D 33 2F 97 82 89 CE  /m3/....
        db   $F3,$DE,$EF,$FB,$FF,$FF,$FF,$FF ; 983F F3 DE EF FB FF FF FF FF  ........
        db   $7F,$FB,$7C,$2F,$8D,$EC,$B3,$3F ; 9847 7F FB 7C 2F 8D EC B3 3F  ..|/...?
        db   $E6,$F6,$7E,$FE,$FD,$FD,$FD,$FB ; 984F E6 F6 7E FE FD FD FD FB  ..~.....
        db   $3C,$FE,$D8,$E4,$BD,$A9,$99,$43 ; 9857 3C FE D8 E4 BD A9 99 43  <......C
        db   $DF,$EF,$F7,$F7,$E1,$E0,$F0,$FF ; 985F DF EF F7 F7 E1 E0 F0 FF  ........
        db   $C5,$E1,$F0,$E0,$C0,$C0,$C0,$F0 ; 9867 C5 E1 F0 E0 C0 C0 C0 F0  ........
        db   $FF,$FF,$FF,$FF,$FF,$7F,$0F,$00 ; 986F FF FF FF FF FF 7F 0F 00  ........
        db   $6D,$92,$6D,$02,$11,$00,$00,$00 ; 9877 6D 92 6D 02 11 00 00 00  m.m.....
        db   $FF,$FF,$FF,$FF,$FF,$FE,$F0,$00 ; 987F FF FF FF FF FF FE F0 00  ........
        db   $FB,$D4,$36,$08,$40,$00,$00,$00 ; 9887 FB D4 36 08 40 00 00 00  ..6.@...
        db   $FB,$F7,$EF,$CF,$87,$07,$0F,$FF ; 988F FB F7 EF CF 87 07 0F FF  ........
        db   $63,$87,$0F,$07,$03,$03,$03,$0F ; 9897 63 87 0F 07 03 03 03 0F  c.......
; ----------------------------------------------------------------------------
MapEventSystem_Entry_989F:
        asl     a                               ; 989F 0A                       .
        tax                                     ; 98A0 AA                       .
        bcs     MapEventSystem_Branch_98B0      ; 98A1 B0 0D                    ..
        lda     Bank1D_MapEventHandlerPointers,x; 98A3 BD 2A B6                 .*.
        sta     $4F                           ; 98A6 85 4F                    .O
        lda     $B62B,x                         ; 98A8 BD 2B B6                 .+.
        sta     $50                             ; 98AB 85 50                    .P
        jmp     ($004F)                         ; 98AD 6C 4F 00                 lO.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_98B0:
        lda     Bank1D_MapEventHandlerPointersHigh,x; 98B0 BD 2A B7             .*.
        sta     $4F                           ; 98B3 85 4F                    .O
        lda     $B72B,x                         ; 98B5 BD 2B B7                 .+.
        sta     $50                             ; 98B8 85 50                    .P
        jmp     ($004F)                         ; 98BA 6C 4F 00                 lO.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_98BD:
        stx     $5D                             ; 98BD 86 5D                    .]
        lda     $7000,x                         ; 98BF BD 00 70                 ..p
        and     #$03                            ; 98C2 29 03                    ).
        asl     a                               ; 98C4 0A                       .
        tay                                     ; 98C5 A8                       .
        sty     $5E                             ; 98C6 84 5E                    .^
        jsr     MapEventSystem_Entry_98D2       ; 98C8 20 D2 98                  ..
        jsr     MapEventSystem_Entry_98DB       ; 98CB 20 DB 98                  ..
        jsr     MapEventSystem_Entry_98E1       ; 98CE 20 E1 98                  ..
        rts                                     ; 98D1 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_98D2:
        jsr     MapEventSystem_Entry_98F9       ; 98D2 20 F9 98                  ..
        jsr     MapEventSystem_Entry_9935       ; 98D5 20 35 99                  5.
        jmp     MapEventSystem_Branch_98E7      ; 98D8 4C E7 98                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_98DB:
        jsr     MapEventSystem_Entry_98F9       ; 98DB 20 F9 98                  ..
        jmp     MapEventSystem_Branch_98E7      ; 98DE 4C E7 98                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_98E1:
        jsr     MapEventSystem_Entry_98F9       ; 98E1 20 F9 98                  ..
        jsr     MapEventSystem_Entry_992F       ; 98E4 20 2F 99                  /.
MapEventSystem_Branch_98E7:
        jsr     MapEventSystem_Entry_9926       ; 98E7 20 26 99                  &.
        jsr     MapEventSystem_Entry_9916       ; 98EA 20 16 99                  ..
        bcs     MapEventSystem_Branch_98F7      ; 98ED B0 08                    ..
        jsr     MapEventSystem_Entry_9906       ; 98EF 20 06 99                  ..
        bcc     MapEventSystem_Branch_98E7      ; 98F2 90 F3                    ..
        pla                                     ; 98F4 68                       h
        pla                                     ; 98F5 68                       h
        rts                                     ; 98F6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_98F7:
        clc                                     ; 98F7 18                       .
        rts                                     ; 98F8 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_98F9:
        ldx     $5D                             ; 98F9 A6 5D                    .]
        lda     $6F60,x                         ; 98FB BD 60 6F                 .`o
        sta     $5F                             ; 98FE 85 5F                    ._
        lda     $6F80,x                         ; 9900 BD 80 6F                 ..o
        sta     $60                             ; 9903 85 60                    .`
        rts                                     ; 9905 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9906:
        lda     $5F                             ; 9906 A5 5F                    ._
        cmp     PlayerLocalX                    ; 9908 C5 44                    .D
        bne     MapEventSystem_Branch_9912      ; 990A D0 06                    ..
        lda     $60                             ; 990C A5 60                    .`
        cmp     PlayerLocalY                    ; 990E C5 45                    .E
        beq     MapEventSystem_Branch_9914      ; 9910 F0 02                    ..
MapEventSystem_Branch_9912:
        clc                                     ; 9912 18                       .
        rts                                     ; 9913 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9914:
        sec                                     ; 9914 38                       8
        rts                                     ; 9915 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9916:
        ldx     $5F                             ; 9916 A6 5F                    ._
        ldy     $60                             ; 9918 A4 60                    .`
        jsr     UpperFixedEngine_Entry_D3E6     ; 991A 20 E6 D3                  ..
        and     #$1F                            ; 991D 29 1F                    ).
        tax                                     ; 991F AA                       .
        lda     $6F40,x                         ; 9920 BD 40 6F                 .@o
        cmp     #$80                            ; 9923 C9 80                    ..
        rts                                     ; 9925 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9926:
        lda     $5E                             ; 9926 A5 5E                    .^
        clc                                     ; 9928 18                       .
        adc     #$10                            ; 9929 69 10                    i.
        tay                                     ; 992B A8                       .
        jmp     MapEventSystem_Entry_9935       ; 992C 4C 35 99                 L5.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_992F:
        lda     $5E                             ; 992F A5 5E                    .^
        clc                                     ; 9931 18                       .
        adc     #$08                            ; 9932 69 08                    i.
        tay                                     ; 9934 A8                       .
MapEventSystem_Entry_9935:
        lda     $5F                             ; 9935 A5 5F                    ._
        clc                                     ; 9937 18                       .
        adc     $9946,y                         ; 9938 79 46 99                 yF.
        sta     $5F                             ; 993B 85 5F                    ._
        lda     $60                             ; 993D A5 60                    .`
        clc                                     ; 993F 18                       .
        adc     $9947,y                         ; 9940 79 47 99                 yG.
        sta     $60                             ; 9943 85 60                    .`
        rts                                     ; 9945 60                       `
; ----------------------------------------------------------------------------
        db   $FF                             ; 9946 FF                       .
        db   $00,$00,$FF,$01,$00,$00,$01,$01 ; 9947 00 00 FF 01 00 00 01 01  ........
        db   $00,$00,$01,$FF,$00,$00,$FF,$00 ; 994F 00 00 01 FF 00 00 FF 00  ........
        db   $FF,$01,$00,$00,$01,$FF,$00     ; 9957 FF 01 00 00 01 FF 00     .......
; ----------------------------------------------------------------------------
MapEventSystem_Entry_995E:
        brk                                     ; 995E 00                       .
        db   $07,$6F,$43                     ; 995F 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        rts                                     ; 9962 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9963:
        sta     $6F66,x                         ; 9963 9D 66 6F                 .fo
        sta     $6F86,x                         ; 9966 9D 86 6F                 ..o
        sta     $6FA6,x                         ; 9969 9D A6 6F                 ..o
        sta     $6FC6,x                         ; 996C 9D C6 6F                 ..o
        rts                                     ; 996F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9970:
        ldy     #$00                            ; 9970 A0 00                    ..
MapEventSystem_Branch_9972:
        lda     $6FA0                           ; 9972 AD A0 6F                 ..o
        cmp     $999C,y                         ; 9975 D9 9C 99                 ...
        beq     MapEventSystem_Branch_9981      ; 9978 F0 07                    ..
MapEventSystem_Branch_997A:
        iny                                     ; 997A C8                       .
        cpy     #$03                            ; 997B C0 03                    ..
        bcc     MapEventSystem_Branch_9972      ; 997D 90 F3                    ..
        clc                                     ; 997F 18                       .
        rts                                     ; 9980 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9981:
        lda     $6FC0                           ; 9981 AD C0 6F                 ..o
        cmp     $999F,y                         ; 9984 D9 9F 99                 ...
        bne     MapEventSystem_Branch_997A      ; 9987 D0 F1                    ..
        ldx     $51                             ; 9989 A6 51                    .Q
        lda     $7080,x                         ; 998B BD 80 70                 ..p
        clc                                     ; 998E 18                       .
        adc     $99A2,y                         ; 998F 79 A2 99                 y..
        sta     $7080,x                         ; 9992 9D 80 70                 ..p
        bcc     MapEventSystem_Branch_999A      ; 9995 90 03                    ..
        inc     $7060,x                         ; 9997 FE 60 70                 .`p
MapEventSystem_Branch_999A:
        sec                                     ; 999A 38                       8
        rts                                     ; 999B 60                       `
; ----------------------------------------------------------------------------
        db   $04,$05,$04                     ; 999C 04 05 04                 ...
        db   $02,$03,$04                     ; 999F 02 03 04                 ...
        db   $00,$14,$06                     ; 99A2 00 14 06                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_99A5:
        lda     PlayerLocalX                    ; 99A5 A5 44                    .D
        sec                                     ; 99A7 38                       8
        sbc     #$0C                            ; 99A8 E9 0C                    ..
        cmp     #$03                            ; 99AA C9 03                    ..
        bcs     MapEventSystem_Branch_99CA      ; 99AC B0 1C                    ..
        lda     PlayerLocalY                    ; 99AE A5 45                    .E
        sec                                     ; 99B0 38                       8
        sbc     #$05                            ; 99B1 E9 05                    ..
        cmp     #$03                            ; 99B3 C9 03                    ..
        bcs     MapEventSystem_Branch_99CA      ; 99B5 B0 13                    ..
        pha                                     ; 99B7 48                       H
        jsr     MapEventSystem_Entry_9B6B       ; 99B8 20 6B 9B                  k.
        pla                                     ; 99BB 68                       h
        brk                                     ; 99BC 00                       .
        db   $01,$EB,$02,$F0,$02,$18,$60,$00 ; 99BD 01 EB 02 F0 02 18 60 00  ......`.
        db   $01,$CB,$02,$38,$60             ; 99C5 01 CB 02 38 60           ...8`
; ----------------------------------------------------------------------------
MapEventSystem_Branch_99CA:
        brk                                     ; 99CA 00                       .
        db   $01,$DB                         ; 99CB 01 DB                    ..
; ----------------------------------------------------------------------------
        sbc     $6018,x                         ; 99CD FD 18 60                 ..`
MapEventSystem_Entry_99D0:
        lda     PlayerLocalY                    ; 99D0 A5 45                    .E
        cmp     #$09                            ; 99D2 C9 09                    ..
        bne     MapEventSystem_Branch_99D8      ; 99D4 D0 02                    ..
        sec                                     ; 99D6 38                       8
        rts                                     ; 99D7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_99D8:
        clc                                     ; 99D8 18                       .
        rts                                     ; 99D9 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_99DA:
        lda     $627B                           ; 99DA AD 7B 62                 .{b
        lsr     a                               ; 99DD 4A                       J
        lsr     a                               ; 99DE 4A                       J
        lsr     a                               ; 99DF 4A                       J
        rts                                     ; 99E0 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_99E1:
        lda     PlayerLocalX                    ; 99E1 A5 44                    .D
        cmp     #$16                            ; 99E3 C9 16                    ..
        bcc     MapEventSystem_Branch_99EF      ; 99E5 90 08                    ..
        lda     PlayerLocalY                    ; 99E7 A5 45                    .E
        cmp     #$12                            ; 99E9 C9 12                    ..
        bne     MapEventSystem_Branch_99EF      ; 99EB D0 02                    ..
        sec                                     ; 99ED 38                       8
        rts                                     ; 99EE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_99EF:
        clc                                     ; 99EF 18                       .
        rts                                     ; 99F0 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_99F1:
        lda     CurrentSubmapNumber             ; 99F1 A5 64                    .d
        cmp     #$00                            ; 99F3 C9 00                    ..
        bne     MapEventSystem_Branch_9A23      ; 99F5 D0 2C                    .,
        ldx     #$00                            ; 99F7 A2 00                    ..
MapEventSystem_Branch_99F9:
        lda     #$02                            ; 99F9 A9 02                    ..
        pha                                     ; 99FB 48                       H
MapEventSystem_Branch_99FC:
        lda     $3D                             ; 99FC A5 3D                    .=
        cmp     $9A55,x                         ; 99FE DD 55 9A                 .U.
        bne     MapEventSystem_Branch_9A11      ; 9A01 D0 0E                    ..
        lda     PlayerLocalX                    ; 9A03 A5 44                    .D
        cmp     $9A41,x                         ; 9A05 DD 41 9A                 .A.
        bne     MapEventSystem_Branch_9A11      ; 9A08 D0 07                    ..
        lda     PlayerLocalY                    ; 9A0A A5 45                    .E
        cmp     $9A4B,x                         ; 9A0C DD 4B 9A                 .K.
        beq     MapEventSystem_Branch_9A25      ; 9A0F F0 14                    ..
MapEventSystem_Branch_9A11:
        inx                                     ; 9A11 E8                       .
        cpx     #$06                            ; 9A12 E0 06                    ..
        beq     MapEventSystem_Branch_9A1A      ; 9A14 F0 04                    ..
        cpx     #$0A                            ; 9A16 E0 0A                    ..
        bcc     MapEventSystem_Branch_99FC      ; 9A18 90 E2                    ..
MapEventSystem_Branch_9A1A:
        pla                                     ; 9A1A 68                       h
        eor     #$FF                            ; 9A1B 49 FF                    I.
        and     $627C                           ; 9A1D 2D 7C 62                 -|b
        sta     $627C                           ; 9A20 8D 7C 62                 .|b
MapEventSystem_Branch_9A23:
        clc                                     ; 9A23 18                       .
        rts                                     ; 9A24 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9A25:
        pla                                     ; 9A25 68                       h
        pha                                     ; 9A26 48                       H
        and     $627C                           ; 9A27 2D 7C 62                 -|b
        beq     MapEventSystem_Branch_9A2F      ; 9A2A F0 03                    ..
        pla                                     ; 9A2C 68                       h
        clc                                     ; 9A2D 18                       .
        rts                                     ; 9A2E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9A2F:
        pla                                     ; 9A2F 68                       h
        pha                                     ; 9A30 48                       H
        cmp     #$40                            ; 9A31 C9 40                    .@
        beq     MapEventSystem_Branch_9A38      ; 9A33 F0 03                    ..
        jsr     MapEventSystem_Entry_9B6B       ; 9A35 20 6B 9B                  k.
MapEventSystem_Branch_9A38:
        pla                                     ; 9A38 68                       h
        ora     $627C                           ; 9A39 0D 7C 62                 .|b
        sta     $627C                           ; 9A3C 8D 7C 62                 .|b
        sec                                     ; 9A3F 38                       8
        rts                                     ; 9A40 60                       `
; ----------------------------------------------------------------------------
        db   $14,$14,$0A,$0B,$0D,$0D,$12,$13 ; 9A41 14 14 0A 0B 0D 0D 12 13  ........
        db   $11,$11                         ; 9A49 11 11                    ..
        db   $0C,$0D,$19,$19,$26,$27,$12,$12 ; 9A4B 0C 0D 19 19 26 27 12 12  ....&'..
        db   $2A,$2B                         ; 9A53 2A 2B                    *+
        db   $03,$03,$02,$02,$01,$01,$00,$00 ; 9A55 03 03 02 02 01 01 00 00  ........
        db   $01,$01                         ; 9A5D 01 01                    ..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9A5F:
        pha                                     ; 9A5F 48                       H
MapEventSystem_Branch_9A60:
        lda     PlayerLocalX                    ; 9A60 A5 44                    .D
        cmp     $9A7D,x                         ; 9A62 DD 7D 9A                 .}.
        bne     MapEventSystem_Branch_9A75      ; 9A65 D0 0E                    ..
        lda     PlayerLocalY                    ; 9A67 A5 45                    .E
        cmp     $9A95,x                         ; 9A69 DD 95 9A                 ...
        bne     MapEventSystem_Branch_9A75      ; 9A6C D0 07                    ..
        lda     $3D                             ; 9A6E A5 3D                    .=
        cmp     $9AAD,x                         ; 9A70 DD AD 9A                 ...
        beq     MapEventSystem_Branch_9A25      ; 9A73 F0 B0                    ..
MapEventSystem_Branch_9A75:
        inx                                     ; 9A75 E8                       .
        txa                                     ; 9A76 8A                       .
        and     #$07                            ; 9A77 29 07                    ).
        bne     MapEventSystem_Branch_9A60      ; 9A79 D0 E5                    ..
        beq     MapEventSystem_Branch_9A1A      ; 9A7B F0 9D                    ..
        db   $02,$03,$0C,$0C,$10,$10,$00,$00 ; 9A7D 02 03 0C 0C 10 10 00 00  ........
        db   $11,$11,$00,$00,$00,$00,$00,$00 ; 9A85 11 11 00 00 00 00 00 00  ........
        db   $14,$14,$11,$11,$14,$14,$14,$14 ; 9A8D 14 14 11 11 14 14 14 14  ........
        db   $19,$19,$1A,$1B,$26,$27,$00,$00 ; 9A95 19 19 1A 1B 26 27 00 00  ....&'..
        db   $0C,$0D,$00,$00,$00,$00,$00,$00 ; 9A9D 0C 0D 00 00 00 00 00 00  ........
        db   $10,$11,$1C,$1D,$1C,$1D,$2A,$2B ; 9AA5 10 11 1C 1D 1C 1D 2A 2B  ......*+
        db   $00,$00,$01,$01,$01,$01,$00,$00 ; 9AAD 00 00 01 01 01 01 00 00  ........
        db   $03,$03,$00,$00,$00,$00,$00,$00 ; 9AB5 03 03 00 00 00 00 00 00  ........
        db   $01,$01,$03,$03,$01,$01,$01,$01 ; 9ABD 01 01 03 03 01 01 01 01  ........
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9AC5:
        lda     SaveCurrentChapterMinus1        ; 9AC5 AD 5A 61                 .Za
        cmp     #$04                            ; 9AC8 C9 04                    ..
        bne     MapEventSystem_Branch_9B2D      ; 9ACA D0 61                    .a
        lda     $6FA0                           ; 9ACC AD A0 6F                 ..o
        cmp     #$13                            ; 9ACF C9 13                    ..
        bne     MapEventSystem_Branch_9B2D      ; 9AD1 D0 5A                    .Z
        lda     $6FC0                           ; 9AD3 AD C0 6F                 ..o
        and     #$FE                            ; 9AD6 29 FE                    ).
        cmp     #$04                            ; 9AD8 C9 04                    ..
        bne     MapEventSystem_Branch_9B2D      ; 9ADA D0 51                    .Q
        brk                                     ; 9ADC 00                       .
        db   $16,$EB                         ; 9ADD 16 EB                    ..
; ----------------------------------------------------------------------------
        jsr     $49D0                           ; 9ADF 20 D0 49                  .I
        jsr     UpperFixedEngine_Entry_C891     ; 9AE2 20 91 C8                  ..
        and     #$1F                            ; 9AE5 29 1F                    ).
        bne     MapEventSystem_Branch_9B2B      ; 9AE7 D0 42                    .B
        jsr     MapEventSystem_Entry_B16B       ; 9AE9 20 6B B1                  k.
        lda     $51                             ; 9AEC A5 51                    .Q
        pha                                     ; 9AEE 48                       H
        jsr     MapEventSystem_Entry_995E       ; 9AEF 20 5E 99                  ^.
        brk                                     ; 9AF2 00                       .
        db   $01,$FB                         ; 9AF3 01 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9AF5 00                       .
        db   $07,$9F                         ; 9AF6 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9AF8 00                       .
        db   $04,$FB                         ; 9AF9 04 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9AFB 00                       .
        db   $FC,$3B                         ; 9AFC FC 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; 9AFE 00                       .
        db   $FD,$3B                         ; 9AFF FD 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; 9B01 20 0A D2                  ..
        brk                                     ; 9B04 00                       .
        db   $09,$9F                         ; 9B05 09 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9B07 00                       .
        db   $16,$CB,$20                     ; 9B08 16 CB 20                 ..
; ----------------------------------------------------------------------------
        brk                                     ; 9B0B 00                       .
        db   $0E,$CB,$80                     ; 9B0C 0E CB 80                 ...
; ----------------------------------------------------------------------------
        lda     SaveCasinoCoins                 ; 9B0F AD AD 62                 ..b
        clc                                     ; 9B12 18                       .
        adc     #$D0                            ; 9B13 69 D0                    i.
        sta     SaveCasinoCoins                 ; 9B15 8D AD 62                 ..b
        lda     $62AE                           ; 9B18 AD AE 62                 ..b
        adc     #$07                            ; 9B1B 69 07                    i.
        sta     $62AE                           ; 9B1D 8D AE 62                 ..b
        lda     $62AF                           ; 9B20 AD AF 62                 ..b
        adc     #$00                            ; 9B23 69 00                    i.
        sta     $62AF                           ; 9B25 8D AF 62                 ..b
        pla                                     ; 9B28 68                       h
        sta     $51                             ; 9B29 85 51                    .Q
MapEventSystem_Branch_9B2B:
        sec                                     ; 9B2B 38                       8
        rts                                     ; 9B2C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9B2D:
        clc                                     ; 9B2D 18                       .
        rts                                     ; 9B2E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B2F:
        ldx     #$00                            ; 9B2F A2 00                    ..
        lda     #$20                            ; 9B31 A9 20                    .
        jmp     MapEventSystem_Branch_9A5F      ; 9B33 4C 5F 9A                 L_.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B36:
        ldx     #$08                            ; 9B36 A2 08                    ..
        lda     #$40                            ; 9B38 A9 40                    .@
        jmp     MapEventSystem_Branch_9A5F      ; 9B3A 4C 5F 9A                 L_.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B3D:
        ldx     #$06                            ; 9B3D A2 06                    ..
        jmp     MapEventSystem_Branch_99F9      ; 9B3F 4C F9 99                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B42:
        lda     PlayerLocalX                    ; 9B42 A5 44                    .D
        cmp     #$06                            ; 9B44 C9 06                    ..
        bne     MapEventSystem_Branch_9B62      ; 9B46 D0 1A                    ..
        lda     PlayerLocalY                    ; 9B48 A5 45                    .E
        cmp     #$06                            ; 9B4A C9 06                    ..
        bne     MapEventSystem_Branch_9B62      ; 9B4C D0 14                    ..
        lda     $3E                             ; 9B4E A5 3E                    .>
        beq     MapEventSystem_Branch_9B59      ; 9B50 F0 07                    ..
        lda     #$8F                            ; 9B52 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; 9B54 20 3A A2                  :.
        clc                                     ; 9B57 18                       .
        rts                                     ; 9B58 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9B59:
        lda     #$23                            ; 9B59 A9 23                    .#
        brk                                     ; 9B5B 00                       .
        db   $07,$CF                         ; 9B5C 07 CF                    ..
; ----------------------------------------------------------------------------
        lda     #$1E                            ; 9B5E A9 1E                    ..
        sta     $51                             ; 9B60 85 51                    .Q
MapEventSystem_Branch_9B62:
        clc                                     ; 9B62 18                       .
        rts                                     ; 9B63 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B64:
        ldx     #$10                            ; 9B64 A2 10                    ..
        lda     #$20                            ; 9B66 A9 20                    .
        jmp     MapEventSystem_Branch_9A5F      ; 9B68 4C 5F 9A                 L_.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B6B:
        lda     #$6C                            ; 9B6B A9 6C                    .l
        brk                                     ; 9B6D 00                       .
        db   $66,$73                         ; 9B6E 66 73                    fs
; ----------------------------------------------------------------------------
        bcc     MapEventSystem_Branch_9B76      ; 9B70 90 04                    ..
        pla                                     ; 9B72 68                       h
        pla                                     ; 9B73 68                       h
        pla                                     ; 9B74 68                       h
        clc                                     ; 9B75 18                       .
MapEventSystem_Branch_9B76:
        rts                                     ; 9B76 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B77:
        brk                                     ; 9B77 00                       .
        db   $0E,$EB,$08                     ; 9B78 0E EB 08                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_9B7F      ; 9B7B F0 02                    ..
        sec                                     ; 9B7D 38                       8
        rts                                     ; 9B7E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9B7F:
        clc                                     ; 9B7F 18                       .
        rts                                     ; 9B80 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B81:
        clc                                     ; 9B81 18                       .
        rts                                     ; 9B82 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B83:
        lda     PlayerLocalX                    ; 9B83 A5 44                    .D
        cmp     #$1C                            ; 9B85 C9 1C                    ..
        bcc     MapEventSystem_Branch_9B91      ; 9B87 90 08                    ..
        lda     PlayerLocalY                    ; 9B89 A5 45                    .E
        cmp     #$05                            ; 9B8B C9 05                    ..
        bne     MapEventSystem_Branch_9B91      ; 9B8D D0 02                    ..
        sec                                     ; 9B8F 38                       8
        rts                                     ; 9B90 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9B91:
        clc                                     ; 9B91 18                       .
        rts                                     ; 9B92 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9B93:
        lda     PlayerLocalX                    ; 9B93 A5 44                    .D
        cmp     #$1C                            ; 9B95 C9 1C                    ..
        bcc     MapEventSystem_Branch_9BA1      ; 9B97 90 08                    ..
        lda     PlayerLocalY                    ; 9B99 A5 45                    .E
        cmp     #$07                            ; 9B9B C9 07                    ..
        bne     MapEventSystem_Branch_9BA1      ; 9B9D D0 02                    ..
        sec                                     ; 9B9F 38                       8
        rts                                     ; 9BA0 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9BA1:
        clc                                     ; 9BA1 18                       .
        rts                                     ; 9BA2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9BA3:
        ldy     SaveCurrentChapterMinus1        ; 9BA3 AC 5A 61                 .Za
        brk                                     ; 9BA6 00                       .
        db   $08,$EB,$02                     ; 9BA7 08 EB 02                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_9BB2      ; 9BAA D0 06                    ..
        ldx     #$00                            ; 9BAC A2 00                    ..
        cpy     #$01                            ; 9BAE C0 01                    ..
        beq     MapEventSystem_Branch_9BB8      ; 9BB0 F0 06                    ..
MapEventSystem_Branch_9BB2:
        ldx     #$02                            ; 9BB2 A2 02                    ..
        cpy     #$02                            ; 9BB4 C0 02                    ..
        bne     MapEventSystem_Branch_9BC8      ; 9BB6 D0 10                    ..
MapEventSystem_Branch_9BB8:
        lda     $9BCA,x                         ; 9BB8 BD CA 9B                 ...
        cmp     PlayerLocalX                    ; 9BBB C5 44                    .D
        bne     MapEventSystem_Branch_9BC8      ; 9BBD D0 09                    ..
        lda     $9BCB,x                         ; 9BBF BD CB 9B                 ...
        cmp     PlayerLocalY                    ; 9BC2 C5 45                    .E
        bne     MapEventSystem_Branch_9BC8      ; 9BC4 D0 02                    ..
        sec                                     ; 9BC6 38                       8
        rts                                     ; 9BC7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9BC8:
        clc                                     ; 9BC8 18                       .
        rts                                     ; 9BC9 60                       `
; ----------------------------------------------------------------------------
        db   $05                             ; 9BCA 05                       .
        db   $09,$04,$05                     ; 9BCB 09 04 05                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9BCE:
        lda     $627D                           ; 9BCE AD 7D 62                 .}b
        lsr     a                               ; 9BD1 4A                       J
        rts                                     ; 9BD2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9BD3:
        brk                                     ; 9BD3 00                       .
        db   $02,$EB,$02                     ; 9BD4 02 EB 02                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_9BF5      ; 9BD7 F0 1C                    ..
        ldx     #$06                            ; 9BD9 A2 06                    ..
        jsr     MapEventSystem_Entry_98BD       ; 9BDB 20 BD 98                  ..
        ldx     #$06                            ; 9BDE A2 06                    ..
        bcc     MapEventSystem_Branch_9BE9      ; 9BE0 90 07                    ..
        lda     #$00                            ; 9BE2 A9 00                    ..
        sta     $7040,x                         ; 9BE4 9D 40 70                 .@p
        clc                                     ; 9BE7 18                       .
        rts                                     ; 9BE8 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9BE9:
        lda     $7040,x                         ; 9BE9 BD 40 70                 .@p
        and     #$F0                            ; 9BEC 29 F0                    ).
        bne     MapEventSystem_Branch_9BF5      ; 9BEE D0 05                    ..
        lda     #$22                            ; 9BF0 A9 22                    ."
        sta     $7040,x                         ; 9BF2 9D 40 70                 .@p
MapEventSystem_Branch_9BF5:
        clc                                     ; 9BF5 18                       .
        rts                                     ; 9BF6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9BF7:
        lda     PlayerLocalX                    ; 9BF7 A5 44                    .D
        cmp     #$1F                            ; 9BF9 C9 1F                    ..
        bne     MapEventSystem_Branch_9C05      ; 9BFB D0 08                    ..
        lda     PlayerLocalY                    ; 9BFD A5 45                    .E
        cmp     #$1B                            ; 9BFF C9 1B                    ..
        bne     MapEventSystem_Branch_9C05      ; 9C01 D0 02                    ..
        clc                                     ; 9C03 18                       .
        rts                                     ; 9C04 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9C05:
        sec                                     ; 9C05 38                       8
        rts                                     ; 9C06 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9C07:
        brk                                     ; 9C07 00                       .
        db   $02,$EB,$08                     ; 9C08 02 EB 08                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_9C24      ; 9C0B F0 17                    ..
        lda     PlayerLocalX                    ; 9C0D A5 44                    .D
        cmp     #$04                            ; 9C0F C9 04                    ..
        bne     MapEventSystem_Branch_9C19      ; 9C11 D0 06                    ..
        lda     PlayerLocalY                    ; 9C13 A5 45                    .E
        cmp     #$03                            ; 9C15 C9 03                    ..
        beq     MapEventSystem_Branch_9C24      ; 9C17 F0 0B                    ..
MapEventSystem_Branch_9C19:
        jsr     MapEventSystem_Entry_9C34       ; 9C19 20 34 9C                  4.
        bcs     MapEventSystem_Branch_9C24      ; 9C1C B0 06                    ..
        lda     $56                             ; 9C1E A5 56                    .V
        bmi     MapEventSystem_Branch_9C24      ; 9C20 30 02                    0.
        sec                                     ; 9C22 38                       8
        rts                                     ; 9C23 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9C24:
        clc                                     ; 9C24 18                       .
        rts                                     ; 9C25 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9C26:
        lda     PlayerLocalX                    ; 9C26 A5 44                    .D
        cmp     #$04                            ; 9C28 C9 04                    ..
        bne     MapEventSystem_Entry_9C34       ; 9C2A D0 08                    ..
        lda     PlayerLocalY                    ; 9C2C A5 45                    .E
        cmp     #$03                            ; 9C2E C9 03                    ..
        bne     MapEventSystem_Entry_9C34       ; 9C30 D0 02                    ..
MapEventSystem_Branch_9C32:
        sec                                     ; 9C32 38                       8
        rts                                     ; 9C33 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9C34:
        ldx     #$01                            ; 9C34 A2 01                    ..
        jsr     MapEventSystem_Entry_9C40       ; 9C36 20 40 9C                  @.
        bcs     MapEventSystem_Branch_9C32      ; 9C39 B0 F7                    ..
        ldx     #$00                            ; 9C3B A2 00                    ..
        jmp     MapEventSystem_Entry_9C40       ; 9C3D 4C 40 9C                 L@.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9C40:
        lda     $6F66,x                         ; 9C40 BD 66 6F                 .fo
        cmp     #$04                            ; 9C43 C9 04                    ..
        bne     MapEventSystem_Branch_9C50      ; 9C45 D0 09                    ..
        lda     $6F86,x                         ; 9C47 BD 86 6F                 ..o
        cmp     #$03                            ; 9C4A C9 03                    ..
        bne     MapEventSystem_Branch_9C50      ; 9C4C D0 02                    ..
        sec                                     ; 9C4E 38                       8
        rts                                     ; 9C4F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9C50:
        clc                                     ; 9C50 18                       .
        rts                                     ; 9C51 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9C52:
        ldx     $51                             ; 9C52 A6 51                    .Q
        lda     $6F60,x                         ; 9C54 BD 60 6F                 .`o
        sec                                     ; 9C57 38                       8
        sbc     $6FA0                           ; 9C58 ED A0 6F                 ..o
        clc                                     ; 9C5B 18                       .
        adc     #$01                            ; 9C5C 69 01                    i.
        cmp     #$03                            ; 9C5E C9 03                    ..
        bcs     MapEventSystem_Branch_9C8E      ; 9C60 B0 2C                    .,
        lda     $6F80,x                         ; 9C62 BD 80 6F                 ..o
        sec                                     ; 9C65 38                       8
        sbc     $6FC0                           ; 9C66 ED C0 6F                 ..o
        clc                                     ; 9C69 18                       .
        adc     #$01                            ; 9C6A 69 01                    i.
        cmp     #$03                            ; 9C6C C9 03                    ..
        bcs     MapEventSystem_Branch_9C8E      ; 9C6E B0 1E                    ..
        lda     #$81                            ; 9C70 A9 81                    ..
        sta     $6F60,x                         ; 9C72 9D 60 6F                 .`o
        sta     $6F80,x                         ; 9C75 9D 80 6F                 ..o
        sta     $6FA0,x                         ; 9C78 9D A0 6F                 ..o
        sta     $6FC0,x                         ; 9C7B 9D C0 6F                 ..o
        txa                                     ; 9C7E 8A                       .
        pha                                     ; 9C7F 48                       H
        jsr     MapEventSystem_Entry_9C93       ; 9C80 20 93 9C                  ..
        lda     #$06                            ; 9C83 A9 06                    ..
        brk                                     ; 9C85 00                       .
        db   $01,$8F                         ; 9C86 01 8F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9C88 00                       .
        db   $15,$EF                         ; 9C89 15 EF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 9C8B 68                       h
        sta     $51                             ; 9C8C 85 51                    .Q
MapEventSystem_Branch_9C8E:
        lda     $3E                             ; 9C8E A5 3E                    .>
        cmp     #$10                            ; 9C90 C9 10                    ..
MapEventSystem_Branch_9C92:
        rts                                     ; 9C92 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9C93:
        lda     $3E                             ; 9C93 A5 3E                    .>
        beq     MapEventSystem_Branch_9C92      ; 9C95 F0 FB                    ..
        ldx     #$05                            ; 9C97 A2 05                    ..
MapEventSystem_Branch_9C99:
        lda     $7000,x                         ; 9C99 BD 00 70                 ..p
        and     #$7F                            ; 9C9C 29 7F                    ).
        sta     $7000,x                         ; 9C9E 9D 00 70                 ..p
        lda     $6F60,x                         ; 9CA1 BD 60 6F                 .`o
        sta     $6FA0,x                         ; 9CA4 9D A0 6F                 ..o
        lda     $6F80,x                         ; 9CA7 BD 80 6F                 ..o
        sta     $6FC0,x                         ; 9CAA 9D C0 6F                 ..o
        dex                                     ; 9CAD CA                       .
        bne     MapEventSystem_Branch_9C99      ; 9CAE D0 E9                    ..
        lda     #$00                            ; 9CB0 A9 00                    ..
        sta     $3E                             ; 9CB2 85 3E                    .>
MapEventSystem_Entry_9CB4:
        jmp     FixedTrampoline05               ; 9CB4 4C 10 C0                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9CB7:
        lda     PlayerLocalX                    ; 9CB7 A5 44                    .D
        sec                                     ; 9CB9 38                       8
        sbc     #$03                            ; 9CBA E9 03                    ..
        cmp     #$02                            ; 9CBC C9 02                    ..
        bcs     MapEventSystem_Branch_9CD7      ; 9CBE B0 17                    ..
        lda     PlayerLocalY                    ; 9CC0 A5 45                    .E
        cmp     #$0E                            ; 9CC2 C9 0E                    ..
        bne     MapEventSystem_Branch_9CD7      ; 9CC4 D0 11                    ..
        brk                                     ; 9CC6 00                       .
        db   $02,$CB                         ; 9CC7 02 CB                    ..
; ----------------------------------------------------------------------------
        jsr     $1F00                           ; 9CC9 20 00 1F                  ..
        db   $DB,$FC,$00,$1F,$CB,$02,$00,$95 ; 9CCC DB FC 00 1F CB 02 00 95  ........
        db   $FB,$38,$60                     ; 9CD4 FB 38 60                 .8`
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9CD7:
        brk                                     ; 9CD7 00                       .
        db   $1F,$DB,$7F                     ; 9CD8 1F DB 7F                 ...
; ----------------------------------------------------------------------------
        clc                                     ; 9CDB 18                       .
        rts                                     ; 9CDC 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9CDD:
        lda     $629A                           ; 9CDD AD 9A 62                 ..b
        and     #$03                            ; 9CE0 29 03                    ).
        beq     MapEventSystem_Branch_9CD7      ; 9CE2 F0 F3                    ..
        cmp     #$02                            ; 9CE4 C9 02                    ..
        beq     MapEventSystem_Branch_9CFD      ; 9CE6 F0 15                    ..
        ldx     $62A0                           ; 9CE8 AE A0 62                 ..b
        jsr     MapEventSystem_Entry_9E2D       ; 9CEB 20 2D 9E                  -.
        bcs     MapEventSystem_Branch_9D1C      ; 9CEE B0 2C                    .,
        inx                                     ; 9CF0 E8                       .
        jsr     MapEventSystem_Entry_9E2D       ; 9CF1 20 2D 9E                  -.
        bcs     MapEventSystem_Branch_9D1C      ; 9CF4 B0 26                    .&
MapEventSystem_Branch_9CF6:
        brk                                     ; 9CF6 00                       .
        db   $1F,$DB,$DF                     ; 9CF7 1F DB DF                 ...
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_9D38      ; 9CFA 4C 38 9D                 L8.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9CFD:
        ldx     $62A3                           ; 9CFD AE A3 62                 ..b
        jsr     MapEventSystem_Entry_9E42       ; 9D00 20 42 9E                  B.
        bcs     MapEventSystem_Branch_9D0B      ; 9D03 B0 06                    ..
        inx                                     ; 9D05 E8                       .
        jsr     MapEventSystem_Entry_9E42       ; 9D06 20 42 9E                  B.
        bcc     MapEventSystem_Branch_9CF6      ; 9D09 90 EB                    ..
MapEventSystem_Branch_9D0B:
        ldx     $62A0                           ; 9D0B AE A0 62                 ..b
        inx                                     ; 9D0E E8                       .
        inx                                     ; 9D0F E8                       .
        jsr     MapEventSystem_Entry_9E2D       ; 9D10 20 2D 9E                  -.
        bcc     MapEventSystem_Branch_9CF6      ; 9D13 90 E1                    ..
MapEventSystem_Branch_9D15:
        brk                                     ; 9D15 00                       .
        db   $1F,$CB,$20                     ; 9D16 1F CB 20                 ..
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_9D38      ; 9D19 4C 38 9D                 L8.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D1C:
        lda     $629A                           ; 9D1C AD 9A 62                 ..b
        and     #$03                            ; 9D1F 29 03                    ).
        cmp     #$01                            ; 9D21 C9 01                    ..
        beq     MapEventSystem_Branch_9D30      ; 9D23 F0 0B                    ..
        ldx     $62A3                           ; 9D25 AE A3 62                 ..b
        dex                                     ; 9D28 CA                       .
MapEventSystem_Branch_9D29:
        jsr     MapEventSystem_Entry_9E42       ; 9D29 20 42 9E                  B.
        bcc     MapEventSystem_Branch_9CF6      ; 9D2C 90 C8                    ..
        bcs     MapEventSystem_Branch_9D15      ; 9D2E B0 E5                    ..
MapEventSystem_Branch_9D30:
        ldx     $62A3                           ; 9D30 AE A3 62                 ..b
        inx                                     ; 9D33 E8                       .
        inx                                     ; 9D34 E8                       .
        jmp     MapEventSystem_Branch_9D29      ; 9D35 4C 29 9D                 L).
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D38:
        brk                                     ; 9D38 00                       .
        db   $1F,$EB,$20                     ; 9D39 1F EB 20                 ..
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_9CD7      ; 9D3C D0 99                    ..
        brk                                     ; 9D3E 00                       .
        db   $1F,$CB,$80                     ; 9D3F 1F CB 80                 ...
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_9F8F       ; 9D42 20 8F 9F                  ..
        jsr     MapEventSystem_Entry_9E53       ; 9D45 20 53 9E                  S.
        brk                                     ; 9D48 00                       .
        db   $1F,$EB,$40                     ; 9D49 1F EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_9D6D      ; 9D4C F0 1F                    ..
        lda     $629A                           ; 9D4E AD 9A 62                 ..b
        and     #$03                            ; 9D51 29 03                    ).
        cmp     #$01                            ; 9D53 C9 01                    ..
        beq     MapEventSystem_Branch_9D61      ; 9D55 F0 0A                    ..
        cmp     #$02                            ; 9D57 C9 02                    ..
        beq     MapEventSystem_Branch_9D67      ; 9D59 F0 0C                    ..
        dec     $62A3                           ; 9D5B CE A3 62                 ..b
        jmp     MapEventSystem_Branch_9E20      ; 9D5E 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D61:
        inc     $62A3                           ; 9D61 EE A3 62                 ..b
        jmp     MapEventSystem_Branch_9E20      ; 9D64 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D67:
        inc     $62A0                           ; 9D67 EE A0 62                 ..b
        jmp     MapEventSystem_Branch_9DA4      ; 9D6A 4C A4 9D                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D6D:
        lda     $629A                           ; 9D6D AD 9A 62                 ..b
        and     #$03                            ; 9D70 29 03                    ).
        cmp     #$01                            ; 9D72 C9 01                    ..
        beq     MapEventSystem_Branch_9D8F      ; 9D74 F0 19                    ..
        cmp     #$02                            ; 9D76 C9 02                    ..
        beq     MapEventSystem_Branch_9DE6      ; 9D78 F0 6C                    .l
        lda     $62A3                           ; 9D7A AD A3 62                 ..b
        cmp     #$03                            ; 9D7D C9 03                    ..
        beq     MapEventSystem_Branch_9D84      ; 9D7F F0 03                    ..
        jmp     MapEventSystem_Branch_9E20      ; 9D81 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D84:
        brk                                     ; 9D84 00                       .
        db   $1F,$DB,$FC                     ; 9D85 1F DB FC                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9D88 00                       .
        db   $1F,$CB,$02                     ; 9D89 1F CB 02                 ...
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_9E20      ; 9D8C 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D8F:
        lda     $62A3                           ; 9D8F AD A3 62                 ..b
        cmp     #$0B                            ; 9D92 C9 0B                    ..
        beq     MapEventSystem_Branch_9D99      ; 9D94 F0 03                    ..
        jmp     MapEventSystem_Branch_9E20      ; 9D96 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9D99:
        brk                                     ; 9D99 00                       .
        db   $1F,$DB,$FC                     ; 9D9A 1F DB FC                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9D9D:
        brk                                     ; 9D9D 00                       .
        db   $1F,$CB,$02                     ; 9D9E 1F CB 02                 ...
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_9E20      ; 9DA1 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9DA4:
        lda     $62A0                           ; 9DA4 AD A0 62                 ..b
        cmp     #$13                            ; 9DA7 C9 13                    ..
        bne     MapEventSystem_Branch_9DC6      ; 9DA9 D0 1B                    ..
        lda     PlayerLocalX                    ; 9DAB A5 44                    .D
        cmp     #$0B                            ; 9DAD C9 0B                    ..
        bcs     MapEventSystem_Branch_9DBB      ; 9DAF B0 0A                    ..
        cmp     #$05                            ; 9DB1 C9 05                    ..
        bcc     MapEventSystem_Branch_9E20      ; 9DB3 90 6B                    .k
        lda     PlayerLocalY                    ; 9DB5 A5 45                    .E
        cmp     #$1E                            ; 9DB7 C9 1E                    ..
        bcs     MapEventSystem_Branch_9E20      ; 9DB9 B0 65                    .e
MapEventSystem_Branch_9DBB:
        brk                                     ; 9DBB 00                       .
        db   $1F,$DB,$FC                     ; 9DBC 1F DB FC                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9DBF 00                       .
        db   $1F,$CB,$01                     ; 9DC0 1F CB 01                 ...
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_9E20      ; 9DC3 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9DC6:
        cmp     #$1E                            ; 9DC6 C9 1E                    ..
        bne     MapEventSystem_Branch_9E20      ; 9DC8 D0 56                    .V
        lda     $62A3                           ; 9DCA AD A3 62                 ..b
        cmp     #$08                            ; 9DCD C9 08                    ..
        bcc     MapEventSystem_Branch_9DDE      ; 9DCF 90 0D                    ..
        lda     PlayerLocalX                    ; 9DD1 A5 44                    .D
        cmp     #$0B                            ; 9DD3 C9 0B                    ..
        bcs     MapEventSystem_Branch_9D99      ; 9DD5 B0 C2                    ..
        brk                                     ; 9DD7 00                       .
        db   $1F,$CB,$03                     ; 9DD8 1F CB 03                 ...
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_9E20      ; 9DDB 4C 20 9E                 L .
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9DDE:
        lda     PlayerLocalX                    ; 9DDE A5 44                    .D
        cmp     #$05                            ; 9DE0 C9 05                    ..
        bcc     MapEventSystem_Branch_9D99      ; 9DE2 90 B5                    ..
        bcs     MapEventSystem_Branch_9DBB      ; 9DE4 B0 D5                    ..
MapEventSystem_Branch_9DE6:
        lda     $62A0                           ; 9DE6 AD A0 62                 ..b
        cmp     #$25                            ; 9DE9 C9 25                    .%
        bcc     MapEventSystem_Branch_9E20      ; 9DEB 90 33                    .3
        brk                                     ; 9DED 00                       .
        db   $1F,$DB,$FC                     ; 9DEE 1F DB FC                 ...
; ----------------------------------------------------------------------------
        ldy     #$03                            ; 9DF1 A0 03                    ..
MapEventSystem_Branch_9DF3:
        tya                                     ; 9DF3 98                       .
        pha                                     ; 9DF4 48                       H
        brk                                     ; 9DF5 00                       .
        db   $84,$FB                         ; 9DF6 84 FB                    ..
; ----------------------------------------------------------------------------
        ldx     #$04                            ; 9DF8 A2 04                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 9DFA 20 0C C9                  ..
        pla                                     ; 9DFD 68                       h
        tay                                     ; 9DFE A8                       .
        dey                                     ; 9DFF 88                       .
        bne     MapEventSystem_Branch_9DF3      ; 9E00 D0 F1                    ..
        brk                                     ; 9E02 00                       .
        db   $05,$DF                         ; 9E03 05 DF                    ..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9E05:
        ldy     #$02                            ; 9E05 A0 02                    ..
MapEventSystem_Branch_9E07:
        tya                                     ; 9E07 98                       .
        pha                                     ; 9E08 48                       H
        brk                                     ; 9E09 00                       .
        db   $84,$FB                         ; 9E0A 84 FB                    ..
; ----------------------------------------------------------------------------
        ldx     #$04                            ; 9E0C A2 04                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 9E0E 20 0C C9                  ..
        pla                                     ; 9E11 68                       h
        tay                                     ; 9E12 A8                       .
        dey                                     ; 9E13 88                       .
        bne     MapEventSystem_Branch_9E07      ; 9E14 D0 F1                    ..
        ldx     #$05                            ; 9E16 A2 05                    ..
        lda     #$00                            ; 9E18 A9 00                    ..
MapEventSystem_Branch_9E1A:
        sta     $6F59,x                         ; 9E1A 9D 59 6F                 .Yo
        dex                                     ; 9E1D CA                       .
        bpl     MapEventSystem_Branch_9E1A      ; 9E1E 10 FA                    ..
MapEventSystem_Branch_9E20:
        lda     $629A                           ; 9E20 AD 9A 62                 ..b
        eor     #$40                            ; 9E23 49 40                    I@
        sta     $629A                           ; 9E25 8D 9A 62                 ..b
        brk                                     ; 9E28 00                       .
        db   $95,$FB                         ; 9E29 95 FB                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 9E2B 18                       .
        rts                                     ; 9E2C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9E2D:
        ldy     #$00                            ; 9E2D A0 00                    ..
MapEventSystem_Branch_9E2F:
        lda     $7020,y                         ; 9E2F B9 20 70                 . p
        bmi     MapEventSystem_Branch_9E40      ; 9E32 30 0C                    0.
        txa                                     ; 9E34 8A                       .
        cmp     $6F80,y                         ; 9E35 D9 80 6F                 ..o
        beq     MapEventSystem_Branch_9E3E      ; 9E38 F0 04                    ..
        iny                                     ; 9E3A C8                       .
        jmp     MapEventSystem_Branch_9E2F      ; 9E3B 4C 2F 9E                 L/.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9E3E:
        sec                                     ; 9E3E 38                       8
        rts                                     ; 9E3F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9E40:
        clc                                     ; 9E40 18                       .
        rts                                     ; 9E41 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9E42:
        ldy     #$00                            ; 9E42 A0 00                    ..
MapEventSystem_Branch_9E44:
        lda     $7020,y                         ; 9E44 B9 20 70                 . p
        bmi     MapEventSystem_Branch_9E40      ; 9E47 30 F7                    0.
        txa                                     ; 9E49 8A                       .
        cmp     $6F60,y                         ; 9E4A D9 60 6F                 .`o
        beq     MapEventSystem_Branch_9E3E      ; 9E4D F0 EF                    ..
        iny                                     ; 9E4F C8                       .
        jmp     MapEventSystem_Branch_9E44      ; 9E50 4C 44 9E                 LD.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9E53:
        ldx     $62A3                           ; 9E53 AE A3 62                 ..b
        ldy     $62A0                           ; 9E56 AC A0 62                 ..b
        lda     #$19                            ; 9E59 A9 19                    ..
        jsr     MapEventSystem_Entry_9F79       ; 9E5B 20 79 9F                  y.
        ldx     $62A3                           ; 9E5E AE A3 62                 ..b
        inx                                     ; 9E61 E8                       .
        ldy     $62A0                           ; 9E62 AC A0 62                 ..b
        lda     #$1A                            ; 9E65 A9 1A                    ..
        jsr     MapEventSystem_Entry_9F79       ; 9E67 20 79 9F                  y.
        ldx     $62A3                           ; 9E6A AE A3 62                 ..b
        ldy     $62A0                           ; 9E6D AC A0 62                 ..b
        iny                                     ; 9E70 C8                       .
        lda     #$1B                            ; 9E71 A9 1B                    ..
        jsr     MapEventSystem_Entry_9F79       ; 9E73 20 79 9F                  y.
        ldx     $62A3                           ; 9E76 AE A3 62                 ..b
        inx                                     ; 9E79 E8                       .
        ldy     $62A0                           ; 9E7A AC A0 62                 ..b
        iny                                     ; 9E7D C8                       .
        lda     #$1C                            ; 9E7E A9 1C                    ..
        jsr     MapEventSystem_Entry_9F79       ; 9E80 20 79 9F                  y.
        brk                                     ; 9E83 00                       .
        db   $1F,$EB,$40                     ; 9E84 1F EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_9EEE      ; 9E87 F0 65                    .e
        lda     $629A                           ; 9E89 AD 9A 62                 ..b
        and     #$03                            ; 9E8C 29 03                    ).
        cmp     #$01                            ; 9E8E C9 01                    ..
        beq     MapEventSystem_Branch_9EB2      ; 9E90 F0 20                    .
        cmp     #$02                            ; 9E92 C9 02                    ..
        beq     MapEventSystem_Branch_9ED0      ; 9E94 F0 3A                    .:
        ldx     $62A3                           ; 9E96 AE A3 62                 ..b
        inx                                     ; 9E99 E8                       .
        ldy     $62A0                           ; 9E9A AC A0 62                 ..b
        lda     #$1D                            ; 9E9D A9 1D                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9E9F 20 51 9F                  Q.
        ldx     $62A3                           ; 9EA2 AE A3 62                 ..b
        inx                                     ; 9EA5 E8                       .
        ldy     $62A0                           ; 9EA6 AC A0 62                 ..b
        iny                                     ; 9EA9 C8                       .
        lda     #$1E                            ; 9EAA A9 1E                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9EAC 20 51 9F                  Q.
        jmp     WaitForNmi                      ; 9EAF 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9EB2:
        ldx     $62A3                           ; 9EB2 AE A3 62                 ..b
        inx                                     ; 9EB5 E8                       .
        inx                                     ; 9EB6 E8                       .
        ldy     $62A0                           ; 9EB7 AC A0 62                 ..b
        lda     #$1D                            ; 9EBA A9 1D                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9EBC 20 51 9F                  Q.
        ldx     $62A3                           ; 9EBF AE A3 62                 ..b
        inx                                     ; 9EC2 E8                       .
        inx                                     ; 9EC3 E8                       .
        ldy     $62A0                           ; 9EC4 AC A0 62                 ..b
        iny                                     ; 9EC7 C8                       .
        lda     #$1E                            ; 9EC8 A9 1E                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9ECA 20 51 9F                  Q.
        jmp     WaitForNmi                      ; 9ECD 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9ED0:
        ldx     $62A3                           ; 9ED0 AE A3 62                 ..b
        ldy     $62A0                           ; 9ED3 AC A0 62                 ..b
        iny                                     ; 9ED6 C8                       .
        iny                                     ; 9ED7 C8                       .
        lda     #$1D                            ; 9ED8 A9 1D                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9EDA 20 51 9F                  Q.
        ldx     $62A3                           ; 9EDD AE A3 62                 ..b
        inx                                     ; 9EE0 E8                       .
        ldy     $62A0                           ; 9EE1 AC A0 62                 ..b
        iny                                     ; 9EE4 C8                       .
        iny                                     ; 9EE5 C8                       .
        lda     #$1E                            ; 9EE6 A9 1E                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9EE8 20 51 9F                  Q.
        jmp     WaitForNmi                      ; 9EEB 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9EEE:
        lda     $629A                           ; 9EEE AD 9A 62                 ..b
        and     #$03                            ; 9EF1 29 03                    ).
        cmp     #$01                            ; 9EF3 C9 01                    ..
        beq     MapEventSystem_Branch_9F19      ; 9EF5 F0 22                    ."
        cmp     #$02                            ; 9EF7 C9 02                    ..
        beq     MapEventSystem_Branch_9F35      ; 9EF9 F0 3A                    .:
        ldx     $62A3                           ; 9EFB AE A3 62                 ..b
        inx                                     ; 9EFE E8                       .
        inx                                     ; 9EFF E8                       .
        ldy     $62A0                           ; 9F00 AC A0 62                 ..b
        lda     #$0A                            ; 9F03 A9 0A                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9F05 20 51 9F                  Q.
        ldx     $62A3                           ; 9F08 AE A3 62                 ..b
        inx                                     ; 9F0B E8                       .
        inx                                     ; 9F0C E8                       .
        ldy     $62A0                           ; 9F0D AC A0 62                 ..b
        iny                                     ; 9F10 C8                       .
        lda     #$0A                            ; 9F11 A9 0A                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9F13 20 51 9F                  Q.
        jmp     WaitForNmi                      ; 9F16 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9F19:
        ldx     $62A3                           ; 9F19 AE A3 62                 ..b
        dex                                     ; 9F1C CA                       .
        ldy     $62A0                           ; 9F1D AC A0 62                 ..b
        lda     #$0A                            ; 9F20 A9 0A                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9F22 20 51 9F                  Q.
        ldx     $62A3                           ; 9F25 AE A3 62                 ..b
        dex                                     ; 9F28 CA                       .
        ldy     $62A0                           ; 9F29 AC A0 62                 ..b
        iny                                     ; 9F2C C8                       .
        lda     #$0A                            ; 9F2D A9 0A                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9F2F 20 51 9F                  Q.
        jmp     WaitForNmi                      ; 9F32 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9F35:
        ldx     $62A3                           ; 9F35 AE A3 62                 ..b
        ldy     $62A0                           ; 9F38 AC A0 62                 ..b
        dey                                     ; 9F3B 88                       .
        lda     #$0A                            ; 9F3C A9 0A                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9F3E 20 51 9F                  Q.
        ldx     $62A3                           ; 9F41 AE A3 62                 ..b
        inx                                     ; 9F44 E8                       .
        ldy     $62A0                           ; 9F45 AC A0 62                 ..b
        dey                                     ; 9F48 88                       .
        lda     #$0A                            ; 9F49 A9 0A                    ..
        jsr     MapEventSystem_Entry_9F51       ; 9F4B 20 51 9F                  Q.
        jmp     WaitForNmi                      ; 9F4E 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9F51:
        cpx     #$02                            ; 9F51 E0 02                    ..
        beq     MapEventSystem_Branch_9F5D      ; 9F53 F0 08                    ..
        cpx     #$0D                            ; 9F55 E0 0D                    ..
        beq     MapEventSystem_Branch_9F5D      ; 9F57 F0 04                    ..
        brk                                     ; 9F59 00                       .
        db   $09,$EF                         ; 9F5A 09 EF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 9F5C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_9F5D:
        ldx     $62A3                           ; 9F5D AE A3 62                 ..b
        ldy     $62A0                           ; 9F60 AC A0 62                 ..b
        dey                                     ; 9F63 88                       .
        lda     #$0A                            ; 9F64 A9 0A                    ..
        brk                                     ; 9F66 00                       .
        db   $09,$EF                         ; 9F67 09 EF                    ..
; ----------------------------------------------------------------------------
        ldx     $62A3                           ; 9F69 AE A3 62                 ..b
        inx                                     ; 9F6C E8                       .
        ldy     $62A0                           ; 9F6D AC A0 62                 ..b
        dey                                     ; 9F70 88                       .
        lda     #$0A                            ; 9F71 A9 0A                    ..
        brk                                     ; 9F73 00                       .
        db   $09,$EF                         ; 9F74 09 EF                    ..
; ----------------------------------------------------------------------------
        jmp     WaitForNmi                      ; 9F76 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9F79:
        brk                                     ; 9F79 00                       .
        db   $1F,$EB,$01                     ; 9F7A 1F EB 01                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Entry_9F51       ; 9F7D F0 D2                    ..
        brk                                     ; 9F7F 00                       .
        db   $1F,$EB,$02                     ; 9F80 1F EB 02                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Entry_9F51       ; 9F83 F0 CC                    ..
        brk                                     ; 9F85 00                       .
        db   $1F,$EB,$40                     ; 9F86 1F EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Entry_9F51       ; 9F89 F0 C6                    ..
        dex                                     ; 9F8B CA                       .
        jmp     MapEventSystem_Entry_9F51       ; 9F8C 4C 51 9F                 LQ.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9F8F:
        ldy     #$17                            ; 9F8F A0 17                    ..
        ldx     #$17                            ; 9F91 A2 17                    ..
        brk                                     ; 9F93 00                       .
        db   $1F,$EB,$40                     ; 9F94 1F EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_9FA6      ; 9F97 F0 0D                    ..
        ldx     #$2F                            ; 9F99 A2 2F                    ./
        lda     $629A                           ; 9F9B AD 9A 62                 ..b
        and     #$03                            ; 9F9E 29 03                    ).
        cmp     #$02                            ; 9FA0 C9 02                    ..
        beq     MapEventSystem_Branch_9FA6      ; 9FA2 F0 02                    ..
        ldx     #$47                            ; 9FA4 A2 47                    .G
MapEventSystem_Branch_9FA6:
        lda     $9FB1,x                         ; 9FA6 BD B1 9F                 ...
        sta     $7664,y                         ; 9FA9 99 64 76                 .dv
        dex                                     ; 9FAC CA                       .
        dey                                     ; 9FAD 88                       .
        bpl     MapEventSystem_Branch_9FA6      ; 9FAE 10 F6                    ..
        rts                                     ; 9FB0 60                       `
; ----------------------------------------------------------------------------
        db   $F2,$F3,$F6,$F7,$F4,$F5,$F7,$F8 ; 9FB1 F2 F3 F6 F7 F4 F5 F7 F8  ........
        db   $F9,$FA,$FC,$FD,$FA,$FB,$FE,$FF ; 9FB9 F9 FA FC FD FA FB FE FF  ........
        db   $AD,$AE,$AF,$B0,$AD,$AE,$AF,$B0 ; 9FC1 AD AE AF B0 AD AE AF B0  ........
        db   $AD,$AE,$F2,$F3,$AD,$AE,$F4,$F5 ; 9FC9 AD AE F2 F3 AD AE F4 F5  ........
        db   $F6,$F7,$F9,$FA,$F7,$F8,$FA,$FB ; 9FD1 F6 F7 F9 FA F7 F8 FA FB  ........
        db   $FC,$FD,$AF,$B0,$FE,$FF,$AF,$B0 ; 9FD9 FC FD AF B0 FE FF AF B0  ........
        db   $AD,$F2,$AF,$F6,$F3,$F4,$F7,$F7 ; 9FE1 AD F2 AF F6 F3 F4 F7 F7  ........
        db   $AD,$F9,$AF,$FC,$FA,$FA,$FD,$FE ; 9FE9 AD F9 AF FC FA FA FD FE  ........
        db   $F5,$AE,$F8,$B0,$FB,$AE,$FF,$B0 ; 9FF1 F5 AE F8 B0 FB AE FF B0  ........
; ----------------------------------------------------------------------------
MapEventSystem_Entry_9FF9:
        brk                                     ; 9FF9 00                       .
        db   $0A,$EB,$04                     ; 9FFA 0A EB 04                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A043      ; 9FFD D0 44                    .D
        lda     $6FC0                           ; 9FFF AD C0 6F                 ..o
        cmp     #$0B                            ; A002 C9 0B                    ..
        bne     MapEventSystem_Branch_A03F      ; A004 D0 39                    .9
        lda     PlayerLocalX                    ; A006 A5 44                    .D
        sec                                     ; A008 38                       8
        sbc     #$06                            ; A009 E9 06                    ..
        cmp     #$03                            ; A00B C9 03                    ..
        bcs     MapEventSystem_Branch_A03F      ; A00D B0 30                    .0
        brk                                     ; A00F 00                       .
        db   $26,$EB,$08                     ; A010 26 EB 08                 &..
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A043      ; A013 D0 2E                    ..
        brk                                     ; A015 00                       .
        db   $26,$CB,$08                     ; A016 26 CB 08                 &..
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_B16B       ; A019 20 6B B1                  k.
        brk                                     ; A01C 00                       .
        db   $07,$6F,$43                     ; A01D 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A020 00                       .
        db   $C3,$4B                         ; A021 C3 4B                    .K
; ----------------------------------------------------------------------------
        brk                                     ; A023 00                       .
        db   $07,$6F,$48                     ; A024 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        cmp     #$01                            ; A027 C9 01                    ..
        bcs     MapEventSystem_Branch_A045      ; A029 B0 1A                    ..
        brk                                     ; A02B 00                       .
        db   $C1,$4B                         ; A02C C1 4B                    .K
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; A02E 20 0A D2                  ..
        lda     #$8F                            ; A031 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; A033 20 3A A2                  :.
        lda     #$2F                            ; A036 A9 2F                    ./
        brk                                     ; A038 00                       .
        db   $07,$CF                         ; A039 07 CF                    ..
; ----------------------------------------------------------------------------
        lda     #$10                            ; A03B A9 10                    ..
        sta     $51                             ; A03D 85 51                    .Q
MapEventSystem_Branch_A03F:
        brk                                     ; A03F 00                       .
        db   $26,$DB,$F7                     ; A040 26 DB F7                 &..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A043:
        clc                                     ; A043 18                       .
        rts                                     ; A044 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A045:
        jsr     UpperFixedEngine_Entry_D1F3     ; A045 20 F3 D1                  ..
        lda     #$10                            ; A048 A9 10                    ..
        sta     $51                             ; A04A 85 51                    .Q
        clc                                     ; A04C 18                       .
        rts                                     ; A04D 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A04E:
        brk                                     ; A04E 00                       .
        db   $0A,$CB,$04                     ; A04F 0A CB 04                 ...
; ----------------------------------------------------------------------------
        lda     #$30                            ; A052 A9 30                    .0
        brk                                     ; A054 00                       .
        db   $07,$CF                         ; A055 07 CF                    ..
; ----------------------------------------------------------------------------
        lda     #$06                            ; A057 A9 06                    ..
        sta     $51                             ; A059 85 51                    .Q
        clc                                     ; A05B 18                       .
        rts                                     ; A05C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A05D:
        lda     $51                             ; A05D A5 51                    .Q
        pha                                     ; A05F 48                       H
        brk                                     ; A060 00                       .
        db   $07,$6F,$43                     ; A061 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A064 00                       .
        db   $66,$3B                         ; A065 66 3B                    f;
; ----------------------------------------------------------------------------
        lda     #$76                            ; A067 A9 76                    .v
        brk                                     ; A069 00                       .
        db   $66,$73                         ; A06A 66 73                    fs
; ----------------------------------------------------------------------------
        sta     $F9                             ; A06C 85 F9                    ..
        lda     #$71                            ; A06E A9 71                    .q
        sta     $FA                             ; A070 85 FA                    ..
        brk                                     ; A072 00                       .
        db   $A0,$2B                         ; A073 A0 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; A075 00                       .
        db   $2B,$FB                         ; A076 2B FB                    +.
; ----------------------------------------------------------------------------
        brk                                     ; A078 00                       .
        db   $07,$9F                         ; A079 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A07B 00                       .
        db   $09,$9F                         ; A07C 09 9F                    ..
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_A7A4       ; A07E 20 A4 A7                  ..
        bcc     $A089                           ; A081 90 06                    ..
        brk                                     ; A083 00                       .
        db   $8E,$4B                         ; A084 8E 4B                    .K
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_A08C      ; A086 4C 8C A0                 L..
; ----------------------------------------------------------------------------
        db   $00,$27,$4B                     ; A089 00 27 4B                 .'K
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A08C:
        jsr     UpperFixedEngine_Entry_D214     ; A08C 20 14 D2                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; A08F 20 F3 D1                  ..
        pla                                     ; A092 68                       h
        sta     $51                             ; A093 85 51                    .Q
        sec                                     ; A095 38                       8
        rts                                     ; A096 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A097:
        lda     #$8F                            ; A097 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; A099 20 3A A2                  :.
        ldx     #$0F                            ; A09C A2 0F                    ..
        ldy     #$07                            ; A09E A0 07                    ..
        jsr     MapEventSystem_Entry_A0A5       ; A0A0 20 A5 A0                  ..
        ldy     #$08                            ; A0A3 A0 08                    ..
MapEventSystem_Entry_A0A5:
        lda     $7060,x                         ; A0A5 BD 60 70                 .`p
        sta     $7060,y                         ; A0A8 99 60 70                 .`p
        lda     $7080,x                         ; A0AB BD 80 70                 ..p
        sta     $7080,y                         ; A0AE 99 80 70                 ..p
        sec                                     ; A0B1 38                       8
        rts                                     ; A0B2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A0B3:
        brk                                     ; A0B3 00                       .
        db   $07,$6F,$43                     ; A0B4 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A0B7 00                       .
        db   $C4,$4B                         ; A0B8 C4 4B                    .K
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; A0BA 20 18 D2                  ..
        lda     #$11                            ; A0BD A9 11                    ..
        brk                                     ; A0BF 00                       .
        db   $07,$CF                         ; A0C0 07 CF                    ..
; ----------------------------------------------------------------------------
        lda     #$1E                            ; A0C2 A9 1E                    ..
        sta     $51                             ; A0C4 85 51                    .Q
        clc                                     ; A0C6 18                       .
        rts                                     ; A0C7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A0C8:
        lda     #$00                            ; A0C8 A9 00                    ..
        sta     $54                             ; A0CA 85 54                    .T
MapEventSystem_Branch_A0CC:
        lda     $54                             ; A0CC A5 54                    .T
        asl     a                               ; A0CE 0A                       .
        tax                                     ; A0CF AA                       .
        ldy     $A113,x                         ; A0D0 BC 13 A1                 ...
        lda     $A112,x                         ; A0D3 BD 12 A1                 ...
        tax                                     ; A0D6 AA                       .
        lda     #$10                            ; A0D7 A9 10                    ..
        brk                                     ; A0D9 00                       .
        db   $09,$EF                         ; A0DA 09 EF                    ..
; ----------------------------------------------------------------------------
        ldx     #$0A                            ; A0DC A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A0DE 20 0C C9                  ..
        inc     $54                             ; A0E1 E6 54                    .T
        lda     $54                             ; A0E3 A5 54                    .T
        cmp     #$09                            ; A0E5 C9 09                    ..
        bcc     MapEventSystem_Branch_A0CC      ; A0E7 90 E3                    ..
        lda     #$80                            ; A0E9 A9 80                    ..
        sta     $0300                           ; A0EB 8D 00 03                 ...
        lda     #$40                            ; A0EE A9 40                    .@
        sta     $0301                           ; A0F0 8D 01 03                 ...
        lda     #$00                            ; A0F3 A9 00                    ..
        sta     NextTextCharacter               ; A0F5 8D 02 03                 ...
        ldx     #$3F                            ; A0F8 A2 3F                    .?
MapEventSystem_Branch_A0FA:
        lda     $A124,x                         ; A0FA BD 24 A1                 .$.
        sta     $0303,x                         ; A0FD 9D 03 03                 ...
        dex                                     ; A100 CA                       .
        bpl     MapEventSystem_Branch_A0FA      ; A101 10 F7                    ..
        inc     $050B                           ; A103 EE 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; A106 20 2D C6                  -.
        ldx     #$00                            ; A109 A2 00                    ..
        lda     #$11                            ; A10B A9 11                    ..
        sta     $7046,x                         ; A10D 9D 46 70                 .Fp
        sec                                     ; A110 38                       8
        rts                                     ; A111 60                       `
; ----------------------------------------------------------------------------
        db   $0B                             ; A112 0B                       .
        db   $0E,$0E,$0B,$0B,$0C,$0E,$0D,$0C ; A113 0E 0E 0B 0B 0C 0E 0D 0C  ........
        db   $0E,$0D,$0B,$0B,$0D,$0E,$0C,$0D ; A11B 0E 0D 0B 0B 0D 0E 0C 0D  ........
        db   $0E                             ; A123 0E                       .
        db   $07,$0F,$1F,$9F,$5F,$7F,$3F,$3F ; A124 07 0F 1F 9F 5F 7F 3F 3F  ...._.??
        db   $07,$0F,$1F,$1D,$1C,$1E,$1F,$3E ; A12C 07 0F 1F 1D 1C 1E 1F 3E  .......>
        db   $D8,$EC,$F4,$F6,$F6,$AE,$B6,$EC ; A134 D8 EC F4 F6 F6 AE B6 EC  ........
        db   $F8,$9C,$7C,$FE,$BE,$5E,$4E,$1C ; A13C F8 9C 7C FE BE 5E 4E 1C  ..|..^N.
        db   $79,$70,$31,$0D,$00,$01,$00,$07 ; A144 79 70 31 0D 00 01 00 07  yp1.....
        db   $7E,$7F,$3E,$02,$0F,$1E,$1F,$38 ; A14C 7E 7F 3E 02 0F 1E 1F 38  ~.>....8
        db   $80,$58,$78,$74,$40,$80,$1C,$BC ; A154 80 58 78 74 40 80 1C BC  .Xxt@...
        db   $7C,$A6,$86,$88,$BE,$7E,$E0,$7C ; A15C 7C A6 86 88 BE 7E E0 7C  |....~.|
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A164:
        lda     PlayerLocalY                    ; A164 A5 45                    .E
        cmp     #$13                            ; A166 C9 13                    ..
        bne     MapEventSystem_Branch_A18A      ; A168 D0 20                    .
        dec     PlayerLocalY                    ; A16A C6 45                    .E
        dec     $6F80                           ; A16C CE 80 6F                 ..o
        lda     #$00                            ; A16F A9 00                    ..
        sta     $3E                             ; A171 85 3E                    .>
        jsr     MapEventSystem_Entry_A179       ; A173 20 79 A1                  y.
MapEventSystem_Entry_A176:
        jsr     FixedTrampoline02               ; A176 20 07 C0                  ..
MapEventSystem_Entry_A179:
        ldx     #$02                            ; A179 A2 02                    ..
MapEventSystem_Branch_A17B:
        lda     $7001,x                         ; A17B BD 01 70                 ..p
        eor     #$02                            ; A17E 49 02                    I.
        and     #$7F                            ; A180 29 7F                    ).
        sta     $7001,x                         ; A182 9D 01 70                 ..p
        dex                                     ; A185 CA                       .
        bpl     MapEventSystem_Branch_A17B      ; A186 10 F3                    ..
        sec                                     ; A188 38                       8
        rts                                     ; A189 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A18A:
        clc                                     ; A18A 18                       .
        rts                                     ; A18B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A18C:
        jsr     UpperFixedEngine_Entry_C891     ; A18C 20 91 C8                  ..
        and     #$07                            ; A18F 29 07                    ).
        ldx     $51                             ; A191 A6 51                    .Q
        sta     $7180,x                         ; A193 9D 80 71                 ..q
        inc     $7180,x                         ; A196 FE 80 71                 ..q
        inc     $7180,x                         ; A199 FE 80 71                 ..q
        lda     $7080,x                         ; A19C BD 80 70                 ..p
        clc                                     ; A19F 18                       .
        adc     #$02                            ; A1A0 69 02                    i.
        sta     $70C0,x                         ; A1A2 9D C0 70                 ..p
        lda     $7060,x                         ; A1A5 BD 60 70                 .`p
        adc     #$00                            ; A1A8 69 00                    i.
        sta     $70A0,x                         ; A1AA 9D A0 70                 ..p
        sec                                     ; A1AD 38                       8
        rts                                     ; A1AE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A1AF:
        sta     $00                             ; A1AF 85 00                    ..
        lda     $6F66,x                         ; A1B1 BD 66 6F                 .fo
        sta     $6F61,y                         ; A1B4 99 61 6F                 .ao
        lda     $6F86,x                         ; A1B7 BD 86 6F                 ..o
        sta     $6F81,y                         ; A1BA 99 81 6F                 ..o
        lda     $6FA6,x                         ; A1BD BD A6 6F                 ..o
        sta     $6FA1,y                         ; A1C0 99 A1 6F                 ..o
        lda     $6FC6,x                         ; A1C3 BD C6 6F                 ..o
        sta     $6FC1,y                         ; A1C6 99 C1 6F                 ..o
        lda     $6FE6,x                         ; A1C9 BD E6 6F                 ..o
        sta     $6FE1,y                         ; A1CC 99 E1 6F                 ..o
        lda     #$00                            ; A1CF A9 00                    ..
        sta     $7021,y                         ; A1D1 99 21 70                 .!p
        lda     #$81                            ; A1D4 A9 81                    ..
        sta     $6F66,x                         ; A1D6 9D 66 6F                 .fo
        sta     $6F86,x                         ; A1D9 9D 86 6F                 ..o
        sta     $6FA6,x                         ; A1DC 9D A6 6F                 ..o
        sta     $6FC6,x                         ; A1DF 9D C6 6F                 ..o
        lda     $7001,y                         ; A1E2 B9 01 70                 ..p
        and     #$BC                            ; A1E5 29 BC                    ).
        ora     #$40                            ; A1E7 09 40                    .@
        ora     $00                             ; A1E9 05 00                    ..
        sta     $7001,y                         ; A1EB 99 01 70                 ..p
        iny                                     ; A1EE C8                       .
        sec                                     ; A1EF 38                       8
        rts                                     ; A1F0 60                       `
; ----------------------------------------------------------------------------
        db   $03,$02,$03,$02                 ; A1F1 03 02 03 02              ....
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A1F5:
        lda     $627E                           ; A1F5 AD 7E 62                 .~b
        asl     a                               ; A1F8 0A                       .
        asl     a                               ; A1F9 0A                       .
        asl     a                               ; A1FA 0A                       .
        asl     a                               ; A1FB 0A                       .
        rts                                     ; A1FC 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A1FD:
        lda     $627E                           ; A1FD AD 7E 62                 .~b
        eor     #$80                            ; A200 49 80                    I.
        asl     a                               ; A202 0A                       .
        rts                                     ; A203 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A204:
        ldx     #$02                            ; A204 A2 02                    ..
MapEventSystem_Branch_A206:
        lda     $7000,x                         ; A206 BD 00 70                 ..p
        and     #$FC                            ; A209 29 FC                    ).
        sta     $7000,x                         ; A20B 9D 00 70                 ..p
        dex                                     ; A20E CA                       .
        bpl     MapEventSystem_Branch_A206      ; A20F 10 F5                    ..
        sec                                     ; A211 38                       8
        rts                                     ; A212 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A213:
        ldx     #$0B                            ; A213 A2 0B                    ..
        jsr     MapEventSystem_Entry_A21C       ; A215 20 1C A2                  ..
        bcs     MapEventSystem_Branch_A24B      ; A218 B0 31                    .1
        ldx     #$0A                            ; A21A A2 0A                    ..
MapEventSystem_Entry_A21C:
        txa                                     ; A21C 8A                       .
        pha                                     ; A21D 48                       H
        jsr     MapEventSystem_Entry_98BD       ; A21E 20 BD 98                  ..
        pla                                     ; A221 68                       h
        tax                                     ; A222 AA                       .
        bcc     MapEventSystem_Branch_A24B      ; A223 90 26                    .&
        ldy     #$07                            ; A225 A0 07                    ..
        lda     $7080,y                         ; A227 B9 80 70                 ..p
        clc                                     ; A22A 18                       .
        adc     #$01                            ; A22B 69 01                    i.
        sta     $7080,x                         ; A22D 9D 80 70                 ..p
        lda     $7060,y                         ; A230 B9 60 70                 .`p
        adc     #$00                            ; A233 69 00                    i.
        sta     $7060,x                         ; A235 9D 60 70                 .`p
        lda     #$8F                            ; A238 A9 8F                    ..
MapEventSystem_Entry_A23A:
        sta     $0530                           ; A23A 8D 30 05                 .0.
        lda     #$01                            ; A23D A9 01                    ..
        sta     $0531                           ; A23F 8D 31 05                 .1.
        lda     #$00                            ; A242 A9 00                    ..
        sta     $0533                           ; A244 8D 33 05                 .3.
        sta     $0532                           ; A247 8D 32 05                 .2.
        sec                                     ; A24A 38                       8
MapEventSystem_Branch_A24B:
        rts                                     ; A24B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A24C:
        jsr     MapEventSystem_Entry_995E       ; A24C 20 5E 99                  ^.
        brk                                     ; A24F 00                       .
        db   $4A,$3B                         ; A250 4A 3B                    J;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; A252 20 0A D2                  ..
        lda     #$00                            ; A255 A9 00                    ..
        sta     $0530                           ; A257 8D 30 05                 .0.
MapEventSystem_Entry_A25A:
        brk                                     ; A25A 00                       .
        db   $82,$FB                         ; A25B 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; A25D 20 C5 C5                  ..
        lda     #$01                            ; A260 A9 01                    ..
        sta     CurrentSubmapNumber             ; A262 85 64                    .d
        lda     #$19                            ; A264 A9 19                    ..
        sta     PlayerLocalX                    ; A266 85 44                    .D
        lda     #$02                            ; A268 A9 02                    ..
        sta     PlayerLocalY                    ; A26A 85 45                    .E
        lda     #$83                            ; A26C A9 83                    ..
        brk                                     ; A26E 00                       .
        and     ($EF),y                         ; A26F 31 EF                    1.
        lda     #$06                            ; A271 A9 06                    ..
        sta     $51                             ; A273 85 51                    .Q
        jsr     UpperFixedEngine_Entry_C5BF     ; A275 20 BF C5                  ..
        clc                                     ; A278 18                       .
        rts                                     ; A279 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A27A:
        ldx     #$00                            ; A27A A2 00                    ..
MapEventSystem_Branch_A27C:
        lda     $6FA0                           ; A27C AD A0 6F                 ..o
        and     #$FE                            ; A27F 29 FE                    ).
        cmp     $A2EF,x                         ; A281 DD EF A2                 ...
        beq     MapEventSystem_Branch_A29C      ; A284 F0 16                    ..
MapEventSystem_Branch_A286:
        lda     CurrentSubmapNumber             ; A286 A5 64                    .d
        cmp     #$02                            ; A288 C9 02                    ..
        beq     MapEventSystem_Branch_A292      ; A28A F0 06                    ..
        inx                                     ; A28C E8                       .
        inx                                     ; A28D E8                       .
        cpx     #$04                            ; A28E E0 04                    ..
        bcc     MapEventSystem_Branch_A27C      ; A290 90 EA                    ..
MapEventSystem_Branch_A292:
        brk                                     ; A292 00                       .
        db   $0E,$DB,$FB                     ; A293 0E DB FB                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A296:
        lda     #$06                            ; A296 A9 06                    ..
        sta     $51                             ; A298 85 51                    .Q
        clc                                     ; A29A 18                       .
        rts                                     ; A29B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A29C:
        lda     $6FC0                           ; A29C AD C0 6F                 ..o
        cmp     $A2F0,x                         ; A29F DD F0 A2                 ...
        bne     MapEventSystem_Branch_A286      ; A2A2 D0 E2                    ..
        brk                                     ; A2A4 00                       .
        db   $0E,$EB,$04                     ; A2A5 0E EB 04                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A2A8:
        bne     MapEventSystem_Branch_A296      ; A2A8 D0 EC                    ..
MapEventSystem_Entry_A2AA:
        brk                                     ; A2AA 00                       .
        db   $0E,$CB,$04                     ; A2AB 0E CB 04                 ...
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_B16B       ; A2AE 20 6B B1                  k.
        jsr     MapEventSystem_Entry_995E       ; A2B1 20 5E 99                  ^.
        brk                                     ; A2B4 00                       .
        db   $B3,$3B                         ; A2B5 B3 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; A2B7 00                       .
        db   $07,$6F,$48                     ; A2B8 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        cmp     #$01                            ; A2BB C9 01                    ..
        bcs     MapEventSystem_Branch_A2E9      ; A2BD B0 2A                    .*
        brk                                     ; A2BF 00                       .
        db   $A6,$FB                         ; A2C0 A6 FB                    ..
; ----------------------------------------------------------------------------
        lda     $6FA0                           ; A2C2 AD A0 6F                 ..o
        and     #$FE                            ; A2C5 29 FE                    ).
        tay                                     ; A2C7 A8                       .
        ldx     #$07                            ; A2C8 A2 07                    ..
        jsr     MapEventSystem_Entry_A2F3       ; A2CA 20 F3 A2                  ..
        iny                                     ; A2CD C8                       .
        ldx     #$08                            ; A2CE A2 08                    ..
        jsr     MapEventSystem_Entry_A2F3       ; A2D0 20 F3 A2                  ..
        ldx     #$09                            ; A2D3 A2 09                    ..
        sta     $7040,x                         ; A2D5 9D 40 70                 .@p
        lda     #$00                            ; A2D8 A9 00                    ..
        sta     $6F58                           ; A2DA 8D 58 6F                 .Xo
        sta     $6F48                           ; A2DD 8D 48 6F                 .Ho
        sta     $6F49                           ; A2E0 8D 49 6F                 .Io
        sta     $6F4C                           ; A2E3 8D 4C 6F                 .Lo
        sta     $6F4D                           ; A2E6 8D 4D 6F                 .Mo
MapEventSystem_Branch_A2E9:
        jsr     UpperFixedEngine_Entry_D1F3     ; A2E9 20 F3 D1                  ..
        jmp     MapEventSystem_Branch_A296      ; A2EC 4C 96 A2                 L..
; ----------------------------------------------------------------------------
        db   $14                             ; A2EF 14                       .
        db   $0A,$08,$0E                     ; A2F0 0A 08 0E                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A2F3:
        tya                                     ; A2F3 98                       .
        sta     $6F60,x                         ; A2F4 9D 60 6F                 .`o
        sta     $6FA0,x                         ; A2F7 9D A0 6F                 ..o
        lda     $6FC0                           ; A2FA AD C0 6F                 ..o
        sec                                     ; A2FD 38                       8
        sbc     #$02                            ; A2FE E9 02                    ..
        sta     $6F80,x                         ; A300 9D 80 6F                 ..o
        sta     $6FC0,x                         ; A303 9D C0 6F                 ..o
        lda     #$11                            ; A306 A9 11                    ..
        sta     $7040,x                         ; A308 9D 40 70                 .@p
        rts                                     ; A30B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A30C:
        ldx     #$07                            ; A30C A2 07                    ..
        jsr     MapEventSystem_Entry_A313       ; A30E 20 13 A3                  ..
        ldx     #$08                            ; A311 A2 08                    ..
MapEventSystem_Entry_A313:
        ldy     $6FC0,x                         ; A313 BC C0 6F                 ..o
        lda     $6FA0,x                         ; A316 BD A0 6F                 ..o
        tax                                     ; A319 AA                       .
        lda     #$18                            ; A31A A9 18                    ..
        brk                                     ; A31C 00                       .
        db   $09,$EF                         ; A31D 09 EF                    ..
; ----------------------------------------------------------------------------
        clc                                     ; A31F 18                       .
        rts                                     ; A320 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A321:
        lda     #$F3                            ; A321 A9 F3                    ..
        sta     $55                             ; A323 85 55                    .U
        lda     #$02                            ; A325 A9 02                    ..
        sta     $57                             ; A327 85 57                    .W
        lda     #$04                            ; A329 A9 04                    ..
        sta     $56                             ; A32B 85 56                    .V
        lda     #$1E                            ; A32D A9 1E                    ..
        sta     $58                             ; A32F 85 58                    .X
        brk                                     ; A331 00                       .
        db   $93,$FB                         ; A332 93 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A334 00                       .
        db   $30,$EF                         ; A335 30 EF                    0.
; ----------------------------------------------------------------------------
        brk                                     ; A337 00                       .
        db   $2F,$EF                         ; A338 2F EF                    /.
; ----------------------------------------------------------------------------
        lda     #$06                            ; A33A A9 06                    ..
        sta     $51                             ; A33C 85 51                    .Q
        jsr     MapEventSystem_Entry_B16B       ; A33E 20 6B B1                  k.
        clc                                     ; A341 18                       .
        rts                                     ; A342 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A343:
        ldx     #$02                            ; A343 A2 02                    ..
MapEventSystem_Branch_A345:
        lda     $7000,x                         ; A345 BD 00 70                 ..p
        ora     #$03                            ; A348 09 03                    ..
        sta     $7000,x                         ; A34A 9D 00 70                 ..p
        dex                                     ; A34D CA                       .
        bpl     MapEventSystem_Branch_A345      ; A34E 10 F5                    ..
        sec                                     ; A350 38                       8
        rts                                     ; A351 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A352:
        lda     $6FA0                           ; A352 AD A0 6F                 ..o
        and     #$FE                            ; A355 29 FE                    ).
        cmp     #$0E                            ; A357 C9 0E                    ..
        bne     MapEventSystem_Branch_A365      ; A359 D0 0A                    ..
        lda     $6FC0                           ; A35B AD C0 6F                 ..o
        cmp     #$03                            ; A35E C9 03                    ..
        bne     MapEventSystem_Branch_A365      ; A360 D0 03                    ..
        jmp     MapEventSystem_Branch_AE46      ; A362 4C 46 AE                 LF.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A365:
        clc                                     ; A365 18                       .
        rts                                     ; A366 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A367:
        lda     PlayerLocalX                    ; A367 A5 44                    .D
        cmp     #$0C                            ; A369 C9 0C                    ..
        bne     MapEventSystem_Branch_A38C      ; A36B D0 1F                    ..
        lda     PlayerLocalY                    ; A36D A5 45                    .E
        cmp     #$24                            ; A36F C9 24                    .$
        bne     MapEventSystem_Branch_A38C      ; A371 D0 19                    ..
        lda     #$83                            ; A373 A9 83                    ..
        sta     $6F41                           ; A375 8D 41 6F                 .Ao
        sta     $6F46                           ; A378 8D 46 6F                 .Fo
        sta     $6F47                           ; A37B 8D 47 6F                 .Go
        lda     #$11                            ; A37E A9 11                    ..
        ldx     #$01                            ; A380 A2 01                    ..
        sta     $7046,x                         ; A382 9D 46 70                 .Fp
        ldx     #$02                            ; A385 A2 02                    ..
        sta     $7046,x                         ; A387 9D 46 70                 .Fp
        sec                                     ; A38A 38                       8
        rts                                     ; A38B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A38C:
        clc                                     ; A38C 18                       .
        rts                                     ; A38D 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A38E:
        lda     #$05                            ; A38E A9 05                    ..
        sta     $6F47                           ; A390 8D 47 6F                 .Go
        lda     #$FF                            ; A393 A9 FF                    ..
        sta     $054E                           ; A395 8D 4E 05                 .N.
        sta     $054F                           ; A398 8D 4F 05                 .O.
        sec                                     ; A39B 38                       8
        rts                                     ; A39C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A39D:
        ldx     $6FA0                           ; A39D AE A0 6F                 ..o
        cpx     #$02                            ; A3A0 E0 02                    ..
        bne     MapEventSystem_Branch_A3D8      ; A3A2 D0 34                    .4
        ldy     $6FC0                           ; A3A4 AC C0 6F                 ..o
        cpy     #$1A                            ; A3A7 C0 1A                    ..
        bne     MapEventSystem_Branch_A3D8      ; A3A9 D0 2D                    .-
        stx     PlayerLocalX                    ; A3AB 86 44                    .D
        stx     $6F60                           ; A3AD 8E 60 6F                 .`o
        sty     PlayerLocalY                    ; A3B0 84 45                    .E
        sty     $6F80                           ; A3B2 8C 80 6F                 ..o
        lda     $7000                           ; A3B5 AD 00 70                 ..p
        and     #$FC                            ; A3B8 29 FC                    ).
        ora     #$01                            ; A3BA 09 01                    ..
        sta     $7000                           ; A3BC 8D 00 70                 ..p
        ldx     $51                             ; A3BF A6 51                    .Q
        lda     $7000,x                         ; A3C1 BD 00 70                 ..p
        ora     #$03                            ; A3C4 09 03                    ..
        sta     $7000,x                         ; A3C6 9D 00 70                 ..p
        lda     #$00                            ; A3C9 A9 00                    ..
        sta     $3E                             ; A3CB 85 3E                    .>
        lda     $51                             ; A3CD A5 51                    .Q
        pha                                     ; A3CF 48                       H
        brk                                     ; A3D0 00                       .
        db   $11,$5F                         ; A3D1 11 5F                    ._
; ----------------------------------------------------------------------------
        pla                                     ; A3D3 68                       h
        sta     $51                             ; A3D4 85 51                    .Q
        sec                                     ; A3D6 38                       8
        rts                                     ; A3D7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A3D8:
        clc                                     ; A3D8 18                       .
        rts                                     ; A3D9 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A3DA:
        brk                                     ; A3DA 00                       .
        db   $09,$EB,$04                     ; A3DB 09 EB 04                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A404      ; A3DE D0 24                    .$
        jsr     UpperFixedEngine_Entry_C891     ; A3E0 20 91 C8                  ..
        and     #$07                            ; A3E3 29 07                    ).
        tax                                     ; A3E5 AA                       .
        lda     $A3FC,x                         ; A3E6 BD FC A3                 ...
        ldx     #$03                            ; A3E9 A2 03                    ..
        brk                                     ; A3EB 00                       .
        db   $0D,$87                         ; A3EC 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     $51                             ; A3EE A6 51                    .Q
        lda     $6FE0,x                         ; A3F0 BD E0 6F                 ..o
        and     #$F0                            ; A3F3 29 F0                    ).
        ora     #$03                            ; A3F5 09 03                    ..
        sta     $6FE0,x                         ; A3F7 9D E0 6F                 ..o
        sec                                     ; A3FA 38                       8
        rts                                     ; A3FB 60                       `
; ----------------------------------------------------------------------------
        db   $11,$14,$17,$18,$3B,$1F,$22,$21 ; A3FC 11 14 17 18 3B 1F 22 21  ....;."!
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A404:
        ldx     $51                             ; A404 A6 51                    .Q
        lda     #$80                            ; A406 A9 80                    ..
        sta     $6F60,x                         ; A408 9D 60 6F                 .`o
        sta     $6FA0,x                         ; A40B 9D A0 6F                 ..o
        sta     $6F80,x                         ; A40E 9D 80 6F                 ..o
        sta     $6FC0,x                         ; A411 9D C0 6F                 ..o
        clc                                     ; A414 18                       .
        rts                                     ; A415 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A416:
        jsr     UpperFixedEngine_Entry_C8EC     ; A416 20 EC C8                  ..
        lda     ButtonsPressed                  ; A419 A5 14                    ..
        and     #$F0                            ; A41B 29 F0                    ).
        beq     MapEventSystem_Entry_A42F       ; A41D F0 10                    ..
        ldx     #$00                            ; A41F A2 00                    ..
        stx     $6FE0                           ; A421 8E E0 6F                 ..o
        dec     $7000                           ; A424 CE 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D7F1     ; A427 20 F1 D7                  ..
        jsr     MapEventSystem_Entry_A42F       ; A42A 20 2F A4                  /.
        sec                                     ; A42D 38                       8
        rts                                     ; A42E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A42F:
        lda     #$82                            ; A42F A9 82                    ..
        sta     $0530                           ; A431 8D 30 05                 .0.
        lda     #$01                            ; A434 A9 01                    ..
        sta     $0531                           ; A436 8D 31 05                 .1.
        lda     #$00                            ; A439 A9 00                    ..
        sta     $0533                           ; A43B 8D 33 05                 .3.
        sta     $0532                           ; A43E 8D 32 05                 .2.
        clc                                     ; A441 18                       .
        rts                                     ; A442 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A443:
        lda     $7021                           ; A443 AD 21 70                 .!p
        ora     #$80                            ; A446 09 80                    ..
        sta     $7021                           ; A448 8D 21 70                 .!p
        sec                                     ; A44B 38                       8
        rts                                     ; A44C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A44D:
        jsr     MapEventSystem_Entry_B73E       ; A44D 20 3E B7                  >.
        brk                                     ; A450 00                       .
        db   $08,$CB                         ; A451 08 CB                    ..
; ----------------------------------------------------------------------------
        jsr     $00A9                           ; A453 20 A9 00                  ..
        sta     $0530                           ; A456 8D 30 05                 .0.
        sec                                     ; A459 38                       8
        rts                                     ; A45A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A45B:
        lda     $6FA0                           ; A45B AD A0 6F                 ..o
        sec                                     ; A45E 38                       8
        sbc     #$10                            ; A45F E9 10                    ..
        cmp     #$05                            ; A461 C9 05                    ..
        bcs     MapEventSystem_Branch_A49D      ; A463 B0 38                    .8
        lda     $6FC0                           ; A465 AD C0 6F                 ..o
        cmp     #$03                            ; A468 C9 03                    ..
        bne     MapEventSystem_Branch_A49D      ; A46A D0 31                    .1
        brk                                     ; A46C 00                       .
        db   $0F,$EB,$01                     ; A46D 0F EB 01                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A4A1      ; A470 D0 2F                    ./
        lda     $3D                             ; A472 A5 3D                    .=
        bne     MapEventSystem_Branch_A49D      ; A474 D0 27                    .'
        brk                                     ; A476 00                       .
        db   $0F,$CB,$01                     ; A477 0F CB 01                 ...
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_B16B       ; A47A 20 6B B1                  k.
        lda     $51                             ; A47D A5 51                    .Q
        pha                                     ; A47F 48                       H
        jsr     MapEventSystem_Entry_995E       ; A480 20 5E 99                  ^.
        brk                                     ; A483 00                       .
        db   $8A,$3B                         ; A484 8A 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; A486 00                       .
        db   $07,$6F,$48                     ; A487 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        tax                                     ; A48A AA                       .
        pla                                     ; A48B 68                       h
        sta     $51                             ; A48C 85 51                    .Q
        cpx     #$01                            ; A48E E0 01                    ..
        bcs     MapEventSystem_Branch_A4A3      ; A490 B0 11                    ..
        lda     $51                             ; A492 A5 51                    .Q
        pha                                     ; A494 48                       H
        brk                                     ; A495 00                       .
        db   $02,$7F                         ; A496 02 7F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; A498 68                       h
        sta     $51                             ; A499 85 51                    .Q
        sec                                     ; A49B 38                       8
        rts                                     ; A49C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A49D:
        brk                                     ; A49D 00                       .
        db   $0F,$DB                         ; A49E 0F DB                    ..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A4A1 = $+ 1
        inc     $6018,x                         ; A4A0 FE 18 60                 ..`
MapEventSystem_Branch_A4A3:
        jsr     UpperFixedEngine_Entry_D1F3     ; A4A3 20 F3 D1                  ..
        clc                                     ; A4A6 18                       .
        rts                                     ; A4A7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A4A8:
        lda     $6FC0                           ; A4A8 AD C0 6F                 ..o
        cmp     #$17                            ; A4AB C9 17                    ..
        bne     MapEventSystem_Branch_A507      ; A4AD D0 58                    .X
        lda     #$8F                            ; A4AF A9 8F                    ..
        sta     $0530                           ; A4B1 8D 30 05                 .0.
        lda     #$01                            ; A4B4 A9 01                    ..
        sta     $0531                           ; A4B6 8D 31 05                 .1.
        lda     #$00                            ; A4B9 A9 00                    ..
        sta     $0533                           ; A4BB 8D 33 05                 .3.
        sta     $0532                           ; A4BE 8D 32 05                 .2.
        ldy     #$00                            ; A4C1 A0 00                    ..
        lda     $51                             ; A4C3 A5 51                    .Q
        sec                                     ; A4C5 38                       8
        sbc     #$06                            ; A4C6 E9 06                    ..
        tax                                     ; A4C8 AA                       .
        cpx     #$11                            ; A4C9 E0 11                    ..
        beq     MapEventSystem_Branch_A4CE      ; A4CB F0 01                    ..
        iny                                     ; A4CD C8                       .
MapEventSystem_Branch_A4CE:
        bit     $6281                           ; A4CE 2C 81 62                 ,.b
        bvc     MapEventSystem_Branch_A4E8      ; A4D1 50 15                    P.
        lda     $6FA1                           ; A4D3 AD A1 6F                 ..o
        sta     $6F61                           ; A4D6 8D 61 6F                 .ao
        lda     $6FC1                           ; A4D9 AD C1 6F                 ..o
        sta     $6F81                           ; A4DC 8D 81 6F                 ..o
        lda     $7001                           ; A4DF AD 01 70                 ..p
        and     #$7F                            ; A4E2 29 7F                    ).
        sta     $7001                           ; A4E4 8D 01 70                 ..p
        iny                                     ; A4E7 C8                       .
MapEventSystem_Branch_A4E8:
        jsr     MapEventSystem_Entry_A51F       ; A4E8 20 1F A5                  ..
        jsr     MapEventSystem_Entry_A509       ; A4EB 20 09 A5                  ..
        lda     $51                             ; A4EE A5 51                    .Q
        pha                                     ; A4F0 48                       H
        cmp     #$0F                            ; A4F1 C9 0F                    ..
        bne     MapEventSystem_Branch_A502      ; A4F3 D0 0D                    ..
        brk                                     ; A4F5 00                       .
        db   $07,$6F,$43                     ; A4F6 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A4F9 00                       .
        db   $72,$4B                         ; A4FA 72 4B                    rK
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D214     ; A4FC 20 14 D2                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; A4FF 20 F3 D1                  ..
MapEventSystem_Branch_A502:
        pla                                     ; A502 68                       h
        sta     $51                             ; A503 85 51                    .Q
        sec                                     ; A505 38                       8
        rts                                     ; A506 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A507:
        clc                                     ; A507 18                       .
        rts                                     ; A508 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A509:
        lda     $6FA0                           ; A509 AD A0 6F                 ..o
        sta     $6F60                           ; A50C 8D 60 6F                 .`o
        sta     PlayerLocalX                    ; A50F 85 44                    .D
        lda     $6FC0                           ; A511 AD C0 6F                 ..o
        sta     $6F80                           ; A514 8D 80 6F                 ..o
        sta     PlayerLocalY                    ; A517 85 45                    .E
        lda     #$00                            ; A519 A9 00                    ..
        sta     $3E                             ; A51B 85 3E                    .>
        sec                                     ; A51D 38                       8
        rts                                     ; A51E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A51F:
        lda     $6FA1,y                         ; A51F B9 A1 6F                 ..o
        sta     $6F66,x                         ; A522 9D 66 6F                 .fo
        lda     $6FA1,y                         ; A525 B9 A1 6F                 ..o
        sta     $6FA6,x                         ; A528 9D A6 6F                 ..o
        lda     $6FC1,y                         ; A52B B9 C1 6F                 ..o
        sta     $6F86,x                         ; A52E 9D 86 6F                 ..o
        lda     $6FC1,y                         ; A531 B9 C1 6F                 ..o
        sta     $6FC6,x                         ; A534 9D C6 6F                 ..o
        lda     #$80                            ; A537 A9 80                    ..
        sta     $7021,y                         ; A539 99 21 70                 .!p
        iny                                     ; A53C C8                       .
        rts                                     ; A53D 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A53E:
        lda     $51                             ; A53E A5 51                    .Q
        pha                                     ; A540 48                       H
        brk                                     ; A541 00                       .
        db   $12,$5F                         ; A542 12 5F                    ._
; ----------------------------------------------------------------------------
        pla                                     ; A544 68                       h
        sta     $51                             ; A545 85 51                    .Q
        sec                                     ; A547 38                       8
        rts                                     ; A548 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A549:
        ldx     #$07                            ; A549 A2 07                    ..
        ldy     #$11                            ; A54B A0 11                    ..
        lda     $6F66,y                         ; A54D B9 66 6F                 .fo
        sta     $6F66,x                         ; A550 9D 66 6F                 .fo
        lda     $6FA6,y                         ; A553 B9 A6 6F                 ..o
        sta     $6FA6,x                         ; A556 9D A6 6F                 ..o
        lda     $6F86,y                         ; A559 B9 86 6F                 ..o
        sta     $6F86,x                         ; A55C 9D 86 6F                 ..o
        lda     $6FC6,y                         ; A55F B9 C6 6F                 ..o
        sta     $6FC6,x                         ; A562 9D C6 6F                 ..o
        lda     #$80                            ; A565 A9 80                    ..
        sta     $6F66,y                         ; A567 99 66 6F                 .fo
        sta     $6FA6,y                         ; A56A 99 A6 6F                 ..o
        sta     $6F86,y                         ; A56D 99 86 6F                 ..o
        sta     $6FC6,y                         ; A570 99 C6 6F                 ..o
        lda     #$11                            ; A573 A9 11                    ..
        sta     $7046,x                         ; A575 9D 46 70                 .Fp
        ldx     #$10                            ; A578 A2 10                    ..
        sta     $7046,x                         ; A57A 9D 46 70                 .Fp
        brk                                     ; A57D 00                       .
        db   $08,$DB,$DF,$A9,$00,$8D,$30,$05 ; A57E 08 DB DF A9 00 8D 30 05  ......0.
        db   $38,$60                         ; A586 38 60                    8`
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A588:
        lda     PlayerLocalY                    ; A588 A5 45                    .E
        cmp     #$19                            ; A58A C9 19                    ..
        bne     MapEventSystem_Branch_A5A5      ; A58C D0 17                    ..
        ldy     #$07                            ; A58E A0 07                    ..
        lda     #$11                            ; A590 A9 11                    ..
MapEventSystem_Branch_A592:
        ldx     $A59D,y                         ; A592 BE 9D A5                 ...
        sta     $7046,x                         ; A595 9D 46 70                 .Fp
        dey                                     ; A598 88                       .
        bpl     MapEventSystem_Branch_A592      ; A599 10 F7                    ..
        sec                                     ; A59B 38                       8
        rts                                     ; A59C 60                       `
; ----------------------------------------------------------------------------
        db   $04,$05,$06,$07,$08,$09,$0A,$0B ; A59D 04 05 06 07 08 09 0A 0B  ........
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A5A5:
        clc                                     ; A5A5 18                       .
        rts                                     ; A5A6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A5A7:
        lda     $51                             ; A5A7 A5 51                    .Q
        pha                                     ; A5A9 48                       H
        jsr     MapEventSystem_Entry_995E       ; A5AA 20 5E 99                  ^.
        ldx     #$03                            ; A5AD A2 03                    ..
        ldy     #$44                            ; A5AF A0 44                    .D
        lda     $6283                           ; A5B1 AD 83 62                 ..b
        and     #$20                            ; A5B4 29 20                    )
        pha                                     ; A5B6 48                       H
        beq     MapEventSystem_Branch_A5BA      ; A5B7 F0 01                    ..
        dey                                     ; A5B9 88                       .
MapEventSystem_Branch_A5BA:
        tya                                     ; A5BA 98                       .
        brk                                     ; A5BB 00                       .
        db   $04,$6F                         ; A5BC 04 6F                    .o
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D1F3     ; A5BE 20 F3 D1                  ..
        pla                                     ; A5C1 68                       h
        bne     MapEventSystem_Branch_A604      ; A5C2 D0 40                    .@
        ldx     #$00                            ; A5C4 A2 00                    ..
        brk                                     ; A5C6 00                       .
        db   $01,$6F,$0B                     ; A5C7 01 6F 0B                 .o.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D210     ; A5CA 20 10 D2                  ..
        ldy     #$02                            ; A5CD A0 02                    ..
MapEventSystem_Branch_A5CF:
        tya                                     ; A5CF 98                       .
        pha                                     ; A5D0 48                       H
        ldx     #$96                            ; A5D1 A2 96                    ..
MapEventSystem_Branch_A5D3:
        txa                                     ; A5D3 8A                       .
        pha                                     ; A5D4 48                       H
        lda     #$00                            ; A5D5 A9 00                    ..
        sta     $6E                             ; A5D7 85 6E                    .n
        sta     $70                             ; A5D9 85 70                    .p
        sta     $71                             ; A5DB 85 71                    .q
        lda     #$0A                            ; A5DD A9 0A                    ..
        sta     $6F                             ; A5DF 85 6F                    .o
        brk                                     ; A5E1 00                       .
        db   $27,$33                         ; A5E2 27 33                    '3
; ----------------------------------------------------------------------------
        brk                                     ; A5E4 00                       .
        db   $85,$FB                         ; A5E5 85 FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_A612       ; A5E7 20 12 A6                  ..
        pla                                     ; A5EA 68                       h
        tax                                     ; A5EB AA                       .
        dex                                     ; A5EC CA                       .
        bne     MapEventSystem_Branch_A5D3      ; A5ED D0 E4                    ..
        pla                                     ; A5EF 68                       h
        tay                                     ; A5F0 A8                       .
        dey                                     ; A5F1 88                       .
        bne     MapEventSystem_Branch_A5CF      ; A5F2 D0 DB                    ..
        jsr     UpperFixedEngine_Entry_D20A     ; A5F4 20 0A D2                  ..
        brk                                     ; A5F7 00                       .
        db   $08,$2F                         ; A5F8 08 2F                    ./
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D1F3     ; A5FA 20 F3 D1                  ..
        brk                                     ; A5FD 00                       .
        db   $0A,$CB,$04                     ; A5FE 0A CB 04                 ...
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_A60B      ; A601 4C 0B A6                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A604:
        lda     #$00                            ; A604 A9 00                    ..
        ldx     #$01                            ; A606 A2 01                    ..
        sta     $7046,x                         ; A608 9D 46 70                 .Fp
MapEventSystem_Branch_A60B:
        pla                                     ; A60B 68                       h
        sta     $51                             ; A60C 85 51                    .Q
        sec                                     ; A60E 38                       8
        rts                                     ; A60F 60                       `
; ----------------------------------------------------------------------------
        db   $18,$60                         ; A610 18 60                    .`
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A612:
        lda     #$13                            ; A612 A9 13                    ..
        sta     $00                             ; A614 85 00                    ..
        lda     #$1A                            ; A616 A9 1A                    ..
        sta     $01                             ; A618 85 01                    ..
        jsr     UpperFixedEngine_Entry_C662     ; A61A 20 62 C6                  b.
        ldx     #$00                            ; A61D A2 00                    ..
        brk                                     ; A61F 00                       .
        db   $25,$73                         ; A620 25 73                    %s
; ----------------------------------------------------------------------------
        brk                                     ; A622 00                       .
        db   $0C,$6F                         ; A623 0C 6F                    .o
; ----------------------------------------------------------------------------
        ldx     $050A                           ; A625 AE 0A 05                 ...
        lda     $1C                             ; A628 A5 1C                    ..
        ora     #$80                            ; A62A 09 80                    ..
        sta     $0300,x                         ; A62C 9D 00 03                 ...
        lda     #$08                            ; A62F A9 08                    ..
        sta     $0301,x                         ; A631 9D 01 03                 ...
        lda     $1D                             ; A634 A5 1D                    ..
        sta     NextTextCharacter,x             ; A636 9D 02 03                 ...
        ldy     #$00                            ; A639 A0 00                    ..
MapEventSystem_Branch_A63B:
        lda     $00,y                           ; A63B B9 00 00                 ...
        sta     $0303,x                         ; A63E 9D 03 03                 ...
        inx                                     ; A641 E8                       .
        iny                                     ; A642 C8                       .
        cpx     #$08                            ; A643 E0 08                    ..
        bcc     MapEventSystem_Branch_A63B      ; A645 90 F4                    ..
        inc     $050B                           ; A647 EE 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C62D     ; A64A 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A64D:
        ldx     #$00                            ; A64D A2 00                    ..
        brk                                     ; A64F 00                       .
        db   $23,$EF                         ; A650 23 EF                    #.
; ----------------------------------------------------------------------------
        cmp     #$3D                            ; A652 C9 3D                    .=
        bne     MapEventSystem_Branch_A66F      ; A654 D0 19                    ..
        ldx     #$01                            ; A656 A2 01                    ..
        brk                                     ; A658 00                       .
        db   $0D,$87                         ; A659 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; A65B A2 00                    ..
        lda     #$06                            ; A65D A9 06                    ..
        brk                                     ; A65F 00                       .
        db   $0D,$87                         ; A660 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$01                            ; A662 A2 01                    ..
        lda     #$FF                            ; A664 A9 FF                    ..
        sta     $70                             ; A666 85 70                    .p
        sta     $71                             ; A668 85 71                    .q
        lda     #$00                            ; A66A A9 00                    ..
        brk                                     ; A66C 00                       .
        db   $5E,$73                         ; A66D 5E 73                    ^s
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A66F:
        sec                                     ; A66F 38                       8
        rts                                     ; A670 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A671:
        bit     $6280                           ; A671 2C 80 62                 ,.b
        bvc     MapEventSystem_Branch_A6D4      ; A674 50 5E                    P^
        lda     PlayerLocalY                    ; A676 A5 45                    .E
        cmp     #$1C                            ; A678 C9 1C                    ..
        bne     MapEventSystem_Branch_A6D4      ; A67A D0 58                    .X
        lda     PlayerLocalX                    ; A67C A5 44                    .D
        cmp     #$0C                            ; A67E C9 0C                    ..
        bne     MapEventSystem_Branch_A6D4      ; A680 D0 52                    .R
        lda     $0531                           ; A682 AD 31 05                 .1.
        cmp     #$07                            ; A685 C9 07                    ..
        beq     MapEventSystem_Branch_A68E      ; A687 F0 05                    ..
        lda     #$8F                            ; A689 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; A68B 20 3A A2                  :.
MapEventSystem_Branch_A68E:
        ldx     #$02                            ; A68E A2 02                    ..
        lda     $6BE9                           ; A690 AD E9 6B                 ..k
        bpl     MapEventSystem_Branch_A697      ; A693 10 02                    ..
        ldx     #$00                            ; A695 A2 00                    ..
MapEventSystem_Branch_A697:
        lda     $7020,x                         ; A697 BD 20 70                 . p
        bpl     MapEventSystem_Branch_A6D4      ; A69A 10 38                    .8
        lda     #$11                            ; A69C A9 11                    ..
        ldx     #$02                            ; A69E A2 02                    ..
        sta     $7046,x                         ; A6A0 9D 46 70                 .Fp
        ldx     #$03                            ; A6A3 A2 03                    ..
        sta     $7046,x                         ; A6A5 9D 46 70                 .Fp
        ldx     #$00                            ; A6A8 A2 00                    ..
        sta     $7046,x                         ; A6AA 9D 46 70                 .Fp
        ldx     #$04                            ; A6AD A2 04                    ..
        sta     $7046,x                         ; A6AF 9D 46 70                 .Fp
        lda     $70E6,x                         ; A6B2 BD E6 70                 ..p
        and     #$F8                            ; A6B5 29 F8                    ).
        sta     $70E6,x                         ; A6B7 9D E6 70                 ..p
        lda     #$00                            ; A6BA A9 00                    ..
        sta     $0515                           ; A6BC 8D 15 05                 ...
        ldx     #$00                            ; A6BF A2 00                    ..
        lda     #$53                            ; A6C1 A9 53                    .S
        brk                                     ; A6C3 00                       .
        db   $0D,$87                         ; A6C4 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$01                            ; A6C6 A2 01                    ..
        lda     #$53                            ; A6C8 A9 53                    .S
        brk                                     ; A6CA 00                       .
        db   $0D,$87                         ; A6CB 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$02                            ; A6CD A2 02                    ..
        lda     #$53                            ; A6CF A9 53                    .S
        brk                                     ; A6D1 00                       .
        db   $0D,$87                         ; A6D2 0D 87                    ..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A6D4:
        clc                                     ; A6D4 18                       .
        rts                                     ; A6D5 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A6D6:
        ldx     $51                             ; A6D6 A6 51                    .Q
        lda     #$00                            ; A6D8 A9 00                    ..
        sta     $7040,x                         ; A6DA 9D 40 70                 .@p
        sec                                     ; A6DD 38                       8
        rts                                     ; A6DE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A6DF:
        lda     #$02                            ; A6DF A9 02                    ..
        brk                                     ; A6E1 00                       .
        db   $07,$CF                         ; A6E2 07 CF                    ..
; ----------------------------------------------------------------------------
        lda     #$1E                            ; A6E4 A9 1E                    ..
        sta     $51                             ; A6E6 85 51                    .Q
        clc                                     ; A6E8 18                       .
        rts                                     ; A6E9 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A6EA:
        lda     $7000                           ; A6EA AD 00 70                 ..p
        and     #$FC                            ; A6ED 29 FC                    ).
        ora     #$01                            ; A6EF 09 01                    ..
        sta     $7000                           ; A6F1 8D 00 70                 ..p
        lda     $51                             ; A6F4 A5 51                    .Q
        pha                                     ; A6F6 48                       H
        jsr     MapEventSystem_Entry_995E       ; A6F7 20 5E 99                  ^.
        brk                                     ; A6FA 00                       .
        db   $62,$3B                         ; A6FB 62 3B                    b;
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A6FD:
        brk                                     ; A6FD 00                       .
        db   $07,$6F,$48                     ; A6FE 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        cmp     #$01                            ; A701 C9 01                    ..
        bcc     MapEventSystem_Branch_A70B      ; A703 90 06                    ..
        brk                                     ; A705 00                       .
        db   $64,$3B                         ; A706 64 3B                    d;
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_A6FD      ; A708 4C FD A6                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A70B:
        brk                                     ; A70B 00                       .
        db   $63,$3B                         ; A70C 63 3B                    c;
; ----------------------------------------------------------------------------
        ldx     #$0F                            ; A70E A2 0F                    ..
        lda     #$81                            ; A710 A9 81                    ..
        jsr     MapEventSystem_Entry_9963       ; A712 20 63 99                  c.
        ldx     #$0E                            ; A715 A2 0E                    ..
        lda     #$11                            ; A717 A9 11                    ..
        sta     $7046,x                         ; A719 9D 46 70                 .Fp
        jsr     UpperFixedEngine_Entry_D20A     ; A71C 20 0A D2                  ..
        pla                                     ; A71F 68                       h
        sta     $51                             ; A720 85 51                    .Q
        sec                                     ; A722 38                       8
        rts                                     ; A723 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A724:
        lda     #$11                            ; A724 A9 11                    ..
        ldx     #$12                            ; A726 A2 12                    ..
        sta     $7046,x                         ; A728 9D 46 70                 .Fp
        ldx     #$11                            ; A72B A2 11                    ..
        sta     $7046,x                         ; A72D 9D 46 70                 .Fp
        sec                                     ; A730 38                       8
        rts                                     ; A731 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A732:
        jsr     MapEventSystem_Entry_995E       ; A732 20 5E 99                  ^.
        brk                                     ; A735 00                       .
        db   $67,$3B                         ; A736 67 3B                    g;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D214     ; A738 20 14 D2                  ..
        lda     #$76                            ; A73B A9 76                    .v
        brk                                     ; A73D 00                       .
        db   $66,$73                         ; A73E 66 73                    fs
; ----------------------------------------------------------------------------
        tax                                     ; A740 AA                       .
        lda     $73                             ; A741 A5 73                    .s
        brk                                     ; A743 00                       .
        db   $30,$73                         ; A744 30 73                    0s
; ----------------------------------------------------------------------------
        lda     #$71                            ; A746 A9 71                    .q
        brk                                     ; A748 00                       .
        db   $2E,$73                         ; A749 2E 73                    .s
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; A74B 20 C5 C5                  ..
        lda     #$00                            ; A74E A9 00                    ..
        sta     $0530                           ; A750 8D 30 05                 .0.
        lda     #$1E                            ; A753 A9 1E                    ..
        sta     SaveTimeOfDay                   ; A755 8D ED 62                 ..b
        brk                                     ; A758 00                       .
        db   $00,$CB,$40                     ; A759 00 CB 40                 ..@
; ----------------------------------------------------------------------------
        brk                                     ; A75C 00                       .
        db   $32,$EF                         ; A75D 32 EF                    2.
; ----------------------------------------------------------------------------
        lda     #$1E                            ; A75F A9 1E                    ..
        sta     $51                             ; A761 85 51                    .Q
        sec                                     ; A763 38                       8
        rts                                     ; A764 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A765:
        brk                                     ; A765 00                       .
        db   $08,$EB,$06                     ; A766 08 EB 06                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A783      ; A769 D0 18                    ..
        lda     PlayerLocalY                    ; A76B A5 45                    .E
        cmp     #$0A                            ; A76D C9 0A                    ..
        bcc     MapEventSystem_Branch_A783      ; A76F 90 12                    ..
        cmp     #$0F                            ; A771 C9 0F                    ..
        bcs     MapEventSystem_Branch_A783      ; A773 B0 0E                    ..
        ldy     #$0A                            ; A775 A0 0A                    ..
        lda     PlayerLocalX                    ; A777 A5 44                    .D
        cmp     #$09                            ; A779 C9 09                    ..
        beq     MapEventSystem_Branch_A785      ; A77B F0 08                    ..
        ldy     #$0C                            ; A77D A0 0C                    ..
        cmp     #$0D                            ; A77F C9 0D                    ..
        beq     MapEventSystem_Branch_A785      ; A781 F0 02                    ..
MapEventSystem_Branch_A783:
        clc                                     ; A783 18                       .
        rts                                     ; A784 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A785:
        ldx     $51                             ; A785 A6 51                    .Q
        tya                                     ; A787 98                       .
        sta     $71A0,x                         ; A788 9D A0 71                 ..q
        lda     PlayerLocalY                    ; A78B A5 45                    .E
        sta     $71C0,x                         ; A78D 9D C0 71                 ..q
        jsr     MapEventSystem_Entry_A7A4       ; A790 20 A4 A7                  ..
        bcs     MapEventSystem_Branch_A7A2      ; A793 B0 0D                    ..
        ldx     #$00                            ; A795 A2 00                    ..
MapEventSystem_Branch_A797:
        lda     $053A,x                         ; A797 BD 3A 05                 .:.
        beq     MapEventSystem_Branch_A7A0      ; A79A F0 04                    ..
        inx                                     ; A79C E8                       .
        jmp     MapEventSystem_Branch_A797      ; A79D 4C 97 A7                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A7A0:
        stx     $F9                             ; A7A0 86 F9                    ..
MapEventSystem_Branch_A7A2:
        sec                                     ; A7A2 38                       8
        rts                                     ; A7A3 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A7A4:
        lda     #$07                            ; A7A4 A9 07                    ..
        brk                                     ; A7A6 00                       .
        db   $63,$73                         ; A7A7 63 73                    cs
; ----------------------------------------------------------------------------
        tax                                     ; A7A9 AA                       .
        stx     $F9                             ; A7AA 86 F9                    ..
        brk                                     ; A7AC 00                       .
        db   $46,$93,$07                     ; A7AD 46 93 07                 F..
; ----------------------------------------------------------------------------
        rts                                     ; A7B0 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A7B1:
        lda     PlayerLocalX                    ; A7B1 A5 44                    .D
        sec                                     ; A7B3 38                       8
        sbc     #$0D                            ; A7B4 E9 0D                    ..
        cmp     #$04                            ; A7B6 C9 04                    ..
        bcs     MapEventSystem_Branch_A7D5      ; A7B8 B0 1B                    ..
        ldy     #$22                            ; A7BA A0 22                    ."
        ldx     PlayerLocalY                    ; A7BC A6 45                    .E
        cpx     #$1A                            ; A7BE E0 1A                    ..
        beq     MapEventSystem_Branch_A7D7      ; A7C0 F0 15                    ..
        brk                                     ; A7C2 00                       .
        db   $00,$EB,$02                     ; A7C3 00 EB 02                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_A7D5      ; A7C6 F0 0D                    ..
        ldy     #$68                            ; A7C8 A0 68                    .h
        lda     PlayerLocalX                    ; A7CA A5 44                    .D
        cmp     #$0F                            ; A7CC C9 0F                    ..
        bcc     MapEventSystem_Branch_A7D1      ; A7CE 90 01                    ..
        iny                                     ; A7D0 C8                       .
MapEventSystem_Branch_A7D1:
        cpx     #$18                            ; A7D1 E0 18                    ..
        beq     MapEventSystem_Branch_A7D7      ; A7D3 F0 02                    ..
MapEventSystem_Branch_A7D5:
        clc                                     ; A7D5 18                       .
        rts                                     ; A7D6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A7D7:
        lda     #$03                            ; A7D7 A9 03                    ..
        sta     $0594                           ; A7D9 8D 94 05                 ...
        sty     $0593                           ; A7DC 8C 93 05                 ...
        lda     #$80                            ; A7DF A9 80                    ..
        sta     $0527                           ; A7E1 8D 27 05                 .'.
        brk                                     ; A7E4 00                       .
        db   $0E,$DB,$F7                     ; A7E5 0E DB F7                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A7E8:
        cpy     #$22                            ; A7E8 C0 22                    ."
        beq     MapEventSystem_Branch_A7FF      ; A7EA F0 13                    ..
        brk                                     ; A7EC 00                       .
        db   $0E,$CB,$08                     ; A7ED 0E CB 08                 ...
; ----------------------------------------------------------------------------
        ldx     #$00                            ; A7F0 A2 00                    ..
        jsr     MapEventSystem_Entry_A7F7       ; A7F2 20 F7 A7                  ..
        ldx     #$01                            ; A7F5 A2 01                    ..
MapEventSystem_Entry_A7F7:
        lda     $7006,x                         ; A7F7 BD 06 70                 ..p
        and     #$FC                            ; A7FA 29 FC                    ).
        sta     $7006,x                         ; A7FC 9D 06 70                 ..p
MapEventSystem_Branch_A7FF:
        sec                                     ; A7FF 38                       8
        rts                                     ; A800 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A801:
        brk                                     ; A801 00                       .
        db   $00,$EB,$02                     ; A802 00 EB 02                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A815      ; A805 D0 0E                    ..
        ldx     #$02                            ; A807 A2 02                    ..
MapEventSystem_Branch_A809:
        lda     $6F80,x                         ; A809 BD 80 6F                 ..o
        cmp     #$19                            ; A80C C9 19                    ..
        bcs     MapEventSystem_Branch_A815      ; A80E B0 05                    ..
        dex                                     ; A810 CA                       .
        bpl     MapEventSystem_Branch_A809      ; A811 10 F6                    ..
        sec                                     ; A813 38                       8
        rts                                     ; A814 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A815:
        clc                                     ; A815 18                       .
        rts                                     ; A816 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A817:
        brk                                     ; A817 00                       .
        db   $08,$EB,$04                     ; A818 08 EB 04                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A84D      ; A81B D0 30                    .0
        brk                                     ; A81D 00                       .
        db   $08,$EB,$08                     ; A81E 08 EB 08                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_A84D      ; A821 F0 2A                    .*
        ldx     #$00                            ; A823 A2 00                    ..
MapEventSystem_Branch_A825:
        lda     PlayerLocalX                    ; A825 A5 44                    .D
        cmp     $A84F,x                         ; A827 DD 4F A8                 .O.
        bne     MapEventSystem_Branch_A846      ; A82A D0 1A                    ..
        lda     PlayerLocalY                    ; A82C A5 45                    .E
        cmp     $A850,x                         ; A82E DD 50 A8                 .P.
        bne     MapEventSystem_Branch_A846      ; A831 D0 13                    ..
        ldy     $51                             ; A833 A4 51                    .Q
        lda     $7000,y                         ; A835 B9 00 70                 ..p
        and     #$FC                            ; A838 29 FC                    ).
        ora     $A851,x                         ; A83A 1D 51 A8                 .Q.
        sta     $7000,y                         ; A83D 99 00 70                 ..p
        brk                                     ; A840 00                       .
        db   $08,$CB,$04,$38,$60             ; A841 08 CB 04 38 60           ...8`
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A846:
        inx                                     ; A846 E8                       .
        inx                                     ; A847 E8                       .
        inx                                     ; A848 E8                       .
        cpx     #$09                            ; A849 E0 09                    ..
        bcc     MapEventSystem_Branch_A825      ; A84B 90 D8                    ..
MapEventSystem_Branch_A84D:
        clc                                     ; A84D 18                       .
        rts                                     ; A84E 60                       `
; ----------------------------------------------------------------------------
        db   $0B                             ; A84F 0B                       .
        db   $10                             ; A850 10                       .
        db   $01,$0C,$10,$01,$0A,$11,$02     ; A851 01 0C 10 01 0A 11 02     .......
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A858:
        brk                                     ; A858 00                       .
        db   $0B,$EB,$02                     ; A859 0B EB 02                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_A891      ; A85C D0 33                    .3
        lda     PlayerLocalY                    ; A85E A5 45                    .E
        cmp     #$0C                            ; A860 C9 0C                    ..
        bne     MapEventSystem_Branch_A891      ; A862 D0 2D                    .-
        lda     #$84                            ; A864 A9 84                    ..
        jsr     MapEventSystem_Entry_A23A       ; A866 20 3A A2                  :.
        ldx     #$00                            ; A869 A2 00                    ..
        ldy     #$02                            ; A86B A0 02                    ..
        jsr     MapEventSystem_Entry_A874       ; A86D 20 74 A8                  t.
        ldx     #$01                            ; A870 A2 01                    ..
        ldy     #$03                            ; A872 A0 03                    ..
MapEventSystem_Entry_A874:
        lda     $7066,y                         ; A874 B9 66 70                 .fp
        sta     $7066,x                         ; A877 9D 66 70                 .fp
        lda     $7086,y                         ; A87A B9 86 70                 ..p
        sta     $7086,x                         ; A87D 9D 86 70                 ..p
        lda     $7006,x                         ; A880 BD 06 70                 ..p
        and     #$7C                            ; A883 29 7C                    )|
        ora     #$02                            ; A885 09 02                    ..
        sta     $7006,x                         ; A887 9D 06 70                 ..p
        lda     #$11                            ; A88A A9 11                    ..
        sta     $7046,x                         ; A88C 9D 46 70                 .Fp
        sec                                     ; A88F 38                       8
        rts                                     ; A890 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A891:
        clc                                     ; A891 18                       .
        rts                                     ; A892 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A893:
        lda     $6FA0                           ; A893 AD A0 6F                 ..o
        cmp     #$0E                            ; A896 C9 0E                    ..
        bne     MapEventSystem_Branch_A90B      ; A898 D0 71                    .q
        lda     $6FC0                           ; A89A AD C0 6F                 ..o
        cmp     #$0C                            ; A89D C9 0C                    ..
        bne     MapEventSystem_Branch_A90B      ; A89F D0 6A                    .j
        lda     $7000                           ; A8A1 AD 00 70                 ..p
        and     #$FC                            ; A8A4 29 FC                    ).
        ora     #$02                            ; A8A6 09 02                    ..
        sta     $7000                           ; A8A8 8D 00 70                 ..p
        brk                                     ; A8AB 00                       .
        db   $0C,$DB                         ; A8AC 0C DB                    ..
; ----------------------------------------------------------------------------
        sed                                     ; A8AE F8                       .
        ldx     #$0D                            ; A8AF A2 0D                    ..
        ldy     #$01                            ; A8B1 A0 01                    ..
        jsr     MapEventSystem_Entry_A90D       ; A8B3 20 0D A9                  ..
        ldx     #$0E                            ; A8B6 A2 0E                    ..
        jsr     MapEventSystem_Entry_A90D       ; A8B8 20 0D A9                  ..
        lda     $51                             ; A8BB A5 51                    .Q
        pha                                     ; A8BD 48                       H
        tay                                     ; A8BE A8                       .
        ldx     $6FE0,y                         ; A8BF BE E0 6F                 ..o
        lda     #$3B                            ; A8C2 A9 3B                    .;
        brk                                     ; A8C4 00                       .
        db   $0D,$87                         ; A8C5 0D 87                    ..
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_A8CE       ; A8C7 20 CE A8                  ..
        pla                                     ; A8CA 68                       h
        sta     $51                             ; A8CB 85 51                    .Q
        rts                                     ; A8CD 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A8CE:
        lda     $6BE8                           ; A8CE AD E8 6B                 ..k
        and     #$7F                            ; A8D1 29 7F                    ).
        clc                                     ; A8D3 18                       .
        bne     MapEventSystem_Branch_A8E0      ; A8D4 D0 0A                    ..
        jsr     MapEventSystem_Entry_995E       ; A8D6 20 5E 99                  ^.
        brk                                     ; A8D9 00                       .
        db   $7E,$3B                         ; A8DA 7E 3B                    ~;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; A8DC 20 18 D2                  ..
        sec                                     ; A8DF 38                       8
MapEventSystem_Branch_A8E0:
        lda     $6BE9                           ; A8E0 AD E9 6B                 ..k
        and     #$7F                            ; A8E3 29 7F                    ).
        bne     MapEventSystem_Branch_A8FF      ; A8E5 D0 18                    ..
        bcs     MapEventSystem_Branch_A8EC      ; A8E7 B0 03                    ..
        jsr     MapEventSystem_Entry_995E       ; A8E9 20 5E 99                  ^.
MapEventSystem_Branch_A8EC:
        brk                                     ; A8EC 00                       .
        db   $7F,$3B                         ; A8ED 7F 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; A8EF 20 18 D2                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; A8F2 20 F3 D1                  ..
        ldx     #$00                            ; A8F5 A2 00                    ..
        brk                                     ; A8F7 00                       .
        db   $53,$73                         ; A8F8 53 73                    Ss
; ----------------------------------------------------------------------------
        brk                                     ; A8FA 00                       .
        db   $27,$0F                         ; A8FB 27 0F                    '.
; ----------------------------------------------------------------------------
        sec                                     ; A8FD 38                       8
        rts                                     ; A8FE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A8FF:
        bcc     MapEventSystem_Branch_A904      ; A8FF 90 03                    ..
        jsr     UpperFixedEngine_Entry_D1F3     ; A901 20 F3 D1                  ..
MapEventSystem_Branch_A904:
        ldx     #$00                            ; A904 A2 00                    ..
        brk                                     ; A906 00                       .
        db   $53,$73                         ; A907 53 73                    Ss
; ----------------------------------------------------------------------------
        sec                                     ; A909 38                       8
        rts                                     ; A90A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A90B:
        clc                                     ; A90B 18                       .
        rts                                     ; A90C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A90D:
        lda     $6F60,y                         ; A90D B9 60 6F                 .`o
        sta     $6F66,x                         ; A910 9D 66 6F                 .fo
        lda     $6FA0,y                         ; A913 B9 A0 6F                 ..o
        sta     $6FA6,x                         ; A916 9D A6 6F                 ..o
        lda     $6F80,y                         ; A919 B9 80 6F                 ..o
        sta     $6F86,x                         ; A91C 9D 86 6F                 ..o
        db   $B9                             ; A91F B9                       .
; ----------------------------------------------------------------------------
        cpy     #$6F                            ; A920 C0 6F                    .o
        sta     $6FC6,x                         ; A922 9D C6 6F                 ..o
        lda     $6FE0,y                         ; A925 B9 E0 6F                 ..o
        sta     $6FE6,x                         ; A928 9D E6 6F                 ..o
        lda     #$81                            ; A92B A9 81                    ..
        sta     $6F60,y                         ; A92D 99 60 6F                 .`o
        sta     $6F80,y                         ; A930 99 80 6F                 ..o
        sta     $6FA0,y                         ; A933 99 A0 6F                 ..o
        sta     $6FC0,y                         ; A936 99 C0 6F                 ..o
        iny                                     ; A939 C8                       .
        rts                                     ; A93A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A93B:
        lda     $6FC0                           ; A93B AD C0 6F                 ..o
        cmp     #$0A                            ; A93E C9 0A                    ..
        bne     MapEventSystem_Branch_A966      ; A940 D0 24                    .$
        lda     $51                             ; A942 A5 51                    .Q
        pha                                     ; A944 48                       H
        jsr     MapEventSystem_Entry_995E       ; A945 20 5E 99                  ^.
        brk                                     ; A948 00                       .
        db   $80,$3B                         ; A949 80 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; A94B 20 18 D2                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; A94E 20 F3 D1                  ..
        jsr     MapEventSystem_Entry_A97B       ; A951 20 7B A9                  {.
        pla                                     ; A954 68                       h
        sta     $51                             ; A955 85 51                    .Q
        tax                                     ; A957 AA                       .
        lda     $6FE0,x                         ; A958 BD E0 6F                 ..o
        sta     $059B                           ; A95B 8D 9B 05                 ...
        lda     $A9BC                           ; A95E AD BC A9                 ...
        sta     $059A                           ; A961 8D 9A 05                 ...
        sec                                     ; A964 38                       8
        rts                                     ; A965 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_A966:
        clc                                     ; A966 18                       .
        rts                                     ; A967 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A968:
        lda     $51                             ; A968 A5 51                    .Q
        pha                                     ; A96A 48                       H
        lda     #$03                            ; A96B A9 03                    ..
        brk                                     ; A96D 00                       .
        db   $07,$CF                         ; A96E 07 CF                    ..
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_A97B       ; A970 20 7B A9                  {.
        pla                                     ; A973 68                       h
        sta     $51                             ; A974 85 51                    .Q
        inc     $6287                           ; A976 EE 87 62                 ..b
        sec                                     ; A979 38                       8
        rts                                     ; A97A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A97B:
        lda     #$03                            ; A97B A9 03                    ..
        sta     $058E                           ; A97D 8D 8E 05                 ...
        lda     #$08                            ; A980 A9 08                    ..
        sta     PlayerLocalY                    ; A982 85 45                    .E
        ldx     #$0E                            ; A984 A2 0E                    ..
        ldy     #$07                            ; A986 A0 07                    ..
        jsr     UpperFixedEngine_Entry_D3E6     ; A988 20 E6 D3                  ..
        and     #$1F                            ; A98B 29 1F                    ).
        tax                                     ; A98D AA                       .
        lda     $6F40,x                         ; A98E BD 40 6F                 .@o
        and     #$7F                            ; A991 29 7F                    ).
        brk                                     ; A993 00                       .
        db   $12,$87                         ; A994 12 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A996 00                       .
        db   $03,$BF                         ; A997 03 BF                    ..
; ----------------------------------------------------------------------------
        lda     #$0A                            ; A999 A9 0A                    ..
        sta     PlayerLocalY                    ; A99B 85 45                    .E
        lda     #$01                            ; A99D A9 01                    ..
        sta     $058E                           ; A99F 8D 8E 05                 ...
        rts                                     ; A9A2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A9A3:
        lda     $6287                           ; A9A3 AD 87 62                 ..b
        and     #$07                            ; A9A6 29 07                    ).
        tax                                     ; A9A8 AA                       .
        lda     $A9BC,x                         ; A9A9 BD BC A9                 ...
        ldy     $51                             ; A9AC A4 51                    .Q
        ldx     $6FE0,y                         ; A9AE BE E0 6F                 ..o
        stx     $059B                           ; A9B1 8E 9B 05                 ...
        sta     $059A                           ; A9B4 8D 9A 05                 ...
        brk                                     ; A9B7 00                       .
        db   $0D,$87                         ; A9B8 0D 87                    ..
; ----------------------------------------------------------------------------
        sec                                     ; A9BA 38                       8
        rts                                     ; A9BB 60                       `
; ----------------------------------------------------------------------------
        db   $3B,$14,$3A,$39,$42             ; A9BC 3B 14 3A 39 42           ;.:9B
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A9C1:
        ldx     #$06                            ; A9C1 A2 06                    ..
        lda     #$11                            ; A9C3 A9 11                    ..
        sta     $7046,x                         ; A9C5 9D 46 70                 .Fp
        sec                                     ; A9C8 38                       8
        rts                                     ; A9C9 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A9CA:
        lda     #$11                            ; A9CA A9 11                    ..
        ldx     #$0D                            ; A9CC A2 0D                    ..
        sta     $7046,x                         ; A9CE 9D 46 70                 .Fp
        ldx     #$0E                            ; A9D1 A2 0E                    ..
        sta     $7046,x                         ; A9D3 9D 46 70                 .Fp
        sec                                     ; A9D6 38                       8
        rts                                     ; A9D7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_A9D8:
        lda     $7000                           ; A9D8 AD 00 70                 ..p
        and     #$FC                            ; A9DB 29 FC                    ).
        ora     #$02                            ; A9DD 09 02                    ..
        sta     $7000                           ; A9DF 8D 00 70                 ..p
        jsr     MapEventSystem_Entry_995E       ; A9E2 20 5E 99                  ^.
        brk                                     ; A9E5 00                       .
        db   $86,$3B                         ; A9E6 86 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; A9E8 00                       .
        db   $87,$3B                         ; A9E9 87 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; A9EB 20 18 D2                  ..
        brk                                     ; A9EE 00                       .
        db   $54,$33                         ; A9EF 54 33                    T3
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; A9F1 20 C5 C5                  ..
        lda     #$0B                            ; A9F4 A9 0B                    ..
        sta     PlayerLocalX                    ; A9F6 85 44                    .D
        sta     PlayerLocalY                    ; A9F8 85 45                    .E
        lda     #$06                            ; A9FA A9 06                    ..
        sta     CurrentSubmapNumber             ; A9FC 85 64                    .d
        brk                                     ; A9FE 00                       .
        db   $09,$CB,$40                     ; A9FF 09 CB 40                 ..@
; ----------------------------------------------------------------------------
        brk                                     ; AA02 00                       .
        db   $0D,$CB,$80                     ; AA03 0D CB 80                 ...
; ----------------------------------------------------------------------------
        lda     #$00                            ; AA06 A9 00                    ..
        jsr     MapEventSystem_Entry_AA1B       ; AA08 20 1B AA                  ..
        jsr     UpperFixedEngine_Entry_C5BF     ; AA0B 20 BF C5                  ..
        brk                                     ; AA0E 00                       .
        db   $07,$6F,$43                     ; AA0F 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; AA12 00                       .
        db   $D2,$4B                         ; AA13 D2 4B                    .K
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; AA15 20 0A D2                  ..
        jmp     MapEventSystem_Branch_B624      ; AA18 4C 24 B6                 L$.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AA1B:
        pha                                     ; AA1B 48                       H
        lda     #$00                            ; AA1C A9 00                    ..
        sta     $0530                           ; AA1E 8D 30 05                 .0.
        pla                                     ; AA21 68                       h
        brk                                     ; AA22 00                       .
        db   $31,$EF                         ; AA23 31 EF                    1.
; ----------------------------------------------------------------------------
        lda     #$1E                            ; AA25 A9 1E                    ..
        sta     $51                             ; AA27 85 51                    .Q
        rts                                     ; AA29 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AA2A:
        ldx     #$06                            ; AA2A A2 06                    ..
        jsr     MapEventSystem_Entry_98BD       ; AA2C 20 BD 98                  ..
        bcc     MapEventSystem_Branch_AA4C      ; AA2F 90 1B                    ..
        ldx     #$06                            ; AA31 A2 06                    ..
        ldy     #$07                            ; AA33 A0 07                    ..
        lda     $7060,y                         ; AA35 B9 60 70                 .`p
        sta     $7060,x                         ; AA38 9D 60 70                 .`p
        lda     $7080,y                         ; AA3B B9 80 70                 ..p
        sta     $7080,x                         ; AA3E 9D 80 70                 ..p
        lda     #$11                            ; AA41 A9 11                    ..
        sta     $7040,x                         ; AA43 9D 40 70                 .@p
        lda     #$8F                            ; AA46 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; AA48 20 3A A2                  :.
        sec                                     ; AA4B 38                       8
MapEventSystem_Branch_AA4C:
        rts                                     ; AA4C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AA4D:
        lda     #$00                            ; AA4D A9 00                    ..
        sta     $0530                           ; AA4F 8D 30 05                 .0.
MapEventSystem_Entry_AA52:
        brk                                     ; AA52 00                       .
        db   $82,$FB                         ; AA53 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; AA55 20 C5 C5                  ..
        lda     #$00                            ; AA58 A9 00                    ..
        sta     CurrentSubmapNumber             ; AA5A 85 64                    .d
        lda     #$17                            ; AA5C A9 17                    ..
        sta     PlayerLocalX                    ; AA5E 85 44                    .D
        lda     #$0A                            ; AA60 A9 0A                    ..
        sta     PlayerLocalY                    ; AA62 85 45                    .E
        lda     #$82                            ; AA64 A9 82                    ..
        brk                                     ; AA66 00                       .
        db   $31,$EF                         ; AA67 31 EF                    1.
; ----------------------------------------------------------------------------
        lda     #$06                            ; AA69 A9 06                    ..
        sta     $51                             ; AA6B 85 51                    .Q
        jsr     UpperFixedEngine_Entry_C5BF     ; AA6D 20 BF C5                  ..
        clc                                     ; AA70 18                       .
        rts                                     ; AA71 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AA72:
        bit     $6284                           ; AA72 2C 84 62                 ,.b
        bvc     MapEventSystem_Branch_AA9D      ; AA75 50 26                    P&
        lda     PlayerLocalY                    ; AA77 A5 45                    .E
        cmp     #$0A                            ; AA79 C9 0A                    ..
        bne     MapEventSystem_Branch_AA9D      ; AA7B D0 20                    .
        ldx     $51                             ; AA7D A6 51                    .Q
        sta     $71C0,x                         ; AA7F 9D C0 71                 ..q
        lda     #$11                            ; AA82 A9 11                    ..
        sta     $7040,x                         ; AA84 9D 40 70                 .@p
        lda     #$8F                            ; AA87 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; AA89 20 3A A2                  :.
        ldy     PlayerLocalX                    ; AA8C A4 44                    .D
        cpy     #$1E                            ; AA8E C0 1E                    ..
        beq     MapEventSystem_Branch_AA96      ; AA90 F0 04                    ..
        iny                                     ; AA92 C8                       .
        jmp     MapEventSystem_Branch_AA97      ; AA93 4C 97 AA                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AA96:
        dey                                     ; AA96 88                       .
MapEventSystem_Branch_AA97:
        tya                                     ; AA97 98                       .
        sta     $71A0,x                         ; AA98 9D A0 71                 ..q
        sec                                     ; AA9B 38                       8
        rts                                     ; AA9C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AA9D:
        clc                                     ; AA9D 18                       .
        rts                                     ; AA9E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AA9F:
        lda     $51                             ; AA9F A5 51                    .Q
        sta     $059C                           ; AAA1 8D 9C 05                 ...
        pha                                     ; AAA4 48                       H
        jsr     MapEventSystem_Entry_995E       ; AAA5 20 5E 99                  ^.
        brk                                     ; AAA8 00                       .
        db   $8F,$3B                         ; AAA9 8F 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; AAAB 20 18 D2                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; AAAE 20 F3 D1                  ..
        pla                                     ; AAB1 68                       h
        sta     $51                             ; AAB2 85 51                    .Q
        lda     #$00                            ; AAB4 A9 00                    ..
        sta     $0530                           ; AAB6 8D 30 05                 .0.
        brk                                     ; AAB9 00                       .
        db   $0C,$CB                         ; AABA 0C CB                    ..
; ----------------------------------------------------------------------------
        jsr     $6038                           ; AABC 20 38 60                  8`
MapEventSystem_Entry_AABF:
        lda     $6FA0                           ; AABF AD A0 6F                 ..o
        cmp     #$0E                            ; AAC2 C9 0E                    ..
        bne     MapEventSystem_Branch_AAF4      ; AAC4 D0 2E                    ..
        lda     $6FC0                           ; AAC6 AD C0 6F                 ..o
        cmp     #$03                            ; AAC9 C9 03                    ..
        bne     MapEventSystem_Branch_AAF4      ; AACB D0 27                    .'
        lda     $7000                           ; AACD AD 00 70                 ..p
        ora     #$03                            ; AAD0 09 03                    ..
        sta     $7000                           ; AAD2 8D 00 70                 ..p
        lda     $51                             ; AAD5 A5 51                    .Q
        pha                                     ; AAD7 48                       H
        tax                                     ; AAD8 AA                       .
        lda     $7000,x                         ; AAD9 BD 00 70                 ..p
        and     #$FC                            ; AADC 29 FC                    ).
        ora     #$01                            ; AADE 09 01                    ..
        sta     $7000,x                         ; AAE0 9D 00 70                 ..p
        jsr     MapEventSystem_Entry_995E       ; AAE3 20 5E 99                  ^.
        brk                                     ; AAE6 00                       .
        db   $13,$3B                         ; AAE7 13 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D214     ; AAE9 20 14 D2                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; AAEC 20 F3 D1                  ..
        pla                                     ; AAEF 68                       h
        sta     $51                             ; AAF0 85 51                    .Q
        sec                                     ; AAF2 38                       8
        rts                                     ; AAF3 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AAF4:
        clc                                     ; AAF4 18                       .
        rts                                     ; AAF5 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AAF6:
        lda     $7000                           ; AAF6 AD 00 70                 ..p
        and     #$FC                            ; AAF9 29 FC                    ).
        sta     $7000                           ; AAFB 8D 00 70                 ..p
        ldx     #$01                            ; AAFE A2 01                    ..
        lda     $7006,x                         ; AB00 BD 06 70                 ..p
        and     #$FC                            ; AB03 29 FC                    ).
        sta     $7006,x                         ; AB05 9D 06 70                 ..p
        jsr     MapEventSystem_Entry_995E       ; AB08 20 5E 99                  ^.
        brk                                     ; AB0B 00                       .
        db   $14,$3B                         ; AB0C 14 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; AB0E 00                       .
        db   $15,$3B                         ; AB0F 15 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; AB11 20 18 D2                  ..
        brk                                     ; AB14 00                       .
        db   $0F,$FB                         ; AB15 0F FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; AB17 20 C5 C5                  ..
        lda     #$00                            ; AB1A A9 00                    ..
        sta     SaveTimeOfDay                   ; AB1C 8D ED 62                 ..b
        lda     #$1A                            ; AB1F A9 1A                    ..
        sta     PlayerLocalX                    ; AB21 85 44                    .D
        lda     #$02                            ; AB23 A9 02                    ..
        sta     PlayerLocalY                    ; AB25 85 45                    .E
        lda     #$00                            ; AB27 A9 00                    ..
        sta     CurrentSubmapNumber             ; AB29 85 64                    .d
        lda     #$02                            ; AB2B A9 02                    ..
        brk                                     ; AB2D 00                       .
        db   $52,$73                         ; AB2E 52 73                    Rs
; ----------------------------------------------------------------------------
        ldx     #$FF                            ; AB30 A2 FF                    ..
        stx     $70                             ; AB32 86 70                    .p
        stx     $71                             ; AB34 86 71                    .q
        inx                                     ; AB36 E8                       .
        txa                                     ; AB37 8A                       .
        inx                                     ; AB38 E8                       .
        brk                                     ; AB39 00                       .
        db   $5E,$73                         ; AB3A 5E 73                    ^s
; ----------------------------------------------------------------------------
        ldx     #$00                            ; AB3C A2 00                    ..
        lda     #$02                            ; AB3E A9 02                    ..
        brk                                     ; AB40 00                       .
        db   $0D,$87                         ; AB41 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$01                            ; AB43 A2 01                    ..
        lda     #$03                            ; AB45 A9 03                    ..
        brk                                     ; AB47 00                       .
        db   $0D,$87                         ; AB48 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$02                            ; AB4A A2 02                    ..
        lda     #$83                            ; AB4C A9 83                    ..
        brk                                     ; AB4E 00                       .
        db   $0D,$87                         ; AB4F 0D 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AB51 00                       .
        db   $07,$9F                         ; AB52 07 9F                    ..
; ----------------------------------------------------------------------------
        lda     #$02                            ; AB54 A9 02                    ..
        jsr     MapEventSystem_Entry_AA1B       ; AB56 20 1B AA                  ..
        lda     #$02                            ; AB59 A9 02                    ..
        sta     $6FE1                           ; AB5B 8D E1 6F                 ..o
        lda     $7001                           ; AB5E AD 01 70                 ..p
        and     #$FC                            ; AB61 29 FC                    ).
        ora     #$01                            ; AB63 09 01                    ..
        sta     $7001                           ; AB65 8D 01 70                 ..p
        lda     $7000                           ; AB68 AD 00 70                 ..p
        and     #$FC                            ; AB6B 29 FC                    ).
        sta     $7000                           ; AB6D 8D 00 70                 ..p
        lda     #$00                            ; AB70 A9 00                    ..
        sta     $3D                             ; AB72 85 3D                    .=
        brk                                     ; AB74 00                       .
        db   $0A,$6F                         ; AB75 0A 6F                    .o
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; AB77 20 BF C5                  ..
        jsr     MapEventSystem_Entry_995E       ; AB7A 20 5E 99                  ^.
        brk                                     ; AB7D 00                       .
        db   $16,$3B                         ; AB7E 16 3B                    .;
; ----------------------------------------------------------------------------
        lda     #$01                            ; AB80 A9 01                    ..
        sta     $6FE1                           ; AB82 8D E1 6F                 ..o
        lda     $7001                           ; AB85 AD 01 70                 ..p
        and     #$FC                            ; AB88 29 FC                    ).
        ora     #$02                            ; AB8A 09 02                    ..
        sta     $7001                           ; AB8C 8D 01 70                 ..p
        jsr     UpperFixedEngine_Entry_D218     ; AB8F 20 18 D2                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; AB92 20 F3 D1                  ..
        jmp     MapEventSystem_Branch_B624      ; AB95 4C 24 B6                 L$.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AB98:
        jsr     UpperFixedEngine_Entry_D1F3     ; AB98 20 F3 D1                  ..
        ldx     #$02                            ; AB9B A2 02                    ..
        lda     $6FE6,x                         ; AB9D BD E6 6F                 ..o
        ldx     #$01                            ; ABA0 A2 01                    ..
        sta     $6FE6,x                         ; ABA2 9D E6 6F                 ..o
        lda     $7006,x                         ; ABA5 BD 06 70                 ..p
        and     #$FC                            ; ABA8 29 FC                    ).
        sta     $7006,x                         ; ABAA 9D 06 70                 ..p
        brk                                     ; ABAD 00                       .
        db   $0A,$6F                         ; ABAE 0A 6F                    .o
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_995E       ; ABB0 20 5E 99                  ^.
        brk                                     ; ABB3 00                       .
        db   $A7,$3B                         ; ABB4 A7 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; ABB6 20 18 D2                  ..
        brk                                     ; ABB9 00                       .
        db   $0F,$CB,$04                     ; ABBA 0F CB 04                 ...
; ----------------------------------------------------------------------------
        lda     #$1E                            ; ABBD A9 1E                    ..
        sta     SaveTimeOfDay                   ; ABBF 8D ED 62                 ..b
        lda     #$03                            ; ABC2 A9 03                    ..
        brk                                     ; ABC4 00                       .
        db   $01,$8F                         ; ABC5 01 8F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; ABC7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_ABC8:
        ldx     #$06                            ; ABC8 A2 06                    ..
        lda     $6F62                           ; ABCA AD 62 6F                 .bo
        sta     $6F66,x                         ; ABCD 9D 66 6F                 .fo
        lda     $6FA2                           ; ABD0 AD A2 6F                 ..o
        sta     $6FA6,x                         ; ABD3 9D A6 6F                 ..o
        lda     $6F82                           ; ABD6 AD 82 6F                 ..o
        sta     $6F86,x                         ; ABD9 9D 86 6F                 ..o
        lda     $6FC2                           ; ABDC AD C2 6F                 ..o
        sta     $6FC6,x                         ; ABDF 9D C6 6F                 ..o
        lda     $7002                           ; ABE2 AD 02 70                 ..p
        and     #$FC                            ; ABE5 29 FC                    ).
        sta     $7006,x                         ; ABE7 9D 06 70                 ..p
        lda     #$11                            ; ABEA A9 11                    ..
        sta     $7046,x                         ; ABEC 9D 46 70                 .Fp
        lda     #$80                            ; ABEF A9 80                    ..
        sta     $6F62                           ; ABF1 8D 62 6F                 .bo
        sta     $6FA2                           ; ABF4 8D A2 6F                 ..o
        sta     $6F82                           ; ABF7 8D 82 6F                 ..o
        sta     $6FC2                           ; ABFA 8D C2 6F                 ..o
        lda     #$00                            ; ABFD A9 00                    ..
        sta     $7002                           ; ABFF 8D 02 70                 ..p
        ldx     #$02                            ; AC02 A2 02                    ..
        lda     #$FF                            ; AC04 A9 FF                    ..
        brk                                     ; AC06 00                       .
        db   $51,$73                         ; AC07 51 73                    Qs
; ----------------------------------------------------------------------------
        sec                                     ; AC09 38                       8
        rts                                     ; AC0A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AC0B:
        lda     $51                             ; AC0B A5 51                    .Q
        pha                                     ; AC0D 48                       H
        lda     #$03                            ; AC0E A9 03                    ..
        sta     $058E                           ; AC10 8D 8E 05                 ...
        lda     #$00                            ; AC13 A9 00                    ..
        sta     $3D                             ; AC15 85 3D                    .=
        lda     #$0F                            ; AC17 A9 0F                    ..
        sta     PlayerLocalY                    ; AC19 85 45                    .E
        sta     PlayerLocalX                    ; AC1B 85 44                    .D
        ldx     #$0F                            ; AC1D A2 0F                    ..
        ldy     #$0E                            ; AC1F A0 0E                    ..
        jsr     UpperFixedEngine_Entry_D3E6     ; AC21 20 E6 D3                  ..
        and     #$1F                            ; AC24 29 1F                    ).
        tax                                     ; AC26 AA                       .
        lda     $6F40,x                         ; AC27 BD 40 6F                 .@o
        and     #$7F                            ; AC2A 29 7F                    ).
        brk                                     ; AC2C 00                       .
        db   $12,$87                         ; AC2D 12 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AC2F 00                       .
        db   $03,$BF                         ; AC30 03 BF                    ..
; ----------------------------------------------------------------------------
        lda     #$0A                            ; AC32 A9 0A                    ..
        sta     PlayerLocalX                    ; AC34 85 44                    .D
        lda     #$13                            ; AC36 A9 13                    ..
        sta     PlayerLocalY                    ; AC38 85 45                    .E
        lda     #$01                            ; AC3A A9 01                    ..
        sta     $3D                             ; AC3C 85 3D                    .=
        sta     $058E                           ; AC3E 8D 8E 05                 ...
        lda     #$11                            ; AC41 A9 11                    ..
        ldx     #$05                            ; AC43 A2 05                    ..
        sta     $7046,x                         ; AC45 9D 46 70                 .Fp
        ldx     #$03                            ; AC48 A2 03                    ..
        sta     $7046,x                         ; AC4A 9D 46 70                 .Fp
        ldx     #$01                            ; AC4D A2 01                    ..
        sta     $7046,x                         ; AC4F 9D 46 70                 .Fp
        ldx     #$02                            ; AC52 A2 02                    ..
        sta     $7046,x                         ; AC54 9D 46 70                 .Fp
        pla                                     ; AC57 68                       h
        sta     $51                             ; AC58 85 51                    .Q
        brk                                     ; AC5A 00                       .
        db   $0F,$CB,$08                     ; AC5B 0F CB 08                 ...
; ----------------------------------------------------------------------------
        sec                                     ; AC5E 38                       8
        rts                                     ; AC5F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AC60:
        brk                                     ; AC60 00                       .
        db   $05,$EB                         ; AC61 05 EB                    ..
; ----------------------------------------------------------------------------
        jsr     $02F0                           ; AC63 20 F0 02                  ..
        sec                                     ; AC66 38                       8
        rts                                     ; AC67 60                       `
; ----------------------------------------------------------------------------
        db   $18,$60                         ; AC68 18 60                    .`
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AC6A:
        lda     SaveCurrentChapterMinus1        ; AC6A AD 5A 61                 .Za
        cmp     #$02                            ; AC6D C9 02                    ..
        bne     MapEventSystem_Branch_AC98      ; AC6F D0 27                    .'
        ldx     $51                             ; AC71 A6 51                    .Q
        lda     $6F60,x                         ; AC73 BD 60 6F                 .`o
        sec                                     ; AC76 38                       8
        sbc     #$0C                            ; AC77 E9 0C                    ..
        cmp     #$05                            ; AC79 C9 05                    ..
        bcs     MapEventSystem_Branch_AC98      ; AC7B B0 1B                    ..
        lda     $6F80,x                         ; AC7D BD 80 6F                 ..o
        sec                                     ; AC80 38                       8
        sbc     #$04                            ; AC81 E9 04                    ..
        cmp     #$03                            ; AC83 C9 03                    ..
        bcs     MapEventSystem_Branch_AC98      ; AC85 B0 11                    ..
        lda     $70E0,x                         ; AC87 BD E0 70                 ..p
        and     #$F7                            ; AC8A 29 F7                    ).
        sta     $70E0,x                         ; AC8C 9D E0 70                 ..p
        brk                                     ; AC8F 00                       .
        db   $05,$DB,$DF,$00,$15,$5F,$38,$60 ; AC90 05 DB DF 00 15 5F 38 60  ....._8`
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AC98:
        clc                                     ; AC98 18                       .
        rts                                     ; AC99 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AC9A:
        lda     $51                             ; AC9A A5 51                    .Q
        pha                                     ; AC9C 48                       H
        jsr     MapEventSystem_Entry_995E       ; AC9D 20 5E 99                  ^.
        brk                                     ; ACA0 00                       .
        db   $F1,$2B                         ; ACA1 F1 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; ACA3 00                       .
        db   $EB,$2B                         ; ACA4 EB 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; ACA6 00                       .
        db   $AD,$3B                         ; ACA7 AD 3B                    .;
; ----------------------------------------------------------------------------
        ldx     #$03                            ; ACA9 A2 03                    ..
        ldy     #$00                            ; ACAB A0 00                    ..
        lda     $3D                             ; ACAD A5 3D                    .=
        eor     #$02                            ; ACAF 49 02                    I.
        jsr     MapEventSystem_Entry_A1AF       ; ACB1 20 AF A1                  ..
        ldx     #$01                            ; ACB4 A2 01                    ..
        lda     #$24                            ; ACB6 A9 24                    .$
        brk                                     ; ACB8 00                       .
        db   $0D,$87                         ; ACB9 0D 87                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; ACBB A9 00                    ..
        sta     $0530                           ; ACBD 8D 30 05                 .0.
        jsr     UpperFixedEngine_Entry_D20A     ; ACC0 20 0A D2                  ..
        pla                                     ; ACC3 68                       h
        sta     $51                             ; ACC4 85 51                    .Q
        sec                                     ; ACC6 38                       8
        rts                                     ; ACC7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_ACC8:
        brk                                     ; ACC8 00                       .
        db   $0B,$EB,$04                     ; ACC9 0B EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_ACD0      ; ACCC F0 02                    ..
        sec                                     ; ACCE 38                       8
        rts                                     ; ACCF 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_ACD0:
        clc                                     ; ACD0 18                       .
        rts                                     ; ACD1 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_ACD2:
        ldx     #$00                            ; ACD2 A2 00                    ..
        lda     $6F61                           ; ACD4 AD 61 6F                 .ao
        sta     $6F66,x                         ; ACD7 9D 66 6F                 .fo
        sta     $6FA6,x                         ; ACDA 9D A6 6F                 ..o
        lda     $6F81                           ; ACDD AD 81 6F                 ..o
        sta     $6F86,x                         ; ACE0 9D 86 6F                 ..o
        sta     $6FC6,x                         ; ACE3 9D C6 6F                 ..o
        lda     #$01                            ; ACE6 A9 01                    ..
        sta     $6FE6,x                         ; ACE8 9D E6 6F                 ..o
        lda     #$80                            ; ACEB A9 80                    ..
        sta     $7021                           ; ACED 8D 21 70                 .!p
        brk                                     ; ACF0 00                       .
        db   $0A,$6F                         ; ACF1 0A 6F                    .o
; ----------------------------------------------------------------------------
        sec                                     ; ACF3 38                       8
        rts                                     ; ACF4 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_ACF5:
        brk                                     ; ACF5 00                       .
        db   $05,$EB,$02,$F0,$02,$38,$60,$18 ; ACF6 05 EB 02 F0 02 38 60 18  .....8`.
        db   $60                             ; ACFE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_ACFF:
        jsr     UpperFixedEngine_Entry_C5C5     ; ACFF 20 C5 C5                  ..
        lda     #$8C                            ; AD02 A9 8C                    ..
        sta     SaveTimeOfDay                   ; AD04 8D ED 62                 ..b
        lda     #$07                            ; AD07 A9 07                    ..
        sta     PlayerLocalX                    ; AD09 85 44                    .D
        lda     #$1A                            ; AD0B A9 1A                    ..
        sta     PlayerLocalY                    ; AD0D 85 45                    .E
        lda     #$01                            ; AD0F A9 01                    ..
        brk                                     ; AD11 00                       .
        db   $31,$EF                         ; AD12 31 EF                    1.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; AD14 20 BF C5                  ..
        jmp     MapEventSystem_Branch_B624      ; AD17 4C 24 B6                 L$.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AD1A:
        lda     #$22                            ; AD1A A9 22                    ."
        ldx     $3D                             ; AD1C A6 3D                    .=
        cpx     #$02                            ; AD1E E0 02                    ..
        beq     MapEventSystem_Branch_AD2A      ; AD20 F0 08                    ..
        lda     #$82                            ; AD22 A9 82                    ..
        cpx     #$01                            ; AD24 E0 01                    ..
        beq     MapEventSystem_Branch_AD2A      ; AD26 F0 02                    ..
        lda     #$12                            ; AD28 A9 12                    ..
MapEventSystem_Branch_AD2A:
        sta     $0554                           ; AD2A 8D 54 05                 .T.
        lda     #$81                            ; AD2D A9 81                    ..
        sta     $0555                           ; AD2F 8D 55 05                 .U.
        lda     #$02                            ; AD32 A9 02                    ..
        sta     $0531                           ; AD34 8D 31 05                 .1.
        lda     #$82                            ; AD37 A9 82                    ..
        sta     $0530                           ; AD39 8D 30 05                 .0.
        lda     $AD4A                           ; AD3C AD 4A AD                 .J.
        sta     $0532                           ; AD3F 8D 32 05                 .2.
        lda     $AD4B                           ; AD42 AD 4B AD                 .K.
        sta     $0533                           ; AD45 8D 33 05                 .3.
        sec                                     ; AD48 38                       8
        rts                                     ; AD49 60                       `
; ----------------------------------------------------------------------------
        db   $54                             ; AD4A 54                       T
        db   $05                             ; AD4B 05                       .
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AD4C:
        lda     #$11                            ; AD4C A9 11                    ..
        ldx     #$05                            ; AD4E A2 05                    ..
        sta     $7046,x                         ; AD50 9D 46 70                 .Fp
        ldx     #$06                            ; AD53 A2 06                    ..
        sta     $7046,x                         ; AD55 9D 46 70                 .Fp
        ldx     #$08                            ; AD58 A2 08                    ..
        sta     $7046,x                         ; AD5A 9D 46 70                 .Fp
        ldx     #$07                            ; AD5D A2 07                    ..
        sta     $7046,x                         ; AD5F 9D 46 70                 .Fp
        ldx     #$02                            ; AD62 A2 02                    ..
        sta     $7046,x                         ; AD64 9D 46 70                 .Fp
        ldx     #$03                            ; AD67 A2 03                    ..
        sta     $7046,x                         ; AD69 9D 46 70                 .Fp
        ldx     #$04                            ; AD6C A2 04                    ..
        sta     $7046,x                         ; AD6E 9D 46 70                 .Fp
        sec                                     ; AD71 38                       8
        rts                                     ; AD72 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AD73:
        jsr     InitializeOamShadow             ; AD73 20 43 C5                  C.
        ldx     #$0F                            ; AD76 A2 0F                    ..
MapEventSystem_Branch_AD78:
        lda     $AD8E,x                         ; AD78 BD 8E AD                 ...
        sta     $0200,x                         ; AD7B 9D 00 02                 ...
        dex                                     ; AD7E CA                       .
        bpl     MapEventSystem_Branch_AD78      ; AD7F 10 F7                    ..
        ldx     #$78                            ; AD81 A2 78                    .x
        jsr     UpperFixedEngine_Entry_C90C     ; AD83 20 0C C9                  ..
        jsr     UpperFixedEngine_Entry_E501     ; AD86 20 01 E5                  ..
        jsr     UpperFixedEngine_Entry_DFF1     ; AD89 20 F1 DF                  ..
        sec                                     ; AD8C 38                       8
        rts                                     ; AD8D 60                       `
; ----------------------------------------------------------------------------
        db   $3B,$00,$00,$78,$3B,$01,$00,$80 ; AD8E 3B 00 00 78 3B 01 00 80  ;..x;...
        db   $43,$02,$00,$78,$43,$03,$00,$80 ; AD96 43 02 00 78 43 03 00 80  C..xC...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AD9E:
        lda     $51                             ; AD9E A5 51                    .Q
        pha                                     ; ADA0 48                       H
        lda     $6FA0                           ; ADA1 AD A0 6F                 ..o
        cmp     #$11                            ; ADA4 C9 11                    ..
        bne     MapEventSystem_Branch_AE08      ; ADA6 D0 60                    .`
        lda     $6FC0                           ; ADA8 AD C0 6F                 ..o
        cmp     #$02                            ; ADAB C9 02                    ..
        bne     MapEventSystem_Branch_AE08      ; ADAD D0 59                    .Y
        brk                                     ; ADAF 00                       .
        db   $00,$EB,$80                     ; ADB0 00 EB 80                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_AE03      ; ADB3 D0 4E                    .N
        jsr     MapEventSystem_Entry_B16B       ; ADB5 20 6B B1                  k.
        jsr     MapEventSystem_Entry_995E       ; ADB8 20 5E 99                  ^.
        brk                                     ; ADBB 00                       .
        db   $B3,$3B                         ; ADBC B3 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; ADBE 00                       .
        db   $07,$6F,$48                     ; ADBF 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        cmp     #$01                            ; ADC2 C9 01                    ..
        bcs     MapEventSystem_Branch_ADFC      ; ADC4 B0 36                    .6
        brk                                     ; ADC6 00                       .
        db   $23,$FB                         ; ADC7 23 FB                    #.
; ----------------------------------------------------------------------------
        lda     $62AA                           ; ADC9 AD AA 62                 ..b
        ora     #$20                            ; ADCC 09 20                    .
        sta     $62AA                           ; ADCE 8D AA 62                 ..b
        jsr     UpperFixedEngine_Entry_D1F3     ; ADD1 20 F3 D1                  ..
        lda     #$02                            ; ADD4 A9 02                    ..
        sta     CurrentSubmapNumber             ; ADD6 85 64                    .d
MapEventSystem_Entry_ADD8:
        jsr     FixedTrampoline07               ; ADD8 20 16 C0                  ..
        clc                                     ; ADDB 18                       .
MapEventSystem_Entry_ADDC:
        jsr     FixedTrampoline01               ; ADDC 20 04 C0                  ..
        ldx     #$AA                            ; ADDF A2 AA                    ..
MapEventSystem_Branch_ADE1:
        jsr     MapEventSystem_Entry_AE11       ; ADE1 20 11 AE                  ..
        dex                                     ; ADE4 CA                       .
        bne     MapEventSystem_Branch_ADE1      ; ADE5 D0 FA                    ..
        brk                                     ; ADE7 00                       .
        db   $07,$9F                         ; ADE8 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; ADEA 00                       .
        db   $06,$FB                         ; ADEB 06 FB                    ..
; ----------------------------------------------------------------------------
        pla                                     ; ADED 68                       h
        tax                                     ; ADEE AA                       .
        lda     #$80                            ; ADEF A9 80                    ..
        sta     $6F60,x                         ; ADF1 9D 60 6F                 .`o
        sta     $6F80,x                         ; ADF4 9D 80 6F                 ..o
        lda     #$1E                            ; ADF7 A9 1E                    ..
        sta     $51                             ; ADF9 85 51                    .Q
        rts                                     ; ADFB 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_ADFC:
        jsr     UpperFixedEngine_Entry_D1F3     ; ADFC 20 F3 D1                  ..
        brk                                     ; ADFF 00                       .
        db   $00,$CB,$80                     ; AE00 00 CB 80                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AE03:
        pla                                     ; AE03 68                       h
        sta     $51                             ; AE04 85 51                    .Q
        clc                                     ; AE06 18                       .
        rts                                     ; AE07 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AE08:
        brk                                     ; AE08 00                       .
        db   $00,$DB,$7F                     ; AE09 00 DB 7F                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AE0C:
        pla                                     ; AE0C 68                       h
        sta     $51                             ; AE0D 85 51                    .Q
        clc                                     ; AE0F 18                       .
        rts                                     ; AE10 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AE11:
        lda     $0509                           ; AE11 AD 09 05                 ...
        pha                                     ; AE14 48                       H
        txa                                     ; AE15 8A                       .
        and     #$C0                            ; AE16 29 C0                    ).
        lsr     a                               ; AE18 4A                       J
        lsr     a                               ; AE19 4A                       J
        lsr     a                               ; AE1A 4A                       J
        lsr     a                               ; AE1B 4A                       J
        lsr     a                               ; AE1C 4A                       J
        lsr     a                               ; AE1D 4A                       J
        clc                                     ; AE1E 18                       .
        adc     #$02                            ; AE1F 69 02                    i.
        adc     $0509                           ; AE21 6D 09 05                 m..
        sta     $0509                           ; AE24 8D 09 05                 ...
        jsr     WaitForNmi                      ; AE27 20 74 FF                  t.
        pla                                     ; AE2A 68                       h
        sta     $0509                           ; AE2B 8D 09 05                 ...
        jmp     WaitForNmi                      ; AE2E 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AE31:
        lda     #$8F                            ; AE31 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; AE33 20 3A A2                  :.
        sec                                     ; AE36 38                       8
        rts                                     ; AE37 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AE38:
        lda     $6FA0                           ; AE38 AD A0 6F                 ..o
        cmp     #$08                            ; AE3B C9 08                    ..
        bne     MapEventSystem_Branch_AE55      ; AE3D D0 16                    ..
        lda     $6FC0                           ; AE3F AD C0 6F                 ..o
        cmp     #$03                            ; AE42 C9 03                    ..
        bne     MapEventSystem_Branch_AE55      ; AE44 D0 0F                    ..
MapEventSystem_Branch_AE46:
        lda     #$07                            ; AE46 A9 07                    ..
        brk                                     ; AE48 00                       .
        db   $12,$2F                         ; AE49 12 2F                    ./
; ----------------------------------------------------------------------------
        ldy     #$10                            ; AE4B A0 10                    ..
        brk                                     ; AE4D 00                       .
        db   $03,$4F                         ; AE4E 03 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; AE50 00                       .
        db   $27,$0F                         ; AE51 27 0F                    '.
; ----------------------------------------------------------------------------
        sec                                     ; AE53 38                       8
        rts                                     ; AE54 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AE55:
        clc                                     ; AE55 18                       .
        rts                                     ; AE56 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AE57:
        ldx     #$00                            ; AE57 A2 00                    ..
MapEventSystem_Branch_AE59:
        lda     PlayerLocalX                    ; AE59 A5 44                    .D
        cmp     $AEB3,x                         ; AE5B DD B3 AE                 ...
        bne     MapEventSystem_Branch_AE67      ; AE5E D0 07                    ..
        lda     PlayerLocalY                    ; AE60 A5 45                    .E
        cmp     $AEB4,x                         ; AE62 DD B4 AE                 ...
        beq     MapEventSystem_Branch_AE6D      ; AE65 F0 06                    ..
MapEventSystem_Branch_AE67:
        inx                                     ; AE67 E8                       .
        inx                                     ; AE68 E8                       .
        cpx     #$04                            ; AE69 E0 04                    ..
        bcc     MapEventSystem_Branch_AE59      ; AE6B 90 EC                    ..
MapEventSystem_Branch_AE6D:
        lda     $AEB7,x                         ; AE6D BD B7 AE                 ...
        sta     $0563                           ; AE70 8D 63 05                 .c.
        and     #$0F                            ; AE73 29 0F                    ).
        ora     #$80                            ; AE75 09 80                    ..
        sta     $0530                           ; AE77 8D 30 05                 .0.
        lda     $AEB8,x                         ; AE7A BD B8 AE                 ...
        sta     $0564                           ; AE7D 8D 64 05                 .d.
        lda     #$01                            ; AE80 A9 01                    ..
        sta     $0565                           ; AE82 8D 65 05                 .e.
        lda     #$03                            ; AE85 A9 03                    ..
        sta     $0531                           ; AE87 8D 31 05                 .1.
        lda     $AEBD                           ; AE8A AD BD AE                 ...
        sta     $0532                           ; AE8D 8D 32 05                 .2.
        lda     $AEBE                           ; AE90 AD BE AE                 ...
        sta     $0533                           ; AE93 8D 33 05                 .3.
        lda     #$11                            ; AE96 A9 11                    ..
        ldx     #$03                            ; AE98 A2 03                    ..
        sta     $7046,x                         ; AE9A 9D 46 70                 .Fp
        ldx     #$07                            ; AE9D A2 07                    ..
        sta     $7046,x                         ; AE9F 9D 46 70                 .Fp
        ldx     #$04                            ; AEA2 A2 04                    ..
        sta     $7046,x                         ; AEA4 9D 46 70                 .Fp
        ldx     #$02                            ; AEA7 A2 02                    ..
        sta     $7046,x                         ; AEA9 9D 46 70                 .Fp
        lda     #$FF                            ; AEAC A9 FF                    ..
        sta     $6C0C                           ; AEAE 8D 0C 6C                 ..l
        sec                                     ; AEB1 38                       8
        rts                                     ; AEB2 60                       `
; ----------------------------------------------------------------------------
        db   $03                             ; AEB3 03                       .
        db   $10,$05,$10                     ; AEB4 10 05 10                 ...
        db   $23                             ; AEB7 23                       #
        db   $83,$23,$81,$82,$81             ; AEB8 83 23 81 82 81           .#...
        db   $63                             ; AEBD 63                       c
        db   $05                             ; AEBE 05                       .
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AEBF:
        ldy     $51                             ; AEBF A4 51                    .Q
        lda     $70E0,y                         ; AEC1 B9 E0 70                 ..p
        ora     #$80                            ; AEC4 09 80                    ..
        sta     $70E0,y                         ; AEC6 99 E0 70                 ..p
        ldx     $6FE0,y                         ; AEC9 BE E0 6F                 ..o
        lda     #$1E                            ; AECC A9 1E                    ..
        brk                                     ; AECE 00                       .
        db   $0D,$87                         ; AECF 0D 87                    ..
; ----------------------------------------------------------------------------
        sec                                     ; AED1 38                       8
        rts                                     ; AED2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AED3:
        ldx     #$02                            ; AED3 A2 02                    ..
        lda     #$11                            ; AED5 A9 11                    ..
        sta     $7046,x                         ; AED7 9D 46 70                 .Fp
        sec                                     ; AEDA 38                       8
        rts                                     ; AEDB 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AEDC:
        ldx     $51                             ; AEDC A6 51                    .Q
        lda     $7180,x                         ; AEDE BD 80 71                 ..q
        pha                                     ; AEE1 48                       H
        tax                                     ; AEE2 AA                       .
        lda     $AEFD,x                         ; AEE3 BD FD AE                 ...
        brk                                     ; AEE6 00                       .
        db   $03,$9F                         ; AEE7 03 9F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; AEE9 68                       h
        cmp     #$06                            ; AEEA C9 06                    ..
        beq     MapEventSystem_Branch_AEF7      ; AEEC F0 09                    ..
        and     #$01                            ; AEEE 29 01                    ).
        beq     MapEventSystem_Branch_AEFC      ; AEF0 F0 0A                    ..
        brk                                     ; AEF2 00                       .
        db   $02,$4F                         ; AEF3 02 4F                    .O
; ----------------------------------------------------------------------------
        sec                                     ; AEF5 38                       8
        rts                                     ; AEF6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AEF7:
        ldy     #$10                            ; AEF7 A0 10                    ..
        brk                                     ; AEF9 00                       .
        db   $03,$4F                         ; AEFA 03 4F                    .O
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AEFC:
        sec                                     ; AEFC 38                       8
        rts                                     ; AEFD 60                       `
; ----------------------------------------------------------------------------
        db   $8A,$88,$8A,$8B,$8A,$8E,$8A,$8B ; AEFE 8A 88 8A 8B 8A 8E 8A 8B  ........
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AF06:
        lda     $7000                           ; AF06 AD 00 70                 ..p
        and     #$FC                            ; AF09 29 FC                    ).
        ora     #$01                            ; AF0B 09 01                    ..
        sta     $7000                           ; AF0D 8D 00 70                 ..p
        lda     $51                             ; AF10 A5 51                    .Q
        pha                                     ; AF12 48                       H
        jsr     MapEventSystem_Entry_995E       ; AF13 20 5E 99                  ^.
        brk                                     ; AF16 00                       .
        db   $E1,$3B                         ; AF17 E1 3B                    .;
; ----------------------------------------------------------------------------
        ldx     #$00                            ; AF19 A2 00                    ..
        brk                                     ; AF1B 00                       .
        db   $29,$73                         ; AF1C 29 73                    )s
; ----------------------------------------------------------------------------
        pha                                     ; AF1E 48                       H
        beq     MapEventSystem_Branch_AF24      ; AF1F F0 03                    ..
        brk                                     ; AF21 00                       .
        db   $E2,$3B                         ; AF22 E2 3B                    .;
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AF24:
        brk                                     ; AF24 00                       .
        db   $E3,$3B                         ; AF25 E3 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; AF27 00                       .
        db   $E4,$3B                         ; AF28 E4 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; AF2A 00                       .
        db   $8E,$FB                         ; AF2B 8E FB                    ..
; ----------------------------------------------------------------------------
        ldy     #$10                            ; AF2D A0 10                    ..
        brk                                     ; AF2F 00                       .
        db   $03,$4F                         ; AF30 03 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; AF32 68                       h
        asl     a                               ; AF33 0A                       .
        asl     a                               ; AF34 0A                       .
        asl     a                               ; AF35 0A                       .
        tay                                     ; AF36 A8                       .
        pla                                     ; AF37 68                       h
        pha                                     ; AF38 48                       H
        tax                                     ; AF39 AA                       .
        lda     $6FE0,x                         ; AF3A BD E0 6F                 ..o
        tax                                     ; AF3D AA                       .
        tya                                     ; AF3E 98                       .
        brk                                     ; AF3F 00                       .
        db   $0D,$87                         ; AF40 0D 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AF42 00                       .
        db   $0A,$6F                         ; AF43 0A 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; AF45 00                       .
        db   $E5,$3B                         ; AF46 E5 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; AF48 20 0A D2                  ..
        pla                                     ; AF4B 68                       h
        sta     $51                             ; AF4C 85 51                    .Q
        sec                                     ; AF4E 38                       8
        rts                                     ; AF4F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AF50:
        ldy     $51                             ; AF50 A4 51                    .Q
        ldx     $6FE0,y                         ; AF52 BE E0 6F                 ..o
        lda     #$1E                            ; AF55 A9 1E                    ..
        brk                                     ; AF57 00                       .
        db   $0D,$87                         ; AF58 0D 87                    ..
; ----------------------------------------------------------------------------
        sec                                     ; AF5A 38                       8
        rts                                     ; AF5B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AF5C:
        brk                                     ; AF5C 00                       .
        db   $02,$9F                         ; AF5D 02 9F                    ..
; ----------------------------------------------------------------------------
        sec                                     ; AF5F 38                       8
        rts                                     ; AF60 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AF61:
        ldx     $3D                             ; AF61 A6 3D                    .=
        lda     $AF81,x                         ; AF63 BD 81 AF                 ...
        sta     $0563                           ; AF66 8D 63 05                 .c.
        lda     #$01                            ; AF69 A9 01                    ..
        sta     $0531                           ; AF6B 8D 31 05                 .1.
        lda     #$82                            ; AF6E A9 82                    ..
        sta     $0530                           ; AF70 8D 30 05                 .0.
        lda     $AEBD                           ; AF73 AD BD AE                 ...
        sta     $0532                           ; AF76 8D 32 05                 .2.
        lda     $AEBE                           ; AF79 AD BE AE                 ...
        sta     $0533                           ; AF7C 8D 33 05                 .3.
        sec                                     ; AF7F 38                       8
        rts                                     ; AF80 60                       `
; ----------------------------------------------------------------------------
        db   $12,$82,$22,$42                 ; AF81 12 82 22 42              .."B
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AF85:
        lda     PlayerLocalX                    ; AF85 A5 44                    .D
        and     #$FE                            ; AF87 29 FE                    ).
        cmp     #$0E                            ; AF89 C9 0E                    ..
        bne     MapEventSystem_Branch_AF95      ; AF8B D0 08                    ..
        lda     PlayerLocalY                    ; AF8D A5 45                    .E
        db   $C9,$15,$D0,$02                 ; AF8F C9 15 D0 02              ....
; ----------------------------------------------------------------------------
        sec                                     ; AF93 38                       8
        rts                                     ; AF94 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AF95:
        clc                                     ; AF95 18                       .
        rts                                     ; AF96 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AF97:
        lda     $6289                           ; AF97 AD 89 62                 ..b
        bpl     MapEventSystem_Branch_AFB6      ; AF9A 10 1A                    ..
        lda     $3E                             ; AF9C A5 3E                    .>
        beq     MapEventSystem_Branch_AFB2      ; AF9E F0 12                    ..
        jsr     MapEventSystem_Entry_B16B       ; AFA0 20 6B B1                  k.
        brk                                     ; AFA3 00                       .
        db   $07,$6F,$43                     ; AFA4 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; AFA7 00                       .
        db   $64,$4B                         ; AFA8 64 4B                    dK
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; AFAA 20 18 D2                  ..
        lda     #$25                            ; AFAD A9 25                    .%
        db   $00,$07,$CF                     ; AFAF 00 07 CF                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AFB2:
        lda     #$1E                            ; AFB2 A9 1E                    ..
        sta     $51                             ; AFB4 85 51                    .Q
MapEventSystem_Branch_AFB6:
        clc                                     ; AFB6 18                       .
        rts                                     ; AFB7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AFB8:
        lda     PlayerLocalY                    ; AFB8 A5 45                    .E
        cmp     #$05                            ; AFBA C9 05                    ..
        beq     MapEventSystem_Branch_AFC0      ; AFBC F0 02                    ..
        clc                                     ; AFBE 18                       .
        rts                                     ; AFBF 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_AFC0:
        lda     #$8F                            ; AFC0 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; AFC2 20 3A A2                  :.
        inc     $0531                           ; AFC5 EE 31 05                 .1.
        sec                                     ; AFC8 38                       8
        rts                                     ; AFC9 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_AFCA:
        lda     $51                             ; AFCA A5 51                    .Q
        pha                                     ; AFCC 48                       H
        tax                                     ; AFCD AA                       .
        lda     $7000,x                         ; AFCE BD 00 70                 ..p
        and     #$FC                            ; AFD1 29 FC                    ).
        sta     $7000,x                         ; AFD3 9D 00 70                 ..p
        ldy     #$03                            ; AFD6 A0 03                    ..
        lda     PlayerLocalX                    ; AFD8 A5 44                    .D
        cmp     #$0F                            ; AFDA C9 0F                    ..
        bcc     MapEventSystem_Branch_AFE0      ; AFDC 90 02                    ..
        ldy     #$01                            ; AFDE A0 01                    ..
MapEventSystem_Branch_AFE0:
        tya                                     ; AFE0 98                       .
        ora     $7000,x                         ; AFE1 1D 00 70                 ..p
        sta     $7000,x                         ; AFE4 9D 00 70                 ..p
        tya                                     ; AFE7 98                       .
        eor     #$02                            ; AFE8 49 02                    I.
        ora     $7000                           ; AFEA 0D 00 70                 ..p
        sta     $7000                           ; AFED 8D 00 70                 ..p
        brk                                     ; AFF0 00                       .
        db   $09,$5F                         ; AFF1 09 5F                    ._
; ----------------------------------------------------------------------------
        pla                                     ; AFF3 68                       h
        tax                                     ; AFF4 AA                       .
        sta     $51                             ; AFF5 85 51                    .Q
        ldy     #$00                            ; AFF7 A0 00                    ..
        lda     PlayerLocalX                    ; AFF9 A5 44                    .D
        cmp     #$0F                            ; AFFB C9 0F                    ..
        bcc     MapEventSystem_Entry_B001       ; AFFD 90 02                    ..
        ldy     #$01                            ; AFFF A0 01                    ..
MapEventSystem_Entry_B001:
        lda     $7066,y                         ; B001 B9 66 70                 .fp
        sta     $7060,x                         ; B004 9D 60 70                 .`p
        lda     $7086,y                         ; B007 B9 86 70                 ..p
        sta     $7080,x                         ; B00A 9D 80 70                 ..p
        sec                                     ; B00D 38                       8
        rts                                     ; B00E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B00F:
        lda     PlayerLocalY                    ; B00F A5 45                    .E
        cmp     #$10                            ; B011 C9 10                    ..
        bne     MapEventSystem_Branch_B03B      ; B013 D0 26                    .&
        lda     PlayerLocalX                    ; B015 A5 44                    .D
        cmp     #$0B                            ; B017 C9 0B                    ..
        bcc     MapEventSystem_Branch_B03B      ; B019 90 20                    .
        cmp     #$0F                            ; B01B C9 0F                    ..
        bcs     MapEventSystem_Branch_B03B      ; B01D B0 1C                    ..
        ldy     #$04                            ; B01F A0 04                    ..
        ldx     #$06                            ; B021 A2 06                    ..
        jsr     MapEventSystem_Entry_B001       ; B023 20 01 B0                  ..
        ldy     #$05                            ; B026 A0 05                    ..
        ldx     #$07                            ; B028 A2 07                    ..
        jsr     MapEventSystem_Entry_B001       ; B02A 20 01 B0                  ..
        ldy     #$06                            ; B02D A0 06                    ..
        ldx     #$08                            ; B02F A2 08                    ..
        jsr     MapEventSystem_Entry_B001       ; B031 20 01 B0                  ..
        lda     #$8F                            ; B034 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; B036 20 3A A2                  :.
        sec                                     ; B039 38                       8
        rts                                     ; B03A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B03B:
        clc                                     ; B03B 18                       .
        rts                                     ; B03C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B03D:
        jsr     MapEventSystem_Entry_995E       ; B03D 20 5E 99                  ^.
        brk                                     ; B040 00                       .
        db   $E8,$3B                         ; B041 E8 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; B043 20 18 D2                  ..
        lda     #$0D                            ; B046 A9 0D                    ..
        brk                                     ; B048 00                       .
        db   $01,$8F                         ; B049 01 8F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B04B 00                       .
        db   $1F,$EF                         ; B04C 1F EF                    ..
; ----------------------------------------------------------------------------
        lda     #$80                            ; B04E A9 80                    ..
        ldx     #$02                            ; B050 A2 02                    ..
        jsr     MapEventSystem_Entry_9963       ; B052 20 63 99                  c.
        ldx     #$00                            ; B055 A2 00                    ..
        jsr     MapEventSystem_Entry_9963       ; B057 20 63 99                  c.
        ldx     #$01                            ; B05A A2 01                    ..
        jsr     MapEventSystem_Entry_9963       ; B05C 20 63 99                  c.
        brk                                     ; B05F 00                       .
        db   $03,$EF                         ; B060 03 EF                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; B062 20 BF C5                  ..
        lda     #$1E                            ; B065 A9 1E                    ..
        sta     $51                             ; B067 85 51                    .Q
        lda     #$00                            ; B069 A9 00                    ..
        sta     $0530                           ; B06B 8D 30 05                 .0.
        brk                                     ; B06E 00                       .
        db   $18,$CB,$04                     ; B06F 18 CB 04                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B072 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B073:
        lda     #$01                            ; B073 A9 01                    ..
        sta     $0515                           ; B075 8D 15 05                 ...
        jsr     UpperFixedEngine_Entry_C5C5     ; B078 20 C5 C5                  ..
        brk                                     ; B07B 00                       .
        db   $3E,$EF                         ; B07C 3E EF                    >.
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_995E       ; B07E 20 5E 99                  ^.
        brk                                     ; B081 00                       .
        db   $C6,$3B                         ; B082 C6 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; B084 20 0A D2                  ..
        lda     #$00                            ; B087 A9 00                    ..
        sta     $0530                           ; B089 8D 30 05                 .0.
        jmp     MapEventSystem_Branch_B624      ; B08C 4C 24 B6                 L$.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B08F:
        lda     $6FA0                           ; B08F AD A0 6F                 ..o
        cmp     #$1A                            ; B092 C9 1A                    ..
        bne     MapEventSystem_Branch_B0CC      ; B094 D0 36                    .6
        lda     $6FC0                           ; B096 AD C0 6F                 ..o
        cmp     #$0F                            ; B099 C9 0F                    ..
        bne     MapEventSystem_Branch_B0CC      ; B09B D0 2F                    ./
        lda     $3E                             ; B09D A5 3E                    .>
        beq     MapEventSystem_Branch_B0C5      ; B09F F0 24                    .$
        ldx     #$05                            ; B0A1 A2 05                    ..
MapEventSystem_Branch_B0A3:
        lda     $7000,x                         ; B0A3 BD 00 70                 ..p
        and     #$7F                            ; B0A6 29 7F                    ).
        sta     $7000,x                         ; B0A8 9D 00 70                 ..p
        lda     $6FA0,x                         ; B0AB BD A0 6F                 ..o
        sta     $6F60,x                         ; B0AE 9D 60 6F                 .`o
        lda     $6FC0,x                         ; B0B1 BD C0 6F                 ..o
        sta     $6F80,x                         ; B0B4 9D 80 6F                 ..o
        dex                                     ; B0B7 CA                       .
        bpl     MapEventSystem_Branch_B0A3      ; B0B8 10 E9                    ..
        sta     PlayerLocalY                    ; B0BA 85 45                    .E
        lda     $6F60                           ; B0BC AD 60 6F                 .`o
        sta     PlayerLocalX                    ; B0BF 85 44                    .D
        lda     #$00                            ; B0C1 A9 00                    ..
        sta     $3E                             ; B0C3 85 3E                    .>
MapEventSystem_Branch_B0C5:
        lda     #$12                            ; B0C5 A9 12                    ..
        brk                                     ; B0C7 00                       .
        db   $07,$CF                         ; B0C8 07 CF                    ..
; ----------------------------------------------------------------------------
        sec                                     ; B0CA 38                       8
        rts                                     ; B0CB 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B0CC:
        clc                                     ; B0CC 18                       .
        rts                                     ; B0CD 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B0CE:
        brk                                     ; B0CE 00                       .
        db   $13,$EB,$08                     ; B0CF 13 EB 08                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_B0F4      ; B0D2 D0 20                    .
        brk                                     ; B0D4 00                       .
        db   $13,$EB,$10                     ; B0D5 13 EB 10                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_B0F4      ; B0D8 F0 1A                    ..
        lda     $3E                             ; B0DA A5 3E                    .>
        beq     MapEventSystem_Branch_B0F4      ; B0DC F0 16                    ..
        brk                                     ; B0DE 00                       .
        db   $13,$DB,$EF                     ; B0DF 13 DB EF                 ...
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_B16B       ; B0E2 20 6B B1                  k.
        lda     $51                             ; B0E5 A5 51                    .Q
        pha                                     ; B0E7 48                       H
        jsr     MapEventSystem_Entry_995E       ; B0E8 20 5E 99                  ^.
        brk                                     ; B0EB 00                       .
        db   $2E,$4B                         ; B0EC 2E 4B                    .K
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; B0EE 20 0A D2                  ..
        pla                                     ; B0F1 68                       h
        sta     $51                             ; B0F2 85 51                    .Q
MapEventSystem_Branch_B0F4:
        clc                                     ; B0F4 18                       .
        rts                                     ; B0F5 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B0F6:
        brk                                     ; B0F6 00                       .
        db   $16,$EB                         ; B0F7 16 EB                    ..
; ----------------------------------------------------------------------------
        php                                     ; B0F9 08                       .
        bne     MapEventSystem_Branch_B169      ; B0FA D0 6D                    .m
        lda     $6FA0                           ; B0FC AD A0 6F                 ..o
        cmp     #$12                            ; B0FF C9 12                    ..
        bne     MapEventSystem_Branch_B169      ; B101 D0 66                    .f
        lda     $6FC0                           ; B103 AD C0 6F                 ..o
        cmp     #$04                            ; B106 C9 04                    ..
        bne     MapEventSystem_Branch_B169      ; B108 D0 5F                    ._
        jsr     MapEventSystem_Entry_B16B       ; B10A 20 6B B1                  k.
        lda     $51                             ; B10D A5 51                    .Q
        pha                                     ; B10F 48                       H
        tax                                     ; B110 AA                       .
        lda     $7000,x                         ; B111 BD 00 70                 ..p
        and     #$FC                            ; B114 29 FC                    ).
        sta     $7000,x                         ; B116 9D 00 70                 ..p
        ldx     #$03                            ; B119 A2 03                    ..
        lda     $7006,x                         ; B11B BD 06 70                 ..p
        and     #$FC                            ; B11E 29 FC                    ).
        sta     $7006,x                         ; B120 9D 06 70                 ..p
        jsr     MapEventSystem_Entry_995E       ; B123 20 5E 99                  ^.
        brk                                     ; B126 00                       .
        db   $17,$EB,$10                     ; B127 17 EB 10                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_B158      ; B12A F0 2C                    .,
        brk                                     ; B12C 00                       .
        db   $62,$23,$40                     ; B12D 62 23 40                 b#@
; ----------------------------------------------------------------------------
        cmp     #$02                            ; B130 C9 02                    ..
        bcs     MapEventSystem_Branch_B158      ; B132 B0 24                    .$
        ldx     #$00                            ; B134 A2 00                    ..
        brk                                     ; B136 00                       .
        db   $2B,$73                         ; B137 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$04                            ; B139 C9 04                    ..
        bne     MapEventSystem_Branch_B158      ; B13B D0 1B                    ..
        brk                                     ; B13D 00                       .
        db   $66,$93,$7B                     ; B13E 66 93 7B                 f.{
; ----------------------------------------------------------------------------
        bcs     MapEventSystem_Branch_B14C      ; B141 B0 09                    ..
        brk                                     ; B143 00                       .
        db   $59,$4B                         ; B144 59 4B                    YK
; ----------------------------------------------------------------------------
        brk                                     ; B146 00                       .
        db   $5A,$4B                         ; B147 5A 4B                    ZK
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_B15E      ; B149 4C 5E B1                 L^.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B14C:
        brk                                     ; B14C 00                       .
        db   $59,$4B                         ; B14D 59 4B                    YK
; ----------------------------------------------------------------------------
        brk                                     ; B14F 00                       .
        db   $5B,$4B                         ; B150 5B 4B                    [K
; ----------------------------------------------------------------------------
        brk                                     ; B152 00                       .
        db   $EE,$3B                         ; B153 EE 3B                    .;
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_B15E      ; B155 4C 5E B1                 L^.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B158:
        brk                                     ; B158 00                       .
        db   $ED,$3B                         ; B159 ED 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; B15B 00                       .
        db   $EE,$3B                         ; B15C EE 3B                    .;
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B15E:
        pla                                     ; B15E 68                       h
        pha                                     ; B15F 48                       H
        tax                                     ; B160 AA                       .
        jsr     UpperFixedEngine_Entry_D20A     ; B161 20 0A D2                  ..
        pla                                     ; B164 68                       h
        sta     $51                             ; B165 85 51                    .Q
        sec                                     ; B167 38                       8
        rts                                     ; B168 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B169:
        clc                                     ; B169 18                       .
        rts                                     ; B16A 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B16B:
        jsr     MapEventSystem_Entry_A509       ; B16B 20 09 A5                  ..
        ldx     #$05                            ; B16E A2 05                    ..
MapEventSystem_Branch_B170:
        lda     $7020,x                         ; B170 BD 20 70                 . p
        bmi     MapEventSystem_Branch_B181      ; B173 30 0C                    0.
        lda     $6FA0,x                         ; B175 BD A0 6F                 ..o
        sta     $6F60,x                         ; B178 9D 60 6F                 .`o
        lda     $6FC0,x                         ; B17B BD C0 6F                 ..o
        sta     $6F80,x                         ; B17E 9D 80 6F                 ..o
MapEventSystem_Branch_B181:
        lda     $7000,x                         ; B181 BD 00 70                 ..p
        and     #$7F                            ; B184 29 7F                    ).
        sta     $7000,x                         ; B186 9D 00 70                 ..p
        dex                                     ; B189 CA                       .
        bpl     MapEventSystem_Branch_B170      ; B18A 10 E4                    ..
        rts                                     ; B18C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B18D:
        lda     $6F60                           ; B18D AD 60 6F                 .`o
        cmp     #$12                            ; B190 C9 12                    ..
        bne     MapEventSystem_Branch_B1AA      ; B192 D0 16                    ..
        lda     $6F80                           ; B194 AD 80 6F                 ..o
        cmp     #$03                            ; B197 C9 03                    ..
        bne     MapEventSystem_Branch_B1AA      ; B199 D0 0F                    ..
        brk                                     ; B19B 00                       .
        db   $17,$EB,$04                     ; B19C 17 EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_B1AA      ; B19F F0 09                    ..
        lda     $3D                             ; B1A1 A5 3D                    .=
        bne     MapEventSystem_Branch_B1AA      ; B1A3 D0 05                    ..
        lda     #$8F                            ; B1A5 A9 8F                    ..
        jmp     MapEventSystem_Entry_A23A       ; B1A7 4C 3A A2                 L:.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B1AA:
        clc                                     ; B1AA 18                       .
        rts                                     ; B1AB 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B1AC:
        lda     $51                             ; B1AC A5 51                    .Q
        pha                                     ; B1AE 48                       H
        lda     $7000                           ; B1AF AD 00 70                 ..p
        ora     #$01                            ; B1B2 09 01                    ..
        sta     $7000                           ; B1B4 8D 00 70                 ..p
        lda     #$01                            ; B1B7 A9 01                    ..
        sta     $3D                             ; B1B9 85 3D                    .=
        jsr     MapEventSystem_Entry_995E       ; B1BB 20 5E 99                  ^.
        brk                                     ; B1BE 00                       .
        db   $0B,$EF                         ; B1BF 0B EF                    ..
; ----------------------------------------------------------------------------
        sta     $F9                             ; B1C1 85 F9                    ..
        brk                                     ; B1C3 00                       .
        db   $F0,$3B                         ; B1C4 F0 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; B1C6 00                       .
        db   $F1,$3B                         ; B1C7 F1 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; B1C9 20 0A D2                  ..
        lda     #$00                            ; B1CC A9 00                    ..
        sta     $0530                           ; B1CE 8D 30 05                 .0.
        brk                                     ; B1D1 00                       .
        db   $19,$CB                         ; B1D2 19 CB                    ..
; ----------------------------------------------------------------------------
        jsr     $8568                           ; B1D4 20 68 85                  h.
        eor     ($38),y                         ; B1D7 51 38                    Q8
        rts                                     ; B1D9 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B1DA:
        lda     PlayerLocalY                    ; B1DA A5 45                    .E
        and     #$FE                            ; B1DC 29 FE                    ).
        cmp     #$0C                            ; B1DE C9 0C                    ..
        bne     MapEventSystem_Branch_B1FF      ; B1E0 D0 1D                    ..
        lda     PlayerLocalX                    ; B1E2 A5 44                    .D
        cmp     #$10                            ; B1E4 C9 10                    ..
        beq     MapEventSystem_Branch_B1EC      ; B1E6 F0 04                    ..
        cmp     #$18                            ; B1E8 C9 18                    ..
        bne     MapEventSystem_Branch_B1FF      ; B1EA D0 13                    ..
MapEventSystem_Branch_B1EC:
        lda     #$11                            ; B1EC A9 11                    ..
        ldx     #$03                            ; B1EE A2 03                    ..
        sta     $7046,x                         ; B1F0 9D 46 70                 .Fp
        ldx     #$02                            ; B1F3 A2 02                    ..
        sta     $7046,x                         ; B1F5 9D 46 70                 .Fp
        lda     #$8F                            ; B1F8 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; B1FA 20 3A A2                  :.
        sec                                     ; B1FD 38                       8
        rts                                     ; B1FE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B1FF:
        clc                                     ; B1FF 18                       .
        rts                                     ; B200 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B201:
        brk                                     ; B201 00                       .
        db   $0E,$EB,$10                     ; B202 0E EB 10                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_B221      ; B205 D0 1A                    ..
        ldx     #$00                            ; B207 A2 00                    ..
MapEventSystem_Branch_B209:
        lda     $B27F,x                         ; B209 BD 7F B2                 ...
        cmp     PlayerLocalX                    ; B20C C5 44                    .D
        bne     MapEventSystem_Branch_B217      ; B20E D0 07                    ..
        lda     $B280,x                         ; B210 BD 80 B2                 ...
        cmp     PlayerLocalY                    ; B213 C5 45                    .E
        beq     MapEventSystem_Branch_B223      ; B215 F0 0C                    ..
MapEventSystem_Branch_B217:
        inx                                     ; B217 E8                       .
        inx                                     ; B218 E8                       .
        cpx     #$06                            ; B219 E0 06                    ..
        bcc     MapEventSystem_Branch_B209      ; B21B 90 EC                    ..
        brk                                     ; B21D 00                       .
        db   $0E,$DB,$EF                     ; B21E 0E DB EF                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B221:
        clc                                     ; B221 18                       .
        rts                                     ; B222 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B223:
        ldy     $51                             ; B223 A4 51                    .Q
        lda     $7000,y                         ; B225 B9 00 70                 ..p
        and     #$FC                            ; B228 29 FC                    ).
        sta     $7000,y                         ; B22A 99 00 70                 ..p
        txa                                     ; B22D 8A                       .
        lsr     a                               ; B22E 4A                       J
        tax                                     ; B22F AA                       .
        inx                                     ; B230 E8                       .
        txa                                     ; B231 8A                       .
        pha                                     ; B232 48                       H
        ora     $7000,y                         ; B233 19 00 70                 ..p
        sta     $7000,y                         ; B236 99 00 70                 ..p
        brk                                     ; B239 00                       .
        db   $0E,$CB,$10                     ; B23A 0E CB 10                 ...
; ----------------------------------------------------------------------------
        lda     #$00                            ; B23D A9 00                    ..
        brk                                     ; B23F 00                       .
        db   $63,$63,$43                     ; B240 63 63 43                 ccC
; ----------------------------------------------------------------------------
        pla                                     ; B243 68                       h
        ldx     #$04                            ; B244 A2 04                    ..
        ldy     #$01                            ; B246 A0 01                    ..
        bcc     MapEventSystem_Branch_B273      ; B248 90 29                    .)
        tax                                     ; B24A AA                       .
        lda     #$02                            ; B24B A9 02                    ..
        sta     $0563                           ; B24D 8D 63 05                 .c.
        and     #$0F                            ; B250 29 0F                    ).
        ora     #$80                            ; B252 09 80                    ..
        sta     $0530                           ; B254 8D 30 05                 .0.
        lda     $B284,x                         ; B257 BD 84 B2                 ...
        sta     $0564                           ; B25A 8D 64 05                 .d.
        lda     #$02                            ; B25D A9 02                    ..
        sta     $0531                           ; B25F 8D 31 05                 .1.
        lda     $AEBD                           ; B262 AD BD AE                 ...
        sta     $0532                           ; B265 8D 32 05                 .2.
        lda     $AEBE                           ; B268 AD BE AE                 ...
        sta     $0533                           ; B26B 8D 33 05                 .3.
        ldx     #$04                            ; B26E A2 04                    ..
        ldy     #$02                            ; B270 A0 02                    ..
        sec                                     ; B272 38                       8
MapEventSystem_Branch_B273:
        sty     $0593                           ; B273 8C 93 05                 ...
        stx     $0594                           ; B276 8E 94 05                 ...
        lda     #$80                            ; B279 A9 80                    ..
        sta     $0527                           ; B27B 8D 27 05                 .'.
        rts                                     ; B27E 60                       `
; ----------------------------------------------------------------------------
        db   $15                             ; B27F 15                       .
        db   $0C,$14,$0D,$13                 ; B280 0C 14 0D 13              ....
        db   $0C,$42,$12,$82                 ; B284 0C 42 12 82              .B..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B288:
        lda     PlayerLocalX                    ; B288 A5 44                    .D
        cmp     #$05                            ; B28A C9 05                    ..
        bne     MapEventSystem_Branch_B294      ; B28C D0 06                    ..
        lda     PlayerLocalY                    ; B28E A5 45                    .E
        cmp     #$05                            ; B290 C9 05                    ..
        beq     MapEventSystem_Branch_B2A2      ; B292 F0 0E                    ..
MapEventSystem_Branch_B294:
        lda     PlayerLocalX                    ; B294 A5 44                    .D
        cmp     #$07                            ; B296 C9 07                    ..
        bne     MapEventSystem_Branch_B2A0      ; B298 D0 06                    ..
        lda     PlayerLocalY                    ; B29A A5 45                    .E
        cmp     #$03                            ; B29C C9 03                    ..
        beq     MapEventSystem_Branch_B2A2      ; B29E F0 02                    ..
MapEventSystem_Branch_B2A0:
        clc                                     ; B2A0 18                       .
        rts                                     ; B2A1 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B2A2:
        lda     $51                             ; B2A2 A5 51                    .Q
        pha                                     ; B2A4 48                       H
        jsr     MapEventSystem_Entry_B16B       ; B2A5 20 6B B1                  k.
        brk                                     ; B2A8 00                       .
        db   $07,$6F,$43                     ; B2A9 07 6F 43                 .oC
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B2AC:
        brk                                     ; B2AC 00                       .
        db   $62,$23,$40                     ; B2AD 62 23 40                 b#@
; ----------------------------------------------------------------------------
        tax                                     ; B2B0 AA                       .
        dex                                     ; B2B1 CA                       .
MapEventSystem_Branch_B2B2:
        lda     #$37                            ; B2B2 A9 37                    .7
        brk                                     ; B2B4 00                       .
        db   $31,$73                         ; B2B5 31 73                    1s
; ----------------------------------------------------------------------------
        bcs     MapEventSystem_Branch_B2C2      ; B2B7 B0 09                    ..
        dex                                     ; B2B9 CA                       .
        bpl     MapEventSystem_Branch_B2B2      ; B2BA 10 F6                    ..
        brk                                     ; B2BC 00                       .
        db   $AD,$4B                         ; B2BD AD 4B                    .K
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_B2C5      ; B2BF 4C C5 B2                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B2C2:
        brk                                     ; B2C2 00                       .
        db   $AE,$4B                         ; B2C3 AE 4B                    .K
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B2C5:
        jsr     UpperFixedEngine_Entry_D20A     ; B2C5 20 0A D2                  ..
        pla                                     ; B2C8 68                       h
        sta     $51                             ; B2C9 85 51                    .Q
        sec                                     ; B2CB 38                       8
        rts                                     ; B2CC 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B2CD:
        ldx     #$00                            ; B2CD A2 00                    ..
        lda     $3D                             ; B2CF A5 3D                    .=
        beq     MapEventSystem_Branch_B2D5      ; B2D1 F0 02                    ..
        ldx     #$03                            ; B2D3 A2 03                    ..
MapEventSystem_Branch_B2D5:
        ldy     $51                             ; B2D5 A4 51                    .Q
        lda     $B302,x                         ; B2D7 BD 02 B3                 ...
        sta     $71A0,y                         ; B2DA 99 A0 71                 ..q
        lda     $B303,x                         ; B2DD BD 03 B3                 ...
        sta     $71C0,y                         ; B2E0 99 C0 71                 ..q
        lda     $7000,y                         ; B2E3 B9 00 70                 ..p
        and     #$FC                            ; B2E6 29 FC                    ).
        ora     $B304,x                         ; B2E8 1D 04 B3                 ...
        sta     $7000,y                         ; B2EB 99 00 70                 ..p
        lda     #$80                            ; B2EE A9 80                    ..
        ldx     #$0B                            ; B2F0 A2 0B                    ..
        sta     $6F66,x                         ; B2F2 9D 66 6F                 .fo
        sta     $6FA6,x                         ; B2F5 9D A6 6F                 ..o
        ldx     #$02                            ; B2F8 A2 02                    ..
        sta     $6F66,x                         ; B2FA 9D 66 6F                 .fo
        sta     $6FA6,x                         ; B2FD 9D A6 6F                 ..o
        sec                                     ; B300 38                       8
        rts                                     ; B301 60                       `
; ----------------------------------------------------------------------------
        db   $11                             ; B302 11                       .
        db   $09                             ; B303 09                       .
        db   $01,$10,$0B,$02                 ; B304 01 10 0B 02              ....
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B308:
        lda     PlayerLocalX                    ; B308 A5 44                    .D
        cmp     #$11                            ; B30A C9 11                    ..
        bne     MapEventSystem_Branch_B335      ; B30C D0 27                    .'
        lda     PlayerLocalY                    ; B30E A5 45                    .E
        cmp     #$09                            ; B310 C9 09                    ..
        beq     MapEventSystem_Branch_B318      ; B312 F0 04                    ..
        cmp     #$0B                            ; B314 C9 0B                    ..
        bne     MapEventSystem_Branch_B335      ; B316 D0 1D                    ..
MapEventSystem_Branch_B318:
        ldx     #$0D                            ; B318 A2 0D                    ..
        lda     #$11                            ; B31A A9 11                    ..
        sta     $7046,x                         ; B31C 9D 46 70                 .Fp
        ldx     #$0E                            ; B31F A2 0E                    ..
        sta     $7046,x                         ; B321 9D 46 70                 .Fp
        lda     #$12                            ; B324 A9 12                    ..
        sta     $71A6,x                         ; B326 9D A6 71                 ..q
        lda     PlayerLocalY                    ; B329 A5 45                    .E
        sta     $71C6,x                         ; B32B 9D C6 71                 ..q
        lda     #$8F                            ; B32E A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; B330 20 3A A2                  :.
        sec                                     ; B333 38                       8
        rts                                     ; B334 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B335:
        clc                                     ; B335 18                       .
        rts                                     ; B336 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B337:
        lda     PlayerLocalY                    ; B337 A5 45                    .E
        sec                                     ; B339 38                       8
        sbc     #$09                            ; B33A E9 09                    ..
        tax                                     ; B33C AA                       .
        lda     $B363,x                         ; B33D BD 63 B3                 .c.
        sta     $0563                           ; B340 8D 63 05                 .c.
        and     #$0F                            ; B343 29 0F                    ).
        ora     #$80                            ; B345 09 80                    ..
        sta     $0530                           ; B347 8D 30 05                 .0.
        lda     $B364,x                         ; B34A BD 64 B3                 .d.
        sta     $0564                           ; B34D 8D 64 05                 .d.
        lda     #$02                            ; B350 A9 02                    ..
        sta     $0531                           ; B352 8D 31 05                 .1.
        lda     $AEBD                           ; B355 AD BD AE                 ...
        sta     $0532                           ; B358 8D 32 05                 .2.
        lda     $AEBE                           ; B35B AD BE AE                 ...
        sta     $0533                           ; B35E 8D 33 05                 .3.
        sec                                     ; B361 38                       8
        rts                                     ; B362 60                       `
; ----------------------------------------------------------------------------
        db   $82                             ; B363 82                       .
        db   $81,$82,$12                     ; B364 81 82 12                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B367:
        lda     $7831                           ; B367 AD 31 78                 .1x
        cmp     #$27                            ; B36A C9 27                    .'
        bne     MapEventSystem_Branch_B375      ; B36C D0 07                    ..
        ldx     $51                             ; B36E A6 51                    .Q
        lda     #$01                            ; B370 A9 01                    ..
        sta     $7180,x                         ; B372 9D 80 71                 ..q
MapEventSystem_Branch_B375:
        sec                                     ; B375 38                       8
        rts                                     ; B376 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B377:
        lda     #$FF                            ; B377 A9 FF                    ..
        sta     $6C0C                           ; B379 8D 0C 6C                 ..l
        brk                                     ; B37C 00                       .
        db   $82,$FB                         ; B37D 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; B37F 20 C5 C5                  ..
        lda     #$02                            ; B382 A9 02                    ..
        sta     CurrentSubmapNumber             ; B384 85 64                    .d
        lda     #$09                            ; B386 A9 09                    ..
        sta     PlayerLocalX                    ; B388 85 44                    .D
        lda     #$07                            ; B38A A9 07                    ..
        sta     PlayerLocalY                    ; B38C 85 45                    .E
        lda     #$00                            ; B38E A9 00                    ..
        brk                                     ; B390 00                       .
        db   $31,$EF                         ; B391 31 EF                    1.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; B393 20 BF C5                  ..
        brk                                     ; B396 00                       .
        db   $19,$5F                         ; B397 19 5F                    ._
; ----------------------------------------------------------------------------
        brk                                     ; B399 00                       .
        db   $82,$FB                         ; B39A 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; B39C 20 C5 C5                  ..
        brk                                     ; B39F 00                       .
        db   $6F,$33                         ; B3A0 6F 33                    o3
; ----------------------------------------------------------------------------
        brk                                     ; B3A2 00                       .
        db   $56,$33                         ; B3A3 56 33                    V3
; ----------------------------------------------------------------------------
        ldx     #$01                            ; B3A5 A2 01                    ..
MapEventSystem_Branch_B3A7:
        brk                                     ; B3A7 00                       .
        db   $2B,$73                         ; B3A8 2B 73                    +s
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_B3B0      ; B3AA F0 04                    ..
        cmp     #$08                            ; B3AC C9 08                    ..
        bcc     MapEventSystem_Branch_B3B4      ; B3AE 90 04                    ..
MapEventSystem_Branch_B3B0:
        inx                                     ; B3B0 E8                       .
        jmp     MapEventSystem_Branch_B3A7      ; B3B1 4C A7 B3                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B3B4:
        ora     #$80                            ; B3B4 09 80                    ..
        sta     $6299                           ; B3B6 8D 99 62                 ..b
        brk                                     ; B3B9 00                       .
        db   $42,$73                         ; B3BA 42 73                    Bs
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B3BC C9 01                    ..
        bne     MapEventSystem_Branch_B3C4      ; B3BE D0 04                    ..
        brk                                     ; B3C0 00                       .
        db   $1E,$CB                         ; B3C1 1E CB                    ..
; ----------------------------------------------------------------------------
        rti                                     ; B3C3 40                       @
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B3C4:
        stx     $F9                             ; B3C4 86 F9                    ..
        brk                                     ; B3C6 00                       .
        db   $4C,$4B                         ; B3C7 4C 4B                    LK
; ----------------------------------------------------------------------------
        ldx     #$03                            ; B3C9 A2 03                    ..
MapEventSystem_Branch_B3CB:
        lda     $0554,x                         ; B3CB BD 54 05                 .T.
        sta     $629C,x                         ; B3CE 9D 9C 62                 ..b
        dex                                     ; B3D1 CA                       .
        bpl     MapEventSystem_Branch_B3CB      ; B3D2 10 F7                    ..
        brk                                     ; B3D4 00                       .
        db   $05,$B7                         ; B3D5 05 B7                    ..
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_995E       ; B3D7 20 5E 99                  ^.
        jsr     MapEventSystem_Entry_B3E9       ; B3DA 20 E9 B3                  ..
        brk                                     ; B3DD 00                       .
        db   $40,$4B                         ; B3DE 40 4B                    @K
; ----------------------------------------------------------------------------
        brk                                     ; B3E0 00                       .
        db   $41,$4B                         ; B3E1 41 4B                    AK
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; B3E3 20 0A D2                  ..
        jmp     MapEventSystem_Branch_B624      ; B3E6 4C 24 B6                 L$.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B3E9:
        lda     #$40                            ; B3E9 A9 40                    .@
        sta     $055A                           ; B3EB 8D 5A 05                 .Z.
        lda     $62A7                           ; B3EE AD A7 62                 ..b
        sta     $0559                           ; B3F1 8D 59 05                 .Y.
        lda     $62A6                           ; B3F4 AD A6 62                 ..b
        sta     $0558                           ; B3F7 8D 58 05                 .X.
        ldx     #$03                            ; B3FA A2 03                    ..
MapEventSystem_Branch_B3FC:
        lda     $629C,x                         ; B3FC BD 9C 62                 ..b
        sta     $0554,x                         ; B3FF 9D 54 05                 .T.
        dex                                     ; B402 CA                       .
        bpl     MapEventSystem_Branch_B3FC      ; B403 10 F7                    ..
        rts                                     ; B405 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B406:
        lda     SaveTransformSteps              ; B406 AD 96 62                 ..b
        beq     MapEventSystem_Branch_B42A      ; B409 F0 1F                    ..
        lda     SaveTransformShape              ; B40B AD 97 62                 ..b
        bpl     MapEventSystem_Branch_B42A      ; B40E 10 1A                    ..
        lda     PlayerLocalX                    ; B410 A5 44                    .D
        sec                                     ; B412 38                       8
        sbc     #$03                            ; B413 E9 03                    ..
        cmp     #$09                            ; B415 C9 09                    ..
        bcs     MapEventSystem_Branch_B42A      ; B417 B0 11                    ..
        cmp     #$04                            ; B419 C9 04                    ..
        beq     MapEventSystem_Branch_B42A      ; B41B F0 0D                    ..
        and     #$01                            ; B41D 29 01                    ).
        bne     MapEventSystem_Branch_B42A      ; B41F D0 09                    ..
        lda     PlayerLocalY                    ; B421 A5 45                    .E
        sec                                     ; B423 38                       8
        sbc     #$12                            ; B424 E9 12                    ..
        cmp     #$04                            ; B426 C9 04                    ..
        bcc     MapEventSystem_Branch_B431      ; B428 90 07                    ..
MapEventSystem_Branch_B42A:
        ldx     $51                             ; B42A A6 51                    .Q
        lda     #$0F                            ; B42C A9 0F                    ..
        sta     $7180,x                         ; B42E 9D 80 71                 ..q
MapEventSystem_Branch_B431:
        sec                                     ; B431 38                       8
        rts                                     ; B432 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B433:
        lda     $51                             ; B433 A5 51                    .Q
        pha                                     ; B435 48                       H
        jsr     MapEventSystem_Entry_995E       ; B436 20 5E 99                  ^.
        brk                                     ; B439 00                       .
        db   $49,$4B                         ; B43A 49 4B                    IK
; ----------------------------------------------------------------------------
        ldy     #$10                            ; B43C A0 10                    ..
        brk                                     ; B43E 00                       .
        db   $03,$4F                         ; B43F 03 4F                    .O
; ----------------------------------------------------------------------------
        lda     #$21                            ; B441 A9 21                    .!
        brk                                     ; B443 00                       .
        db   $07,$CF                         ; B444 07 CF                    ..
; ----------------------------------------------------------------------------
        lda     #$11                            ; B446 A9 11                    ..
        ldx     #$02                            ; B448 A2 02                    ..
        sta     $7046,x                         ; B44A 9D 46 70                 .Fp
        ldx     #$03                            ; B44D A2 03                    ..
        sta     $7046,x                         ; B44F 9D 46 70                 .Fp
        ldx     #$04                            ; B452 A2 04                    ..
        sta     $7046,x                         ; B454 9D 46 70                 .Fp
        ldx     #$05                            ; B457 A2 05                    ..
        sta     $7046,x                         ; B459 9D 46 70                 .Fp
        ldx     #$06                            ; B45C A2 06                    ..
        sta     $7046,x                         ; B45E 9D 46 70                 .Fp
        pla                                     ; B461 68                       h
        sta     $51                             ; B462 85 51                    .Q
        tax                                     ; B464 AA                       .
        lda     #$80                            ; B465 A9 80                    ..
        sta     $6F60,x                         ; B467 9D 60 6F                 .`o
        sta     $6FA0,x                         ; B46A 9D A0 6F                 ..o
        sta     $6F80,x                         ; B46D 9D 80 6F                 ..o
        sta     $6FC0,x                         ; B470 9D C0 6F                 ..o
        brk                                     ; B473 00                       .
        db   $1A,$CB                         ; B474 1A CB                    ..
; ----------------------------------------------------------------------------
        ora     ($38,x)                         ; B476 01 38                    .8
        rts                                     ; B478 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B479:
        lda     $6FA0                           ; B479 AD A0 6F                 ..o
        cmp     #$06                            ; B47C C9 06                    ..
        bne     MapEventSystem_Branch_B48A      ; B47E D0 0A                    ..
        lda     $6FC0                           ; B480 AD C0 6F                 ..o
        cmp     #$07                            ; B483 C9 07                    ..
        bne     MapEventSystem_Branch_B48A      ; B485 D0 03                    ..
        jmp     MapEventSystem_Branch_AE46      ; B487 4C 46 AE                 LF.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B48A:
        clc                                     ; B48A 18                       .
        rts                                     ; B48B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B48C:
        lda     $3E                             ; B48C A5 3E                    .>
        beq     MapEventSystem_Branch_B4AF      ; B48E F0 1F                    ..
        jsr     MapEventSystem_Entry_B16B       ; B490 20 6B B1                  k.
        lda     #$8F                            ; B493 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; B495 20 3A A2                  :.
        inc     $0531                           ; B498 EE 31 05                 .1.
        inc     $0531                           ; B49B EE 31 05                 .1.
        inc     $0531                           ; B49E EE 31 05                 .1.
        lda     #$11                            ; B4A1 A9 11                    ..
        ldx     #$05                            ; B4A3 A2 05                    ..
        sta     $7046,x                         ; B4A5 9D 46 70                 .Fp
        ldx     #$06                            ; B4A8 A2 06                    ..
        sta     $7046,x                         ; B4AA 9D 46 70                 .Fp
        sec                                     ; B4AD 38                       8
        rts                                     ; B4AE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B4AF:
        clc                                     ; B4AF 18                       .
        rts                                     ; B4B0 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B4B1:
        lda     $3D                             ; B4B1 A5 3D                    .=
        bne     MapEventSystem_Branch_B4E1      ; B4B3 D0 2C                    .,
        lda     #$8F                            ; B4B5 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; B4B7 20 3A A2                  :.
        lda     #$00                            ; B4BA A9 00                    ..
        brk                                     ; B4BC 00                       .
        db   $26,$2F                         ; B4BD 26 2F                    &/
; ----------------------------------------------------------------------------
        bcc     MapEventSystem_Branch_B4F2      ; B4BF 90 31                    .1
        lda     #$94                            ; B4C1 A9 94                    ..
        jsr     MapEventSystem_Entry_B4E3       ; B4C3 20 E3 B4                  ..
        bcc     MapEventSystem_Branch_B4CD      ; B4C6 90 05                    ..
        lda     #$A1                            ; B4C8 A9 A1                    ..
        jsr     MapEventSystem_Entry_B4E7       ; B4CA 20 E7 B4                  ..
MapEventSystem_Branch_B4CD:
        lda     #$C4                            ; B4CD A9 C4                    ..
        jsr     MapEventSystem_Entry_B4E7       ; B4CF 20 E7 B4                  ..
        lda     #$B7                            ; B4D2 A9 B7                    ..
        jsr     MapEventSystem_Entry_B4E7       ; B4D4 20 E7 B4                  ..
        lda     #$CB                            ; B4D7 A9 CB                    ..
        jsr     MapEventSystem_Entry_B4E7       ; B4D9 20 E7 B4                  ..
        lda     #$00                            ; B4DC A9 00                    ..
        sta     $0530                           ; B4DE 8D 30 05                 .0.
MapEventSystem_Branch_B4E1:
        clc                                     ; B4E1 18                       .
        rts                                     ; B4E2 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B4E3:
        jsr     MapEventSystem_Entry_B4E7       ; B4E3 20 E7 B4                  ..
        rts                                     ; B4E6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B4E7:
        brk                                     ; B4E7 00                       .
        db   $31,$73                         ; B4E8 31 73                    1s
; ----------------------------------------------------------------------------
        bcc     MapEventSystem_Branch_B4F0      ; B4EA 90 04                    ..
        lda     $73                             ; B4EC A5 73                    .s
        bmi     MapEventSystem_Branch_B4F4      ; B4EE 30 04                    0.
MapEventSystem_Branch_B4F0:
        pla                                     ; B4F0 68                       h
        pla                                     ; B4F1 68                       h
MapEventSystem_Branch_B4F2:
        sec                                     ; B4F2 38                       8
        rts                                     ; B4F3 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B4F4:
        clc                                     ; B4F4 18                       .
        rts                                     ; B4F5 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B4F6:
        ldx     $51                             ; B4F6 A6 51                    .Q
        txa                                     ; B4F8 8A                       .
        pha                                     ; B4F9 48                       H
        lda     $6F60,x                         ; B4FA BD 60 6F                 .`o
        sec                                     ; B4FD 38                       8
        sbc     $6FA0                           ; B4FE ED A0 6F                 ..o
        clc                                     ; B501 18                       .
        adc     #$01                            ; B502 69 01                    i.
        cmp     #$03                            ; B504 C9 03                    ..
        bcs     MapEventSystem_Branch_B546      ; B506 B0 3E                    .>
        sta     $51                             ; B508 85 51                    .Q
        lda     $6F80,x                         ; B50A BD 80 6F                 ..o
        sec                                     ; B50D 38                       8
        sbc     $6FC0                           ; B50E ED C0 6F                 ..o
        clc                                     ; B511 18                       .
        adc     #$01                            ; B512 69 01                    i.
        cmp     #$03                            ; B514 C9 03                    ..
        bcs     MapEventSystem_Branch_B546      ; B516 B0 2E                    ..
        adc     $51                             ; B518 65 51                    eQ
        and     #$01                            ; B51A 29 01                    ).
        beq     MapEventSystem_Branch_B546      ; B51C F0 28                    .(
        pla                                     ; B51E 68                       h
        jsr     MapEventSystem_Entry_B16B       ; B51F 20 6B B1                  k.
        brk                                     ; B522 00                       .
        db   $07,$6F,$43                     ; B523 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; B526 00                       .
        db   $CB,$4B                         ; B527 CB 4B                    .K
; ----------------------------------------------------------------------------
        brk                                     ; B529 00                       .
        db   $82,$FB                         ; B52A 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; B52C 20 C5 C5                  ..
        lda     #$00                            ; B52F A9 00                    ..
        sta     CurrentSubmapNumber             ; B531 85 64                    .d
        lda     #$0B                            ; B533 A9 0B                    ..
        sta     PlayerLocalX                    ; B535 85 44                    .D
        lda     #$15                            ; B537 A9 15                    ..
        sta     PlayerLocalY                    ; B539 85 45                    .E
        lda     #$81                            ; B53B A9 81                    ..
        brk                                     ; B53D 00                       .
        db   $31,$EF                         ; B53E 31 EF                    1.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; B540 20 BF C5                  ..
        jmp     MapEventSystem_Branch_B624      ; B543 4C 24 B6                 L$.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B546:
        pla                                     ; B546 68                       h
        sta     $51                             ; B547 85 51                    .Q
        lda     $3E                             ; B549 A5 3E                    .>
        cmp     #$10                            ; B54B C9 10                    ..
        rts                                     ; B54D 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B54E:
        lda     $629B                           ; B54E AD 9B 62                 ..b
        and     #$22                            ; B551 29 22                    )"
        cmp     #$20                            ; B553 C9 20                    .
        bne     MapEventSystem_Branch_B56B      ; B555 D0 14                    ..
        brk                                     ; B557 00                       .
        db   $62,$23,$40                     ; B558 62 23 40                 b#@
; ----------------------------------------------------------------------------
        sta     $00                             ; B55B 85 00                    ..
        ldx     #$00                            ; B55D A2 00                    ..
MapEventSystem_Branch_B55F:
        brk                                     ; B55F 00                       .
        db   $2B,$73                         ; B560 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$0E                            ; B562 C9 0E                    ..
        beq     MapEventSystem_Branch_B56D      ; B564 F0 07                    ..
        inx                                     ; B566 E8                       .
        cpx     $00                             ; B567 E4 00                    ..
        bcc     MapEventSystem_Branch_B55F      ; B569 90 F4                    ..
MapEventSystem_Branch_B56B:
        clc                                     ; B56B 18                       .
        rts                                     ; B56C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B56D:
        lda     $51                             ; B56D A5 51                    .Q
        pha                                     ; B56F 48                       H
        txa                                     ; B570 8A                       .
        pha                                     ; B571 48                       H
        jsr     MapEventSystem_Entry_B16B       ; B572 20 6B B1                  k.
        pla                                     ; B575 68                       h
        pha                                     ; B576 48                       H
        tax                                     ; B577 AA                       .
        lda     $6BE7,x                         ; B578 BD E7 6B                 ..k
        and     #$40                            ; B57B 29 40                    )@
        beq     MapEventSystem_Branch_B593      ; B57D F0 14                    ..
        brk                                     ; B57F 00                       .
        db   $44,$93,$07                     ; B580 44 93 07                 D..
; ----------------------------------------------------------------------------
        brk                                     ; B583 00                       .
        db   $05,$33                         ; B584 05 33                    .3
; ----------------------------------------------------------------------------
        brk                                     ; B586 00                       .
        db   $07,$6F,$43                     ; B587 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; B58A 00                       .
        db   $3B,$EF                         ; B58B 3B EF                    ;.
; ----------------------------------------------------------------------------
        brk                                     ; B58D 00                       .
        db   $62,$4B                         ; B58E 62 4B                    bK
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_B597      ; B590 4C 97 B5                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B593:
        brk                                     ; B593 00                       .
        db   $07,$6F,$43                     ; B594 07 6F 43                 .oC
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B597:
        brk                                     ; B597 00                       .
        db   $63,$4B                         ; B598 63 4B                    cK
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D214     ; B59A 20 14 D2                  ..
        pla                                     ; B59D 68                       h
        tax                                     ; B59E AA                       .
        lda     #$FF                            ; B59F A9 FF                    ..
        brk                                     ; B5A1 00                       .
        db   $51,$73                         ; B5A2 51 73                    Qs
; ----------------------------------------------------------------------------
        lda     $053A,x                         ; B5A4 BD 3A 05                 .:.
        tax                                     ; B5A7 AA                       .
        ldy     #$02                            ; B5A8 A0 02                    ..
        lda     $6F60,x                         ; B5AA BD 60 6F                 .`o
        sta     $6F66,y                         ; B5AD 99 66 6F                 .fo
        sta     $6FA6,y                         ; B5B0 99 A6 6F                 ..o
        lda     $6F80,x                         ; B5B3 BD 80 6F                 ..o
        sta     $6F86,y                         ; B5B6 99 86 6F                 ..o
        sta     $6FC6,y                         ; B5B9 99 C6 6F                 ..o
        lda     #$80                            ; B5BC A9 80                    ..
        sta     $7020,x                         ; B5BE 9D 20 70                 . p
        brk                                     ; B5C1 00                       .
        db   $20,$CB,$02                     ; B5C2 20 CB 02                  ..
; ----------------------------------------------------------------------------
        lda     #$85                            ; B5C5 A9 85                    ..
        jsr     MapEventSystem_Entry_A23A       ; B5C7 20 3A A2                  :.
        brk                                     ; B5CA 00                       .
        db   $3B,$EF                         ; B5CB 3B EF                    ;.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D1F3     ; B5CD 20 F3 D1                  ..
        pla                                     ; B5D0 68                       h
        sta     $51                             ; B5D1 85 51                    .Q
        sec                                     ; B5D3 38                       8
        rts                                     ; B5D4 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B5D5:
        lda     $51                             ; B5D5 A5 51                    .Q
        pha                                     ; B5D7 48                       H
        lda     #$2A                            ; B5D8 A9 2A                    .*
        brk                                     ; B5DA 00                       .
        db   $07,$CF                         ; B5DB 07 CF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B5DD 68                       h
        sta     $51                             ; B5DE 85 51                    .Q
        clc                                     ; B5E0 18                       .
        rts                                     ; B5E1 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B5E2:
        lda     PlayerLocalY                    ; B5E2 A5 45                    .E
        cmp     #$04                            ; B5E4 C9 04                    ..
        bne     MapEventSystem_Branch_B5F7      ; B5E6 D0 0F                    ..
        lda     PlayerLocalX                    ; B5E8 A5 44                    .D
        and     #$FE                            ; B5EA 29 FE                    ).
        cmp     #$14                            ; B5EC C9 14                    ..
        bne     MapEventSystem_Branch_B5F7      ; B5EE D0 07                    ..
        lda     #$8F                            ; B5F0 A9 8F                    ..
        jsr     MapEventSystem_Entry_A23A       ; B5F2 20 3A A2                  :.
        sec                                     ; B5F5 38                       8
        rts                                     ; B5F6 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B5F7:
        clc                                     ; B5F7 18                       .
        rts                                     ; B5F8 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B5F9:
        lda     PlayerLocalX                    ; B5F9 A5 44                    .D
        cmp     #$07                            ; B5FB C9 07                    ..
        bne     MapEventSystem_Branch_B60C      ; B5FD D0 0D                    ..
        lda     PlayerLocalY                    ; B5FF A5 45                    .E
        cmp     #$07                            ; B601 C9 07                    ..
        bne     MapEventSystem_Branch_B60C      ; B603 D0 07                    ..
        lda     #$84                            ; B605 A9 84                    ..
        jsr     MapEventSystem_Entry_A23A       ; B607 20 3A A2                  :.
        sec                                     ; B60A 38                       8
        rts                                     ; B60B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B60C:
        clc                                     ; B60C 18                       .
        rts                                     ; B60D 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B60E:
        lda     #$2B                            ; B60E A9 2B                    .+
        brk                                     ; B610 00                       .
        db   $07,$CF                         ; B611 07 CF                    ..
; ----------------------------------------------------------------------------
        jmp     MapEventSystem_Branch_B624      ; B613 4C 24 B6                 L$.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B616:
        jsr     MapEventSystem_Entry_B95C       ; B616 20 5C B9                  \.
        lda     #$06                            ; B619 A9 06                    ..
        sta     $51                             ; B61B 85 51                    .Q
        clc                                     ; B61D 18                       .
        rts                                     ; B61E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B61F:
        jsr     UpperFixedEngine_Entry_FDFB     ; B61F 20 FB FD                  ..
        clc                                     ; B622 18                       .
        rts                                     ; B623 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B624:
        lda     #$1E                            ; B624 A9 1E                    ..
        sta     $51                             ; B626 85 51                    .Q
        clc                                     ; B628 18                       .
        rts                                     ; B629 60                       `
; ----------------------------------------------------------------------------
Bank1D_MapEventHandlerPointers:
        db   $70                             ; B62A 70                       p
        db   $99,$A5,$99,$D0,$99,$DA,$99,$E1 ; B62B 99 A5 99 D0 99 DA 99 E1  ........
        db   $99,$F1,$99,$C5,$9A,$2F,$9B,$36 ; B633 99 F1 99 C5 9A 2F 9B 36  ...../.6
        db   $9B,$3D,$9B,$42,$9B,$64,$9B,$77 ; B63B 9B 3D 9B 42 9B 64 9B 77  .=.B.d.w
        db   $9B,$81,$9B,$83,$9B,$93,$9B,$A3 ; B643 9B 81 9B 83 9B 93 9B A3  ........
        db   $9B,$CE,$9B,$D3,$9B,$F7,$9B,$07 ; B64B 9B CE 9B D3 9B F7 9B 07  ........
        db   $9C,$26,$9C,$52,$9C,$B7,$9C,$DD ; B653 9C 26 9C 52 9C B7 9C DD  .&.R....
        db   $9C,$F9,$9F,$4E,$A0,$5D,$A0,$97 ; B65B 9C F9 9F 4E A0 5D A0 97  ...N.]..
        db   $A0,$B3,$A0,$C8,$A0,$64,$A1,$8C ; B663 A0 B3 A0 C8 A0 64 A1 8C  .....d..
        db   $A1,$F5,$A1,$FD,$A1,$04,$A2,$13 ; B66B A1 F5 A1 FD A1 04 A2 13  ........
        db   $A2,$4C,$A2,$7A,$A2,$0C,$A3,$21 ; B673 A2 4C A2 7A A2 0C A3 21  .L.z...!
        db   $A3,$43,$A3,$52,$A3,$67,$A3,$8E ; B67B A3 43 A3 52 A3 67 A3 8E  .C.R.g..
        db   $A3,$9D,$A3,$DA,$A3,$16,$A4,$43 ; B683 A3 9D A3 DA A3 16 A4 43  .......C
        db   $A4,$4D,$A4,$5B,$A4,$A8,$A4,$3E ; B68B A4 4D A4 5B A4 A8 A4 3E  .M.[...>
        db   $A5,$49,$A5,$88,$A5,$A7,$A5,$4D ; B693 A5 49 A5 88 A5 A7 A5 4D  .I.....M
        db   $A6,$71,$A6,$D6,$A6,$DF,$A6,$EA ; B69B A6 71 A6 D6 A6 DF A6 EA  .q......
        db   $A6,$24,$A7,$32,$A7,$65,$A7,$B1 ; B6A3 A6 24 A7 32 A7 65 A7 B1  .$.2.e..
        db   $A7,$01,$A8,$17,$A8,$58,$A8,$93 ; B6AB A7 01 A8 17 A8 58 A8 93  .....X..
        db   $A8,$3B,$A9,$68,$A9,$A3,$A9,$C1 ; B6B3 A8 3B A9 68 A9 A3 A9 C1  .;.h....
        db   $A9,$CA,$A9,$D8,$A9,$2A,$AA,$4D ; B6BB A9 CA A9 D8 A9 2A AA 4D  .....*.M
        db   $AA,$72,$AA,$9F,$AA,$BF,$AA,$F6 ; B6C3 AA 72 AA 9F AA BF AA F6  .r......
        db   $AA,$98,$AB,$C8,$AB,$0B,$AC,$60 ; B6CB AA 98 AB C8 AB 0B AC 60  .......`
        db   $AC,$6A,$AC,$9A,$AC,$C8,$AC,$D2 ; B6D3 AC 6A AC 9A AC C8 AC D2  .j......
        db   $AC,$F5,$AC,$FF,$AC,$1A,$AD,$4C ; B6DB AC F5 AC FF AC 1A AD 4C  .......L
        db   $AD,$73,$AD,$9E,$AD,$31,$AE,$38 ; B6E3 AD 73 AD 9E AD 31 AE 38  .s...1.8
        db   $AE,$57,$AE,$BF,$AE,$D3,$AE,$DC ; B6EB AE 57 AE BF AE D3 AE DC  .W......
        db   $AE,$06,$AF,$50,$AF,$5C,$AF,$61 ; B6F3 AE 06 AF 50 AF 5C AF 61  ...P.\.a
        db   $AF,$85,$AF,$97,$AF,$B8,$AF,$CA ; B6FB AF 85 AF 97 AF B8 AF CA  ........
        db   $AF,$0F,$B0,$3D,$B0,$73,$B0,$8F ; B703 AF 0F B0 3D B0 73 B0 8F  ...=.s..
        db   $B0,$CE,$B0,$F6,$B0,$8D,$B1,$AC ; B70B B0 CE B0 F6 B0 8D B1 AC  ........
        db   $B1,$DA,$B1,$01,$B2,$88,$B2,$CD ; B713 B1 DA B1 01 B2 88 B2 CD  ........
        db   $B2,$08,$B3,$37,$B3,$67,$B3,$77 ; B71B B2 08 B3 37 B3 67 B3 77  ...7.g.w
        db   $B3,$06,$B4,$33,$B4,$79,$B4     ; B723 B3 06 B4 33 B4 79 B4     ...3.y.
Bank1D_MapEventHandlerPointersHigh:
        db   $8C                             ; B72A 8C                       .
        db   $B4,$B1,$B4,$F6,$B4,$4E,$B5,$D5 ; B72B B4 B1 B4 F6 B4 4E B5 D5  .....N..
        db   $B5,$E2,$B5,$F9,$B5,$0E,$B6,$16 ; B733 B5 E2 B5 F9 B5 0E B6 16  ........
        db   $B6,$1F,$B6                     ; B73B B6 1F B6                 ...
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B73E:
        ldy     #$00                            ; B73E A0 00                    ..
MapEventSystem_Branch_B740:
        lda     $B8BB,y                         ; B740 B9 BB B8                 ...
        cmp     #$FF                            ; B743 C9 FF                    ..
        beq     MapEventSystem_Branch_B77E      ; B745 F0 37                    .7
        cmp     CurrentMapNumber                ; B747 C5 63                    .c
        bne     MapEventSystem_Branch_B776      ; B749 D0 2B                    .+
        lda     $B8BE,y                         ; B74B B9 BE B8                 ...
        lsr     a                               ; B74E 4A                       J
        lsr     a                               ; B74F 4A                       J
        lsr     a                               ; B750 4A                       J
        lsr     a                               ; B751 4A                       J
        cmp     SaveCurrentChapterMinus1        ; B752 CD 5A 61                 .Za
        bne     MapEventSystem_Branch_B776      ; B755 D0 1F                    ..
        cpy     #$00                            ; B757 C0 00                    ..
        bne     MapEventSystem_Branch_B765      ; B759 D0 0A                    ..
        bit     $6281                           ; B75B 2C 81 62                 ,.b
        bvc     MapEventSystem_Branch_B76F      ; B75E 50 0F                    P.
        ldy     #$06                            ; B760 A0 06                    ..
        jmp     MapEventSystem_Branch_B76F      ; B762 4C 6F B7                 Lo.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B765:
        cpy     #$0C                            ; B765 C0 0C                    ..
        bne     MapEventSystem_Branch_B76F      ; B767 D0 06                    ..
        bit     $6281                           ; B769 2C 81 62                 ,.b
        bvs     MapEventSystem_Branch_B76F      ; B76C 70 01                    p.
        rts                                     ; B76E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B76F:
        lda     $B8BC,y                         ; B76F B9 BC B8                 ...
        cmp     CurrentSubmapNumber             ; B772 C5 64                    .d
        beq     MapEventSystem_Branch_B782      ; B774 F0 0C                    ..
MapEventSystem_Branch_B776:
        tya                                     ; B776 98                       .
        clc                                     ; B777 18                       .
        adc     #$06                            ; B778 69 06                    i.
        tay                                     ; B77A A8                       .
        jmp     MapEventSystem_Branch_B740      ; B77B 4C 40 B7                 L@.
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B77E:
        rts                                     ; B77E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B77F:
        jmp     MapEventSystem_Branch_B893      ; B77F 4C 93 B8                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B782:
        lda     $B8BD,y                         ; B782 B9 BD B8                 ...
        bmi     MapEventSystem_Branch_B77F      ; B785 30 F8                    0.
        brk                                     ; B787 00                       .
        db   $52,$73                         ; B788 52 73                    Rs
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B78A:
        cpy     #$12                            ; B78A C0 12                    ..
        bne     MapEventSystem_Branch_B7CD      ; B78C D0 3F                    .?
        lda     $6283                           ; B78E AD 83 62                 ..b
        and     #$20                            ; B791 29 20                    )
        beq     MapEventSystem_Branch_B77F      ; B793 F0 EA                    ..
        ldx     #$01                            ; B795 A2 01                    ..
        lda     #$3D                            ; B797 A9 3D                    .=
        brk                                     ; B799 00                       .
        db   $0D,$87                         ; B79A 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$03                            ; B79C A2 03                    ..
        lda     #$15                            ; B79E A9 15                    ..
        brk                                     ; B7A0 00                       .
        db   $0D,$87                         ; B7A1 0D 87                    ..
; ----------------------------------------------------------------------------
        lda     $7023                           ; B7A3 AD 23 70                 .#p
        and     #$7F                            ; B7A6 29 7F                    ).
        sta     $7023                           ; B7A8 8D 23 70                 .#p
        lda     $6F63                           ; B7AB AD 63 6F                 .co
        sta     $6FA3                           ; B7AE 8D A3 6F                 ..o
        lda     $6F83                           ; B7B1 AD 83 6F                 ..o
        sta     $6FC3                           ; B7B4 8D C3 6F                 ..o
        ldx     #$07                            ; B7B7 A2 07                    ..
MapEventSystem_Branch_B7B9:
        lda     $7020,x                         ; B7B9 BD 20 70                 . p
        ora     #$80                            ; B7BC 09 80                    ..
        sta     $7020,x                         ; B7BE 9D 20 70                 . p
        lda     #$80                            ; B7C1 A9 80                    ..
        sta     $6F60,x                         ; B7C3 9D 60 6F                 .`o
        sta     $6F80,x                         ; B7C6 9D 80 6F                 ..o
        brk                                     ; B7C9 00                       .
        db   $0A,$6F                         ; B7CA 0A 6F                    .o
; ----------------------------------------------------------------------------
        rts                                     ; B7CC 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B7CD:
        cpy     #$24                            ; B7CD C0 24                    .$
        bne     MapEventSystem_Branch_B7F5      ; B7CF D0 24                    .$
        ldy     #$19                            ; B7D1 A0 19                    ..
        lda     #$06                            ; B7D3 A9 06                    ..
MapEventSystem_Branch_B7D5:
        pha                                     ; B7D5 48                       H
        tya                                     ; B7D6 98                       .
        ldx     #$02                            ; B7D7 A2 02                    ..
        brk                                     ; B7D9 00                       .
        db   $0D,$87                         ; B7DA 0D 87                    ..
; ----------------------------------------------------------------------------
        lda     $7022                           ; B7DC AD 22 70                 ."p
        and     #$7F                            ; B7DF 29 7F                    ).
        sta     $7022                           ; B7E1 8D 22 70                 ."p
        lda     $6F62                           ; B7E4 AD 62 6F                 .bo
        sta     $6FA2                           ; B7E7 8D A2 6F                 ..o
        lda     $6F82                           ; B7EA AD 82 6F                 ..o
        sta     $6FC2                           ; B7ED 8D C2 6F                 ..o
        pla                                     ; B7F0 68                       h
        tax                                     ; B7F1 AA                       .
        jmp     MapEventSystem_Branch_B7B9      ; B7F2 4C B9 B7                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B7F5:
        cpy     #$2A                            ; B7F5 C0 2A                    .*
        bne     MapEventSystem_Branch_B81B      ; B7F7 D0 22                    ."
        brk                                     ; B7F9 00                       .
        db   $13,$EB,$80                     ; B7FA 13 EB 80                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_B814      ; B7FD D0 15                    ..
        brk                                     ; B7FF 00                       .
        db   $0B,$EB,$04                     ; B800 0B EB 04                 ...
; ----------------------------------------------------------------------------
        bne     MapEventSystem_Branch_B808      ; B803 D0 03                    ..
        jmp     MapEventSystem_Branch_B893      ; B805 4C 93 B8                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B808:
        lda     #$12                            ; B808 A9 12                    ..
        ldx     #$01                            ; B80A A2 01                    ..
        brk                                     ; B80C 00                       .
        db   $0D,$87                         ; B80D 0D 87                    ..
; ----------------------------------------------------------------------------
        ldy     #$24                            ; B80F A0 24                    .$
        jmp     MapEventSystem_Branch_B816      ; B811 4C 16 B8                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B814:
        ldy     #$12                            ; B814 A0 12                    ..
MapEventSystem_Branch_B816:
        lda     #$06                            ; B816 A9 06                    ..
        jmp     MapEventSystem_Branch_B7D5      ; B818 4C D5 B7                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B81B:
        cpy     #$30                            ; B81B C0 30                    .0
        bne     MapEventSystem_Branch_B82C      ; B81D D0 0D                    ..
        brk                                     ; B81F 00                       .
        db   $13,$EB,$40                     ; B820 13 EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     MapEventSystem_Branch_B893      ; B823 F0 6E                    .n
        ldy     #$11                            ; B825 A0 11                    ..
        lda     #$0D                            ; B827 A9 0D                    ..
        jmp     MapEventSystem_Branch_B7D5      ; B829 4C D5 B7                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B82C:
        cpy     #$36                            ; B82C C0 36                    .6
        bcc     MapEventSystem_Branch_B869      ; B82E 90 39                    .9
        tya                                     ; B830 98                       .
        pha                                     ; B831 48                       H
        brk                                     ; B832 00                       .
        db   $62,$33                         ; B833 62 33                    b3
; ----------------------------------------------------------------------------
        tax                                     ; B835 AA                       .
        dex                                     ; B836 CA                       .
        pla                                     ; B837 68                       h
        tay                                     ; B838 A8                       .
        cpx     #$01                            ; B839 E0 01                    ..
        beq     MapEventSystem_Branch_B893      ; B83B F0 56                    .V
        pha                                     ; B83D 48                       H
        tay                                     ; B83E A8                       .
        txa                                     ; B83F 8A                       .
        pha                                     ; B840 48                       H
        lda     $B8BF,y                         ; B841 B9 BF B8                 ...
        brk                                     ; B844 00                       .
        db   $0D,$87                         ; B845 0D 87                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B847 68                       h
        tax                                     ; B848 AA                       .
        lda     $7020,x                         ; B849 BD 20 70                 . p
        and     #$7F                            ; B84C 29 7F                    ).
        sta     $7020,x                         ; B84E 9D 20 70                 . p
        lda     $6F60,x                         ; B851 BD 60 6F                 .`o
        sta     $6FA0,x                         ; B854 9D A0 6F                 ..o
        lda     $6F80,x                         ; B857 BD 80 6F                 ..o
        sta     $6FC0,x                         ; B85A 9D C0 6F                 ..o
        pla                                     ; B85D 68                       h
        tay                                     ; B85E A8                       .
        lda     $B8C0,y                         ; B85F B9 C0 B8                 ...
        clc                                     ; B862 18                       .
        adc     #$06                            ; B863 69 06                    i.
        tax                                     ; B865 AA                       .
        jmp     MapEventSystem_Branch_B7B9      ; B866 4C B9 B7                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B869:
        cpy     #$42                            ; B869 C0 42                    .B
        bne     MapEventSystem_Branch_B893      ; B86B D0 26                    .&
        brk                                     ; B86D 00                       .
        db   $62,$23,$40                     ; B86E 62 23 40                 b#@
; ----------------------------------------------------------------------------
        pha                                     ; B871 48                       H
        tax                                     ; B872 AA                       .
        ldy     #$2F                            ; B873 A0 2F                    ./
        brk                                     ; B875 00                       .
        db   $0D,$87                         ; B876 0D 87                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B878 68                       h
        tax                                     ; B879 AA                       .
        lda     $7020,x                         ; B87A BD 20 70                 . p
        and     #$7F                            ; B87D 29 7F                    ).
        sta     $7020,x                         ; B87F 9D 20 70                 . p
        lda     $6F60,x                         ; B882 BD 60 6F                 .`o
        sta     $6FA0,x                         ; B885 9D A0 6F                 ..o
        lda     $6F80,x                         ; B888 BD 80 6F                 ..o
        sta     $6FC0,x                         ; B88B 9D C0 6F                 ..o
        ldx     #$06                            ; B88E A2 06                    ..
        jmp     MapEventSystem_Branch_B7B9      ; B890 4C B9 B7                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B893:
        tya                                     ; B893 98                       .
        pha                                     ; B894 48                       H
        lda     $B8BE,y                         ; B895 B9 BE B8                 ...
        and     #$0F                            ; B898 29 0F                    ).
        tax                                     ; B89A AA                       .
        inx                                     ; B89B E8                       .
        lda     $B8BF,y                         ; B89C B9 BF B8                 ...
        brk                                     ; B89F 00                       .
        db   $0D,$87                         ; B8A0 0D 87                    ..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B8A2:
        pla                                     ; B8A2 68                       h
        pha                                     ; B8A3 48                       H
        tay                                     ; B8A4 A8                       .
        ldx     $B8C0,y                         ; B8A5 BE C0 B8                 ...
        lda     $B8BE,y                         ; B8A8 B9 BE B8                 ...
        and     #$0F                            ; B8AB 29 0F                    ).
        tay                                     ; B8AD A8                       .
        lda     $7006,x                         ; B8AE BD 06 70                 ..p
        and     #$03                            ; B8B1 29 03                    ).
        jsr     MapEventSystem_Entry_A1AF       ; B8B3 20 AF A1                  ..
        pla                                     ; B8B6 68                       h
        tay                                     ; B8B7 A8                       .
        jmp     MapEventSystem_Branch_B776      ; B8B8 4C 76 B7                 Lv.
; ----------------------------------------------------------------------------
        db   $41                             ; B8BB 41                       A
        db   $04                             ; B8BC 04                       .
        db   $FF                             ; B8BD FF                       .
        db   $00                             ; B8BE 00                       .
        db   $15                             ; B8BF 15                       .
        db   $08,$41,$04,$FF,$01,$15,$06,$41 ; B8C0 08 41 04 FF 01 15 06 41  .A.....A
        db   $04,$FF,$02,$15,$07,$33,$04,$08 ; B8C8 04 FF 02 15 07 33 04 08  .....3..
        db   $00,$3D,$01,$02,$00,$FF,$00,$13 ; B8D0 00 3D 01 02 00 FF 00 13  .=......
        db   $0B,$02,$03,$FF,$00,$13,$02,$31 ; B8D8 0B 02 03 FF 00 13 02 31  .......1
        db   $03,$09,$32,$19,$00,$04,$0B,$0A ; B8E0 03 09 32 19 00 04 0B 0A  ..2.....
        db   $20,$12,$00,$04,$00,$0B,$20,$11 ; B8E8 20 12 00 04 00 0B 20 11   ..... .
        db   $07,$04,$00,$02,$40,$02,$01,$04 ; B8F0 07 04 00 02 40 02 01 04  ....@...
        db   $01,$03,$41,$03,$00,$40,$00,$0E ; B8F8 01 03 41 03 00 40 00 0E  ..A..@..
        db   $40,$2F,$00,$FF                 ; B900 40 2F 00 FF              @/..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B904:
        ldy     #$00                            ; B904 A0 00                    ..
MapEventSystem_Branch_B906:
        lda     $B952,y                         ; B906 B9 52 B9                 .R.
        cmp     #$FF                            ; B909 C9 FF                    ..
        beq     MapEventSystem_Branch_B920      ; B90B F0 13                    ..
        cmp     CurrentMapNumber                ; B90D C5 63                    .c
        bne     MapEventSystem_Branch_B918      ; B90F D0 07                    ..
        lda     $B953,y                         ; B911 B9 53 B9                 .S.
        cmp     CurrentSubmapNumber             ; B914 C5 64                    .d
        beq     MapEventSystem_Branch_B921      ; B916 F0 09                    ..
MapEventSystem_Branch_B918:
        tya                                     ; B918 98                       .
        clc                                     ; B919 18                       .
        adc     #$04                            ; B91A 69 04                    i.
        tay                                     ; B91C A8                       .
        jmp     MapEventSystem_Branch_B906      ; B91D 4C 06 B9                 L..
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B920:
        rts                                     ; B920 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B921:
        tya                                     ; B921 98                       .
        pha                                     ; B922 48                       H
        ldx     $B955,y                         ; B923 BE 55 B9                 .U.
        lda     $6FE0,x                         ; B926 BD E0 6F                 ..o
        db   $BE,$54,$B9,$9D,$E0,$6F         ; B929 BE 54 B9 9D E0 6F        .T...o
; ----------------------------------------------------------------------------
        ldx     $B955,y                         ; B92F BE 55 B9                 .U.
        lda     $7000,x                         ; B932 BD 00 70                 ..p
        and     #$03                            ; B935 29 03                    ).
        pha                                     ; B937 48                       H
        ldx     $B954,y                         ; B938 BE 54 B9                 .T.
        lda     $7000,x                         ; B93B BD 00 70                 ..p
        and     #$FC                            ; B93E 29 FC                    ).
        sta     $7000,x                         ; B940 9D 00 70                 ..p
        pla                                     ; B943 68                       h
        ora     $7000,x                         ; B944 1D 00 70                 ..p
        sta     $7000,x                         ; B947 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_D7F1     ; B94A 20 F1 D7                  ..
        pla                                     ; B94D 68                       h
        tay                                     ; B94E A8                       .
        jmp     MapEventSystem_Branch_B918      ; B94F 4C 18 B9                 L..
; ----------------------------------------------------------------------------
        db   $41                             ; B952 41                       A
        db   $04                             ; B953 04                       .
        db   $06                             ; B954 06                       .
        db   $0A,$41,$04,$09,$0B,$FF,$60     ; B955 0A 41 04 09 0B FF 60     .A....`
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B95C:
        brk                                     ; B95C 00                       .
        db   $09,$FB                         ; B95D 09 FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapEventSystem_Entry_B9D5       ; B95F 20 D5 B9                  ..
        lda     $1F                             ; B962 A5 1F                    ..
        ora     #$08                            ; B964 09 08                    ..
        sta     $1F                             ; B966 85 1F                    ..
        jsr     MapEventSystem_Entry_B9DE       ; B968 20 DE B9                  ..
        jsr     MapEventSystem_Entry_BAEB       ; B96B 20 EB BA                  ..
        jsr     MapEventSystem_Entry_B980       ; B96E 20 80 B9                  ..
        jsr     UpperFixedEngine_Entry_C5C5     ; B971 20 C5 C5                  ..
        lda     $1F                             ; B974 A5 1F                    ..
        and     #$F7                            ; B976 29 F7                    ).
        sta     $1F                             ; B978 85 1F                    ..
        lda     #$2C                            ; B97A A9 2C                    .,
        brk                                     ; B97C 00                       .
        db   $07,$CF                         ; B97D 07 CF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; B97F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B980:
        lda     $3E                             ; B980 A5 3E                    .>
        bne     MapEventSystem_Branch_B993      ; B982 D0 0F                    ..
        dec     PlayerLocalY                    ; B984 C6 45                    .E
        lda     #$10                            ; B986 A9 10                    ..
        sta     $3E                             ; B988 85 3E                    .>
        dec     $60                             ; B98A C6 60                    .`
        bne     MapEventSystem_Branch_B993      ; B98C D0 05                    ..
        lda     #$10                            ; B98E A9 10                    ..
        sta     PlayerLocalY                    ; B990 85 45                    .E
        rts                                     ; B992 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Branch_B993:
        lda     $3E                             ; B993 A5 3E                    .>
        and     #$03                            ; B995 29 03                    ).
        bne     MapEventSystem_Entry_B99B       ; B997 D0 02                    ..
        inc     $5E                             ; B999 E6 5E                    .^
MapEventSystem_Entry_B99B:
        jsr     FixedTrampoline00               ; B99B 20 01 C0                  ..
        jsr     MapEventSystem_Entry_BB09       ; B99E 20 09 BB                  ..
        jsr     MapEventSystem_Entry_BB3C       ; B9A1 20 3C BB                  <.
        ldx     #$01                            ; B9A4 A2 01                    ..
        ldy     $5E                             ; B9A6 A4 5E                    .^
        cpy     #$1E                            ; B9A8 C0 1E                    ..
        bcs     MapEventSystem_Branch_B9AF      ; B9AA B0 03                    ..
        ldx     $B9B7,y                         ; B9AC BE B7 B9                 ...
MapEventSystem_Branch_B9AF:
        jsr     UpperFixedEngine_Entry_C90C     ; B9AF 20 0C C9                  ..
        inc     $5F                             ; B9B2 E6 5F                    ._
        jmp     MapEventSystem_Entry_B980       ; B9B4 4C 80 B9                 L..
; ----------------------------------------------------------------------------
        db   $0F,$0A,$0A,$09,$09,$08,$08,$07 ; B9B7 0F 0A 0A 09 09 08 08 07  ........
        db   $06,$06,$05,$05,$04,$04,$04,$04 ; B9BF 06 06 05 05 04 04 04 04  ........
        db   $03,$03,$03,$03,$02,$02,$02,$02 ; B9C7 03 03 03 03 02 02 02 02  ........
        db   $02,$02,$02,$02,$01,$01         ; B9CF 02 02 02 02 01 01        ......
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B9D5:
        jsr     WaitForNmi                      ; B9D5 20 74 FF                  t.
        lda     $0513                           ; B9D8 AD 13 05                 ...
        bne     MapEventSystem_Entry_B9D5       ; B9DB D0 F8                    ..
        rts                                     ; B9DD 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_B9DE:
        ldx     #$00                            ; B9DE A2 00                    ..
        ldy     $050A                           ; B9E0 AC 0A 05                 ...
        lda     #$8F                            ; B9E3 A9 8F                    ..
        sta     $0300,y                         ; B9E5 99 00 03                 ...
        lda     #$30                            ; B9E8 A9 30                    .0
        sta     $0301,y                         ; B9EA 99 01 03                 ...
        lda     #$D0                            ; B9ED A9 D0                    ..
        sta     NextTextCharacter,y             ; B9EF 99 02 03                 ...
MapEventSystem_Branch_B9F2:
        lda     $BA9B,x                         ; B9F2 BD 9B BA                 ...
        sta     $0303,y                         ; B9F5 99 03 03                 ...
        iny                                     ; B9F8 C8                       .
        inx                                     ; B9F9 E8                       .
        cpx     #$30                            ; B9FA E0 30                    .0
        bcc     MapEventSystem_Branch_B9F2      ; B9FC 90 F4                    ..
        inc     $050B                           ; B9FE EE 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; BA01 20 2D C6                  -.
        ldx     #$00                            ; BA04 A2 00                    ..
MapEventSystem_Branch_BA06:
        lda     $BACB,x                         ; BA06 BD CB BA                 ...
        sta     $02E0,x                         ; BA09 9D E0 02                 ...
        inx                                     ; BA0C E8                       .
        cpx     #$20                            ; BA0D E0 20                    .
        bcc     MapEventSystem_Branch_BA06      ; BA0F 90 F5                    ..
        ldx     #$14                            ; BA11 A2 14                    ..
        ldy     #$13                            ; BA13 A0 13                    ..
        lda     #$00                            ; BA15 A9 00                    ..
        brk                                     ; BA17 00                       .
        db   $09,$EF                         ; BA18 09 EF                    ..
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BA1A:
        ldx     #$15                            ; BA1A A2 15                    ..
        ldy     #$13                            ; BA1C A0 13                    ..
        lda     #$00                            ; BA1E A9 00                    ..
        brk                                     ; BA20 00                       .
        db   $09,$EF                         ; BA21 09 EF                    ..
; ----------------------------------------------------------------------------
        ldx     $050A                           ; BA23 AE 0A 05                 ...
        lda     #$BF                            ; BA26 A9 BF                    ..
        sta     $0300,x                         ; BA28 9D 00 03                 ...
        lda     #$03                            ; BA2B A9 03                    ..
        sta     $0301,x                         ; BA2D 9D 01 03                 ...
        lda     #$11                            ; BA30 A9 11                    ..
        sta     NextTextCharacter,x             ; BA32 9D 02 03                 ...
        lda     #$17                            ; BA35 A9 17                    ..
        sta     $0303,x                         ; BA37 9D 03 03                 ...
        sta     $0609                           ; BA3A 8D 09 06                 ...
        lda     #$27                            ; BA3D A9 27                    .'
        sta     $0304,x                         ; BA3F 9D 04 03                 ...
        sta     $060A                           ; BA42 8D 0A 06                 ...
        lda     #$0F                            ; BA45 A9 0F                    ..
        sta     $0305,x                         ; BA47 9D 05 03                 ...
        sta     $060B                           ; BA4A 8D 0B 06                 ...
        inc     $050B                           ; BA4D EE 0B 05                 ...
        jsr     WaitForNmi                      ; BA50 20 74 FF                  t.
        ldy     #$FF                            ; BA53 A0 FF                    ..
        ldx     #$60                            ; BA55 A2 60                    .`
        jsr     MapEventSystem_Entry_BA74       ; BA57 20 74 BA                  t.
        jsr     MapEventSystem_Entry_BA74       ; BA5A 20 74 BA                  t.
        jsr     MapEventSystem_Entry_BA74       ; BA5D 20 74 BA                  t.
        jsr     MapEventSystem_Entry_BA74       ; BA60 20 74 BA                  t.
        lda     #$F7                            ; BA63 A9 F7                    ..
        sta     $02B8                           ; BA65 8D B8 02                 ...
        sta     $02BC                           ; BA68 8D BC 02                 ...
        sta     $02D8                           ; BA6B 8D D8 02                 ...
        sta     $02DC                           ; BA6E 8D DC 02                 ...
        jmp     WaitForNmi                      ; BA71 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BA74:
        jsr     MapEventSystem_Entry_BA80       ; BA74 20 80 BA                  ..
        jsr     MapEventSystem_Entry_BA80       ; BA77 20 80 BA                  ..
        tya                                     ; BA7A 98                       .
        clc                                     ; BA7B 18                       .
        adc     #$08                            ; BA7C 69 08                    i.
        tay                                     ; BA7E A8                       .
        rts                                     ; BA7F 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BA80:
        tya                                     ; BA80 98                       .
        sta     $0200,x                         ; BA81 9D 00 02                 ...
        lda     #$FD                            ; BA84 A9 FD                    ..
        sta     $0201,x                         ; BA86 9D 01 02                 ...
        lda     #$00                            ; BA89 A9 00                    ..
        sta     $0202,x                         ; BA8B 9D 02 02                 ...
        sta     $0203,x                         ; BA8E 9D 03 02                 ...
        inx                                     ; BA91 E8                       .
        inx                                     ; BA92 E8                       .
        inx                                     ; BA93 E8                       .
        inx                                     ; BA94 E8                       .
        txa                                     ; BA95 8A                       .
        and     #$0F                            ; BA96 29 0F                    ).
        bne     MapEventSystem_Entry_BA80       ; BA98 D0 E6                    ..
        rts                                     ; BA9A 60                       `
; ----------------------------------------------------------------------------
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; BA9B 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; BAA3 00 00 00 00 00 00 00 00  ........
        db   $EE,$DD,$CC,$EE,$CC,$DD,$CC,$DD ; BAAB EE DD CC EE CC DD CC DD  ........
        db   $99,$AA,$BB,$99,$BB,$AA,$BB,$AA ; BAB3 99 AA BB 99 BB AA BB AA  ........
        db   $DD,$EE,$EE,$FF,$FF,$FF,$FF,$FF ; BABB DD EE EE FF FF FF FF FF  ........
        db   $AA,$99,$99,$AA,$DD,$88,$DD,$FF ; BAC3 AA 99 99 AA DD 88 DD FF  ........
        db   $9F,$FE,$00,$F0,$9F,$FE,$00,$F8 ; BACB 9F FE 00 F0 9F FE 00 F8  ........
        db   $A7,$FF,$00,$F0,$A7,$FF,$00,$F8 ; BAD3 A7 FF 00 F0 A7 FF 00 F8  ........
        db   $9F,$FE,$00,$E0,$9F,$FE,$00,$E8 ; BADB 9F FE 00 E0 9F FE 00 E8  ........
        db   $A7,$FF,$00,$E0,$A7,$FF,$00,$E8 ; BAE3 A7 FF 00 E0 A7 FF 00 E8  ........
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BAEB:
        lda     #$20                            ; BAEB A9 20                    .
        sta     $0520                           ; BAED 8D 20 05                 . .
        ldx     #$50                            ; BAF0 A2 50                    .P
MapEventSystem_Branch_BAF2:
        sta     $7800,x                         ; BAF2 9D 00 78                 ..x
        dex                                     ; BAF5 CA                       .
        bne     MapEventSystem_Branch_BAF2      ; BAF6 D0 FA                    ..
        lda     #$00                            ; BAF8 A9 00                    ..
        sta     $3D                             ; BAFA 85 3D                    .=
        sta     $3E                             ; BAFC 85 3E                    .>
        sta     $5E                             ; BAFE 85 5E                    .^
        lda     #$01                            ; BB00 A9 01                    ..
        sta     $5F                             ; BB02 85 5F                    ._
        lda     #$15                            ; BB04 A9 15                    ..
        sta     $60                             ; BB06 85 60                    .`
        rts                                     ; BB08 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BB09:
        ldx     #$00                            ; BB09 A2 00                    ..
MapEventSystem_Branch_BB0B:
        lda     $0200,x                         ; BB0B BD 00 02                 ...
        clc                                     ; BB0E 18                       .
        adc     #$01                            ; BB0F 69 01                    i.
        cmp     #$F7                            ; BB11 C9 F7                    ..
        bcc     MapEventSystem_Branch_BB17      ; BB13 90 02                    ..
        lda     #$F7                            ; BB15 A9 F7                    ..
MapEventSystem_Branch_BB17:
        sta     $0200,x                         ; BB17 9D 00 02                 ...
        inx                                     ; BB1A E8                       .
        inx                                     ; BB1B E8                       .
        inx                                     ; BB1C E8                       .
        inx                                     ; BB1D E8                       .
        cpx     #$E0                            ; BB1E E0 E0                    ..
        bcc     MapEventSystem_Branch_BB0B      ; BB20 90 E9                    ..
        lda     $5F                             ; BB22 A5 5F                    ._
        cmp     #$B1                            ; BB24 C9 B1                    ..
        bne     MapEventSystem_Branch_BB3B      ; BB26 D0 13                    ..
        ldx     #$60                            ; BB28 A2 60                    .`
MapEventSystem_Branch_BB2A:
        lda     $0200,x                         ; BB2A BD 00 02                 ...
        sec                                     ; BB2D 38                       8
        sbc     #$30                            ; BB2E E9 30                    .0
        sta     $0200,x                         ; BB30 9D 00 02                 ...
        inx                                     ; BB33 E8                       .
        inx                                     ; BB34 E8                       .
        inx                                     ; BB35 E8                       .
        inx                                     ; BB36 E8                       .
        cpx     #$E0                            ; BB37 E0 E0                    ..
        bcc     MapEventSystem_Branch_BB2A      ; BB39 90 EF                    ..
MapEventSystem_Branch_BB3B:
        rts                                     ; BB3B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BB3C:
        lda     $5F                             ; BB3C A5 5F                    ._
        and     #$0F                            ; BB3E 29 0F                    ).
        tax                                     ; BB40 AA                       .
        ldy     $050A                           ; BB41 AC 0A 05                 ...
        lda     #$D0                            ; BB44 A9 D0                    ..
        jsr     MapEventSystem_Entry_BB69       ; BB46 20 69 BB                  i.
        lda     #$F0                            ; BB49 A9 F0                    ..
        jsr     MapEventSystem_Entry_BB69       ; BB4B 20 69 BB                  i.
        txa                                     ; BB4E 8A                       .
        clc                                     ; BB4F 18                       .
        adc     #$10                            ; BB50 69 10                    i.
        tax                                     ; BB52 AA                       .
        lda     #$E0                            ; BB53 A9 E0                    ..
        jsr     MapEventSystem_Entry_BB69       ; BB55 20 69 BB                  i.
        lda     #$00                            ; BB58 A9 00                    ..
        jsr     MapEventSystem_Entry_BB69       ; BB5A 20 69 BB                  i.
        lda     #$99                            ; BB5D A9 99                    ..
        sta     $02F5,y                         ; BB5F 99 F5 02                 ...
        lda     $1F                             ; BB62 A5 1F                    ..
        ora     #$20                            ; BB64 09 20                    .
        sta     $1F                             ; BB66 85 1F                    ..
        rts                                     ; BB68 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BB69:
        sta     NextTextCharacter,y             ; BB69 99 02 03                 ...
        lda     #$98                            ; BB6C A9 98                    ..
        sta     $0300,y                         ; BB6E 99 00 03                 ...
        lda     #$08                            ; BB71 A9 08                    ..
        sta     $0301,y                         ; BB73 99 01 03                 ...
        lda     $BBB4,x                         ; BB76 BD B4 BB                 ...
        sta     $0303,y                         ; BB79 99 03 03                 ...
        lda     $BBB5,x                         ; BB7C BD B5 BB                 ...
        sta     $0304,y                         ; BB7F 99 04 03                 ...
        lda     $BBB6,x                         ; BB82 BD B6 BB                 ...
        sta     $0305,y                         ; BB85 99 05 03                 ...
        lda     $BBB7,x                         ; BB88 BD B7 BB                 ...
        sta     $0306,y                         ; BB8B 99 06 03                 ...
        lda     $BBB8,x                         ; BB8E BD B8 BB                 ...
        sta     $0307,y                         ; BB91 99 07 03                 ...
        lda     $BBB9,x                         ; BB94 BD B9 BB                 ...
        sta     $0308,y                         ; BB97 99 08 03                 ...
        lda     $BBBA,x                         ; BB9A BD BA BB                 ...
        sta     $0309,y                         ; BB9D 99 09 03                 ...
        lda     $BBBB,x                         ; BBA0 BD BB BB                 ...
        sta     $030A,y                         ; BBA3 99 0A 03                 ...
        txa                                     ; BBA6 8A                       .
        clc                                     ; BBA7 18                       .
        adc     #$08                            ; BBA8 69 08                    i.
        tax                                     ; BBAA AA                       .
        tya                                     ; BBAB 98                       .
        clc                                     ; BBAC 18                       .
        adc     #$0B                            ; BBAD 69 0B                    i.
        tay                                     ; BBAF A8                       .
        inc     $050B                           ; BBB0 EE 0B 05                 ...
        rts                                     ; BBB3 60                       `
; ----------------------------------------------------------------------------
        db   $B8                             ; BBB4 B8                       .
        db   $06                             ; BBB5 06                       .
        db   $01                             ; BBB6 01                       .
        db   $02                             ; BBB7 02                       .
        db   $84                             ; BBB8 84                       .
        db   $73                             ; BBB9 73                       s
        db   $C4                             ; BBBA C4                       .
        db   $02,$03,$84,$78,$84,$03,$00,$00 ; BBBB 02 03 84 78 84 03 00 00  ...x....
        db   $03,$B8,$06,$01,$02,$84,$73,$C4 ; BBC3 03 B8 06 01 02 84 73 C4  ......s.
        db   $02,$03,$84,$78,$84,$03,$00,$00 ; BBCB 02 03 84 78 84 03 00 00  ...x....
        db   $03,$01,$02,$8C,$72,$8E,$01,$00 ; BBD3 03 01 02 8C 72 8E 01 00  ....r...
        db   $01,$B3,$0C,$02,$01,$01,$E6,$98 ; BBDB 01 B3 0C 02 01 01 E6 98  ........
        db   $06,$01,$02,$8C,$72,$8E,$01,$00 ; BBE3 06 01 02 8C 72 8E 01 00  ....r...
        db   $01,$B3,$0C,$02,$01,$01,$E6,$98 ; BBEB 01 B3 0C 02 01 01 E6 98  ........
        db   $06                             ; BBF3 06                       .
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BBF4:
        jsr     UpperFixedEngine_Entry_C62D     ; BBF4 20 2D C6                  -.
        jsr     MapEventSystem_Entry_BC9C       ; BBF7 20 9C BC                  ..
        jsr     MapEventSystem_Entry_BC13       ; BBFA 20 13 BC                  ..
        lda     $1F                             ; BBFD A5 1F                    ..
        ora     #$40                            ; BBFF 09 40                    .@
        sta     $1F                             ; BC01 85 1F                    ..
        jsr     UpperFixedEngine_Entry_C62D     ; BC03 20 2D C6                  -.
        jsr     MapEventSystem_Entry_BC5D       ; BC06 20 5D BC                  ].
        jsr     UpperFixedEngine_Entry_C62D     ; BC09 20 2D C6                  -.
        lda     $1F                             ; BC0C A5 1F                    ..
        and     #$BF                            ; BC0E 29 BF                    ).
        sta     $1F                             ; BC10 85 1F                    ..
        rts                                     ; BC12 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BC13:
        lda     #$9F                            ; BC13 A9 9F                    ..
        sta     $0300                           ; BC15 8D 00 03                 ...
        lda     #$50                            ; BC18 A9 50                    .P
        sta     $0301                           ; BC1A 8D 01 03                 ...
        lda     #$20                            ; BC1D A9 20                    .
        sta     NextTextCharacter               ; BC1F 8D 02 03                 ...
        ldx     #$00                            ; BC22 A2 00                    ..
        ldy     #$00                            ; BC24 A0 00                    ..
MapEventSystem_Branch_BC26:
        lda     ($49),y                       ; BC26 B1 49                    .I
        sta     $0303,x                         ; BC28 9D 03 03                 ...
        inx                                     ; BC2B E8                       .
        iny                                     ; BC2C C8                       .
        cpy     #$50                            ; BC2D C0 50                    .P
        bcc     MapEventSystem_Branch_BC26      ; BC2F 90 F5                    ..
        lda     #$9F                            ; BC31 A9 9F                    ..
        sta     $0303,x                         ; BC33 9D 03 03                 ...
        lda     #$10                            ; BC36 A9 10                    ..
        sta     $0304,x                         ; BC38 9D 04 03                 ...
        lda     #$80                            ; BC3B A9 80                    ..
        sta     $0305,x                         ; BC3D 9D 05 03                 ...
MapEventSystem_Branch_BC40:
        lda     ($49),y                       ; BC40 B1 49                    .I
        sta     $0306,x                         ; BC42 9D 06 03                 ...
        inx                                     ; BC45 E8                       .
        iny                                     ; BC46 C8                       .
        cpy     #$60                            ; BC47 C0 60                    .`
        bcc     MapEventSystem_Branch_BC40      ; BC49 90 F5                    ..
        inc     $050B                           ; BC4B EE 0B 05                 ...
        inc     $050B                           ; BC4E EE 0B 05                 ...
        lda     $49                           ; BC51 A5 49                    .I
        clc                                     ; BC53 18                       .
        adc     #$60                            ; BC54 69 60                    i`
        sta     $49                           ; BC56 85 49                    .I
        bcc     MapEventSystem_Branch_BC5C      ; BC58 90 02                    ..
        inc     $4A                             ; BC5A E6 4A                    .J
MapEventSystem_Branch_BC5C:
        rts                                     ; BC5C 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BC5D:
        lda     #$9F                            ; BC5D A9 9F                    ..
        sta     $0300                           ; BC5F 8D 00 03                 ...
        lda     #$10                            ; BC62 A9 10                    ..
        sta     $0301                           ; BC64 8D 01 03                 ...
        lda     #$90                            ; BC67 A9 90                    ..
        sta     NextTextCharacter               ; BC69 8D 02 03                 ...
        ldx     #$00                            ; BC6C A2 00                    ..
        ldy     #$00                            ; BC6E A0 00                    ..
MapEventSystem_Branch_BC70:
        lda     ($49),y                       ; BC70 B1 49                    .I
        sta     $0303,x                         ; BC72 9D 03 03                 ...
        inx                                     ; BC75 E8                       .
        iny                                     ; BC76 C8                       .
        cpy     #$10                            ; BC77 C0 10                    ..
        bcc     MapEventSystem_Branch_BC70      ; BC79 90 F5                    ..
        lda     #$9F                            ; BC7B A9 9F                    ..
        sta     $0303,x                         ; BC7D 9D 03 03                 ...
        lda     #$50                            ; BC80 A9 50                    .P
        sta     $0304,x                         ; BC82 9D 04 03                 ...
        lda     #$B0                            ; BC85 A9 B0                    ..
        sta     $0305,x                         ; BC87 9D 05 03                 ...
MapEventSystem_Branch_BC8A:
        lda     ($49),y                       ; BC8A B1 49                    .I
        sta     $0306,x                         ; BC8C 9D 06 03                 ...
        inx                                     ; BC8F E8                       .
        iny                                     ; BC90 C8                       .
        cpy     #$60                            ; BC91 C0 60                    .`
        bcc     MapEventSystem_Branch_BC8A      ; BC93 90 F5                    ..
        inc     $050B                           ; BC95 EE 0B 05                 ...
        inc     $050B                           ; BC98 EE 0B 05                 ...
        rts                                     ; BC9B 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BC9C:
        lda     $BCA7                           ; BC9C AD A7 BC                 ...
        sta     $49                           ; BC9F 85 49                    .I
        lda     $BCA8                           ; BCA1 AD A8 BC                 ...
        sta     $4A                             ; BCA4 85 4A                    .J
        rts                                     ; BCA6 60                       `
; ----------------------------------------------------------------------------
        db   $A9                             ; BCA7 A9                       .
        db   $BC,$FF,$DE,$FA,$F8,$AB,$47,$4F ; BCA8 BC FF DE FA F8 AB 47 4F  ......GO
        db   $0F,$FF,$D8,$F0,$80,$00,$00,$01 ; BCB0 0F FF D8 F0 80 00 00 01  ........
        db   $02,$FF,$A0,$1F,$FF,$FF,$FF,$FF ; BCB8 02 FF A0 1F FF FF FF FF  ........
        db   $FF,$00,$00,$00,$00,$01,$0B,$67 ; BCC0 FF 00 00 00 00 01 0B 67  .......g
        db   $B1,$FF,$05,$F8,$FF,$FF,$FF,$FF ; BCC8 B1 FF 05 F8 FF FF FF FF  ........
        db   $DB,$00,$00,$00,$00,$4C,$32,$FA ; BCD0 DB 00 00 00 00 4C 32 FA  .....L2.
        db   $BD,$FF,$7D,$5F,$1F,$C5,$E2,$F2 ; BCD8 BD FF 7D 5F 1F C5 E2 F2  ..}_....
        db   $F0,$FF,$1D,$0F,$01,$00,$00,$80 ; BCE0 F0 FF 1D 0F 01 00 00 80  ........
        db   $40,$9F,$5F,$3F,$3F,$BF,$7F,$7F ; BCE8 40 9F 5F 3F 3F BF 7F 7F  @._??...
        db   $7F,$04,$05,$01,$0E,$0A,$07,$18 ; BCF0 7F 04 05 01 0E 0A 07 18  ........
        db   $06,$F9,$FA,$FC,$FC,$FD,$FE,$FE ; BCF8 06 F9 FA FC FC FD FE FE  ........
        db   $FE,$E0,$C0,$70,$90,$F0,$D0,$80 ; BD00 FE E0 C0 70 90 F0 D0 80  ...p....
        db   $70,$7F,$7F,$7F,$7F,$3F,$BF,$3F ; BD08 70 7F 7F 7F 7F 3F BF 3F  p....?.?
        db   $9F,$0D,$0D,$03,$0D,$06,$02,$01 ; BD10 9F 0D 0D 03 0D 06 02 01  ........
        db   $02,$FE,$FE,$7E,$FE,$FC,$FD,$FC ; BD18 02 FE FE 7E FE FC FD FC  ...~....
        db   $F9,$20,$F0,$D8,$E0,$B0,$A0,$90 ; BD20 F9 20 F0 D8 E0 B0 A0 90  . ......
        db   $40,$1F,$4F,$87,$E3,$F0,$F8,$FF ; BD28 40 1F 4F 87 E3 F0 F8 FF  @.O.....
        db   $FF,$00,$00,$00,$80,$E0,$F0,$F8 ; BD30 FF 00 00 00 80 E0 F0 F8  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$1F,$00 ; BD38 FF FF FF FF FF FF 1F 00  ........
        db   $FF,$6D,$12,$01,$00,$00,$00,$00 ; BD40 FF 6D 12 01 00 00 00 00  .m......
        db   $00,$FF,$FF,$FF,$FF,$FF,$F8,$00 ; BD48 00 FF FF FF FF FF F8 00  ........
        db   $FF,$FB,$D4,$34,$00,$00,$00,$00 ; BD50 FF FB D4 34 00 00 00 00  ...4....
        db   $00,$F8,$F2,$E1,$C7,$0F,$1F,$FF ; BD58 00 F8 F2 E1 C7 0F 1F FF  ........
        db   $FF,$00,$00,$00,$01,$07,$0F,$1F ; BD60 FF 00 00 00 01 07 0F 1F  ........
        db   $FF                             ; BD68 FF                       .
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BD69:
        lda     #$40                            ; BD69 A9 40                    .@
        bne     MapEventSystem_Branch_BD73      ; BD6B D0 06                    ..
MapEventSystem_Entry_BD6D:
        lda     #$80                            ; BD6D A9 80                    ..
        bne     MapEventSystem_Branch_BD73      ; BD6F D0 02                    ..
MapEventSystem_Entry_BD71:
        lda     #$00                            ; BD71 A9 00                    ..
MapEventSystem_Branch_BD73:
        sta     $1B                             ; BD73 85 1B                    ..
        jsr     MapEventSystem_Entry_BD87       ; BD75 20 87 BD                  ..
        jsr     MapEventSystem_Entry_BDAF       ; BD78 20 AF BD                  ..
        jsr     MapEventSystem_Entry_BDB8       ; BD7B 20 B8 BD                  ..
        jsr     MapEventSystem_Entry_BDE0       ; BD7E 20 E0 BD                  ..
        jsr     MapEventSystem_Entry_BF0A       ; BD81 20 0A BF                  ..
        jmp     UpperFixedEngine_Entry_C62D     ; BD84 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BD87:
        lda     $04F2                           ; BD87 AD F2 04                 ...
        pha                                     ; BD8A 48                       H
        asl     a                               ; BD8B 0A                       .
        and     #$1E                            ; BD8C 29 1E                    ).
        sta     $00                             ; BD8E 85 00                    ..
        pla                                     ; BD90 68                       h
        lsr     a                               ; BD91 4A                       J
        lsr     a                               ; BD92 4A                       J
        lsr     a                               ; BD93 4A                       J
        and     #$1E                            ; BD94 29 1E                    ).
        sta     $01                             ; BD96 85 01                    ..
        jsr     UpperFixedEngine_Entry_C662     ; BD98 20 62 C6                  b.
        bit     $1B                             ; BD9B 24 1B                    $.
        bpl     $BDAE                           ; BD9D 10 0F                    ..
        ldx     #$04                            ; BD9F A2 04                    ..
        lda     $0500                           ; BDA1 AD 00 05                 ...
        lsr     a                               ; BDA4 4A                       J
        bcc     MapEventSystem_Branch_BDA9      ; BDA5 90 02                    ..
        ldx     #$08                            ; BDA7 A2 08                    ..
MapEventSystem_Branch_BDA9:
        txa                                     ; BDA9 8A                       .
        eor     $1C                             ; BDAA 45 1C                    E.
        sta     $1C                             ; BDAC 85 1C                    ..
        rts                                     ; BDAE 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BDAF:
        lda     $050B                           ; BDAF AD 0B 05                 ...
        beq     $BDB7                           ; BDB2 F0 03                    ..
        jsr     UpperFixedEngine_Entry_C62D     ; BDB4 20 2D C6                  -.
        rts                                     ; BDB7 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BDB8:
        lda     $1D                             ; BDB8 A5 1D                    ..
        ora     #$E0                            ; BDBA 09 E0                    ..
        eor     #$FF                            ; BDBC 49 FF                    I.
        sta     $01                             ; BDBE 85 01                    ..
        inc     $01                             ; BDC0 E6 01                    ..
        lda     $04F3                           ; BDC2 AD F3 04                 ...
        pha                                     ; BDC5 48                       H
        lsr     a                               ; BDC6 4A                       J
        lsr     a                               ; BDC7 4A                       J
        lsr     a                               ; BDC8 4A                       J
        lsr     a                               ; BDC9 4A                       J
        and     #$0F                            ; BDCA 29 0F                    ).
        sta     $17                             ; BDCC 85 17                    ..
        pla                                     ; BDCE 68                       h
        asl     a                               ; BDCF 0A                       .
        and     #$1E                            ; BDD0 29 1E                    ).
        sta     $16                             ; BDD2 85 16                    ..
        sec                                     ; BDD4 38                       8
        sbc     $01                             ; BDD5 E5 01                    ..
        sta     $03                             ; BDD7 85 03                    ..
        bcs     $BDDF                           ; BDD9 B0 04                    ..
        lda     $16                             ; BDDB A5 16                    ..
        sta     $01                             ; BDDD 85 01                    ..
        rts                                     ; BDDF 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BDE0:
        ldy     #$00                            ; BDE0 A0 00                    ..
        sty     $04                             ; BDE2 84 04                    ..
        ldx     $050A                           ; BDE4 AE 0A 05                 ...
        lda     $1C                             ; BDE7 A5 1C                    ..
        sta     $19                             ; BDE9 85 19                    ..
        lda     $1D                             ; BDEB A5 1D                    ..
        sta     $18                             ; BDED 85 18                    ..
        jsr     MapEventSystem_Entry_BE0F       ; BDEF 20 0F BE                  ..
        jsr     MapEventSystem_Entry_BE38       ; BDF2 20 38 BE                  8.
        jsr     MapEventSystem_Entry_BE0F       ; BDF5 20 0F BE                  ..
        jsr     MapEventSystem_Entry_BE38       ; BDF8 20 38 BE                  8.
        lda     $1C                             ; BDFB A5 1C                    ..
        pha                                     ; BDFD 48                       H
        lda     $1D                             ; BDFE A5 1D                    ..
        pha                                     ; BE00 48                       H
        jsr     MapEventSystem_Entry_BE8E       ; BE01 20 8E BE                  ..
        pla                                     ; BE04 68                       h
        sta     $1D                             ; BE05 85 1D                    ..
        pla                                     ; BE07 68                       h
        sta     $1C                             ; BE08 85 1C                    ..
        dec     $17                             ; BE0A C6 17                    ..
        bne     $BDE4                           ; BE0C D0 D6                    ..
        rts                                     ; BE0E 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BE0F:
        lda     $1C                             ; BE0F A5 1C                    ..
        ora     #$80                            ; BE11 09 80                    ..
        sta     $0300,x                         ; BE13 9D 00 03                 ...
        inx                                     ; BE16 E8                       .
        lda     $01                             ; BE17 A5 01                    ..
        sta     $0300,x                         ; BE19 9D 00 03                 ...
        sta     $02                             ; BE1C 85 02                    ..
        inx                                     ; BE1E E8                       .
        lda     $1D                             ; BE1F A5 1D                    ..
        sta     $0300,x                         ; BE21 9D 00 03                 ...
        inx                                     ; BE24 E8                       .
        lda     $0480,y                         ; BE25 B9 80 04                 ...
        sta     $0300,x                         ; BE28 9D 00 03                 ...
        iny                                     ; BE2B C8                       .
        inx                                     ; BE2C E8                       .
        dec     $02                             ; BE2D C6 02                    ..
        bne     $BE25                           ; BE2F D0 F4                    ..
        inc     $050B                           ; BE31 EE 0B 05                 ...
        stx     $050A                           ; BE34 8E 0A 05                 ...
        rts                                     ; BE37 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BE38:
        lda     $03                             ; BE38 A5 03                    ..
        beq     $BE6A                           ; BE3A F0 2E                    ..
        bmi     $BE6A                           ; BE3C 30 2C                    0,
        lda     $1C                             ; BE3E A5 1C                    ..
        eor     #$04                            ; BE40 49 04                    I.
        ora     #$80                            ; BE42 09 80                    ..
        sta     $0300,x                         ; BE44 9D 00 03                 ...
        inx                                     ; BE47 E8                       .
        lda     $03                             ; BE48 A5 03                    ..
        sta     $0300,x                         ; BE4A 9D 00 03                 ...
        sta     $02                             ; BE4D 85 02                    ..
        inx                                     ; BE4F E8                       .
        lda     $1D                             ; BE50 A5 1D                    ..
        and     #$E0                            ; BE52 29 E0                    ).
        sta     $0300,x                         ; BE54 9D 00 03                 ...
        inx                                     ; BE57 E8                       .
        lda     $0480,y                         ; BE58 B9 80 04                 ...
        sta     $0300,x                         ; BE5B 9D 00 03                 ...
        iny                                     ; BE5E C8                       .
        inx                                     ; BE5F E8                       .
        dec     $02                             ; BE60 C6 02                    ..
        bne     $BE58                           ; BE62 D0 F4                    ..
        inc     $050B                           ; BE64 EE 0B 05                 ...
        stx     $050A                           ; BE67 8E 0A 05                 ...
        lda     $1D                             ; BE6A A5 1D                    ..
        clc                                     ; BE6C 18                       .
        adc     #$20                            ; BE6D 69 20                    i
        sta     $1D                             ; BE6F 85 1D                    ..
        bcc     $BE75                           ; BE71 90 02                    ..
        inc     $1C                             ; BE73 E6 1C                    ..
        cmp     #$C0                            ; BE75 C9 C0                    ..
        bcc     $BE8D                           ; BE77 90 14                    ..
        lda     $1C                             ; BE79 A5 1C                    ..
        and     #$FB                            ; BE7B 29 FB                    ).
        cmp     #$23                            ; BE7D C9 23                    .#
        bcc     $BE8D                           ; BE7F 90 0C                    ..
        lda     $1C                             ; BE81 A5 1C                    ..
        and     #$FC                            ; BE83 29 FC                    ).
        sta     $1C                             ; BE85 85 1C                    ..
        lda     $1D                             ; BE87 A5 1D                    ..
        and     #$1F                            ; BE89 29 1F                    ).
        sta     $1D                             ; BE8B 85 1D                    ..
        rts                                     ; BE8D 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BE8E:
        bit     $1B                             ; BE8E 24 1B                    $.
        bvs     $BEC3                           ; BE90 70 31                    p1
        lda     $04F3                           ; BE92 AD F3 04                 ...
        and     #$0F                            ; BE95 29 0F                    ).
        sta     $1A                             ; BE97 85 1A                    ..
        lda     $18                             ; BE99 A5 18                    ..
        sta     $1D                             ; BE9B 85 1D                    ..
        lda     $19                             ; BE9D A5 19                    ..
        sta     $1C                             ; BE9F 85 1C                    ..
        ldx     $04                             ; BEA1 A6 04                    ..
        lda     $04E0,x                         ; BEA3 BD E0 04                 ...
        inc     $04                             ; BEA6 E6 04                    ..
        jsr     UpperFixedEngine_Entry_C6BF     ; BEA8 20 BF C6                  ..
        jsr     MapEventSystem_Entry_BEC4       ; BEAB 20 C4 BE                  ..
        lda     $18                             ; BEAE A5 18                    ..
        clc                                     ; BEB0 18                       .
        adc     #$02                            ; BEB1 69 02                    i.
        sta     $18                             ; BEB3 85 18                    ..
        and     #$1F                            ; BEB5 29 1F                    ).
        bne     $BEBF                           ; BEB7 D0 06                    ..
        lda     $19                             ; BEB9 A5 19                    ..
        eor     #$04                            ; BEBB 49 04                    I.
        sta     $19                             ; BEBD 85 19                    ..
        dec     $1A                             ; BEBF C6 1A                    ..
        bne     $BE99                           ; BEC1 D0 D6                    ..
        rts                                     ; BEC3 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BEC4:
        pha                                     ; BEC4 48                       H
        ldx     #$00                            ; BEC5 A2 00                    ..
        cpx     $050A                           ; BEC7 EC 0A 05                 ...
        beq     $BEED                           ; BECA F0 21                    .!
        lda     $0300,x                         ; BECC BD 00 03                 ...
        bmi     $BEE2                           ; BECF 30 11                    0.
        cmp     $0E                             ; BED1 C5 0E                    ..
        bne     $BEDC                           ; BED3 D0 07                    ..
        lda     $0301,x                         ; BED5 BD 01 03                 ...
        cmp     $0F                             ; BED8 C5 0F                    ..
        beq     $BF05                           ; BEDA F0 29                    .)
        inx                                     ; BEDC E8                       .
        inx                                     ; BEDD E8                       .
        inx                                     ; BEDE E8                       .
        jmp     $BEC7                           ; BEDF 4C C7 BE                 L..
; ----------------------------------------------------------------------------
        txa                                     ; BEE2 8A                       .
        clc                                     ; BEE3 18                       .
        adc     $0301,x                         ; BEE4 7D 01 03                 }..
        adc     #$03                            ; BEE7 69 03                    i.
        tax                                     ; BEE9 AA                       .
        jmp     $BEC7                           ; BEEA 4C C7 BE                 L..
; ----------------------------------------------------------------------------
        lda     $0E                             ; BEED A5 0E                    ..
        sta     $0300,x                         ; BEEF 9D 00 03                 ...
        inx                                     ; BEF2 E8                       .
        lda     $0F                             ; BEF3 A5 0F                    ..
        sta     $0300,x                         ; BEF5 9D 00 03                 ...
        inx                                     ; BEF8 E8                       .
        pla                                     ; BEF9 68                       h
        sta     $0300,x                         ; BEFA 9D 00 03                 ...
        inx                                     ; BEFD E8                       .
        stx     $050A                           ; BEFE 8E 0A 05                 ...
        inc     $050B                           ; BF01 EE 0B 05                 ...
        rts                                     ; BF04 60                       `
; ----------------------------------------------------------------------------
        pla                                     ; BF05 68                       h
        sta     NextTextCharacter,x             ; BF06 9D 02 03                 ...
        rts                                     ; BF09 60                       `
; ----------------------------------------------------------------------------
MapEventSystem_Entry_BF0A:
        lda     #$00                            ; BF0A A9 00                    ..
        sta     $05                             ; BF0C 85 05                    ..
        ldx     $05                             ; BF0E A6 05                    ..
        cpx     $050A                           ; BF10 EC 0A 05                 ...
        bcc     $BF16                           ; BF13 90 01                    ..
        rts                                     ; BF15 60                       `
; ----------------------------------------------------------------------------
        lda     $0300,x                         ; BF16 BD 00 03                 ...
        bpl     $BF27                           ; BF19 10 0C                    ..
        txa                                     ; BF1B 8A                       .
        clc                                     ; BF1C 18                       .
        adc     $0301,x                         ; BF1D 7D 01 03                 }..
        adc     #$03                            ; BF20 69 03                    i.
        sta     $05                             ; BF22 85 05                    ..
        jmp     $BF0E                           ; BF24 4C 0E BF                 L..
; ----------------------------------------------------------------------------
        sta     $0E                             ; BF27 85 0E                    ..
        lda     #$01                            ; BF29 A9 01                    ..
        sta     $04                             ; BF2B 85 04                    ..
        txa                                     ; BF2D 8A                       .
        tay                                     ; BF2E A8                       .
        iny                                     ; BF2F C8                       .
        iny                                     ; BF30 C8                       .
        iny                                     ; BF31 C8                       .
        lda     $0301,x                         ; BF32 BD 01 03                 ...
        sta     $0F                             ; BF35 85 0F                    ..
        inc     $0F                             ; BF37 E6 0F                    ..
        bne     $BF3D                           ; BF39 D0 02                    ..
        inc     $0E                             ; BF3B E6 0E                    ..
        lda     $0E                             ; BF3D A5 0E                    ..
        cmp     $0300,y                         ; BF3F D9 00 03                 ...
        bne     $BF55                           ; BF42 D0 11                    ..
        lda     $0F                             ; BF44 A5 0F                    ..
        cmp     $0301,y                         ; BF46 D9 01 03                 ...
        bne     $BF55                           ; BF49 D0 0A                    ..
        iny                                     ; BF4B C8                       .
        iny                                     ; BF4C C8                       .
        iny                                     ; BF4D C8                       .
        inc     $04                             ; BF4E E6 04                    ..
        cpy     $050A                           ; BF50 CC 0A 05                 ...
        bne     $BF37                           ; BF53 D0 E2                    ..
        sty     $05                             ; BF55 84 05                    ..
        lda     $04                             ; BF57 A5 04                    ..
        cmp     #$02                            ; BF59 C9 02                    ..
        bcs     $BF60                           ; BF5B B0 03                    ..
        jmp     $BF0E                           ; BF5D 4C 0E BF                 L..
; ----------------------------------------------------------------------------
        tya                                     ; BF60 98                       .
        pha                                     ; BF61 48                       H
        lda     $04                             ; BF62 A5 04                    ..
        sta     $0E                             ; BF64 85 0E                    ..
        sec                                     ; BF66 38                       8
        sbc     #$02                            ; BF67 E9 02                    ..
        asl     a                               ; BF69 0A                       .
        clc                                     ; BF6A 18                       .
        adc     #$01                            ; BF6B 69 01                    i.
        sta     $0F                             ; BF6D 85 0F                    ..
        lda     $05                             ; BF6F A5 05                    ..
        sec                                     ; BF71 38                       8
        sbc     $0F                             ; BF72 E5 0F                    ..
        sta     $05                             ; BF74 85 05                    ..
        lda     $02FF,y                         ; BF76 B9 FF 02                 ...
        pha                                     ; BF79 48                       H
        dec     $04                             ; BF7A C6 04                    ..
        beq     $BF84                           ; BF7C F0 06                    ..
        dey                                     ; BF7E 88                       .
        dey                                     ; BF7F 88                       .
        dey                                     ; BF80 88                       .
        jmp     $BF76                           ; BF81 4C 76 BF                 Lv.
; ----------------------------------------------------------------------------
        lda     $0301,x                         ; BF84 BD 01 03                 ...
        sta     NextTextCharacter,x             ; BF87 9D 02 03                 ...
        lda     $0E                             ; BF8A A5 0E                    ..
        sta     $0F                             ; BF8C 85 0F                    ..
        sta     $0301,x                         ; BF8E 9D 01 03                 ...
        lda     $0300,x                         ; BF91 BD 00 03                 ...
        ora     #$80                            ; BF94 09 80                    ..
        sta     $0300,x                         ; BF96 9D 00 03                 ...
        pla                                     ; BF99 68                       h
        sta     $0303,x                         ; BF9A 9D 03 03                 ...
        inx                                     ; BF9D E8                       .
        dec     $0E                             ; BF9E C6 0E                    ..
        bne     $BF99                           ; BFA0 D0 F7                    ..
        pla                                     ; BFA2 68                       h
        tay                                     ; BFA3 A8                       .
        cpy     $050A                           ; BFA4 CC 0A 05                 ...
        beq     $BFB4                           ; BFA7 F0 0B                    ..
        lda     $0300,y                         ; BFA9 B9 00 03                 ...
        sta     $0303,x                         ; BFAC 9D 03 03                 ...
        iny                                     ; BFAF C8                       .
        inx                                     ; BFB0 E8                       .
        jmp     $BFA4                           ; BFB1 4C A4 BF                 L..
; ----------------------------------------------------------------------------
        inx                                     ; BFB4 E8                       .
        inx                                     ; BFB5 E8                       .
        inx                                     ; BFB6 E8                       .
        stx     $050A                           ; BFB7 8E 0A 05                 ...
        dec     $0F                             ; BFBA C6 0F                    ..
        lda     $050B                           ; BFBC AD 0B 05                 ...
        sec                                     ; BFBF 38                       8
        sbc     $0F                             ; BFC0 E5 0F                    ..
        sta     $050B                           ; BFC2 8D 0B 05                 ...
        jmp     $BF0E                           ; BFC5 4C 0E BF                 L..
; ----------------------------------------------------------------------------
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC8 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFD0 FF FF FF FF FF FF FF FF  ........
        db   $78,$EE,$DF,$BF,$4C,$8E,$FF,$80 ; BFD8 78 EE DF BF 4C 8E FF 80  x...L...
        db   $20,$44,$52,$41,$47,$4F,$4E,$20 ; BFE0 20 44 52 41 47 4F 4E 20   DRAGON
        db   $51,$55,$45,$53,$54,$20,$49,$56 ; BFE8 51 55 45 53 54 20 49 56  QUEST IV
        db   $00,$00,$00,$00,$48,$04,$01,$0E ; BFF0 00 00 00 00 48 04 01 0E  ....H...
        db   $07,$9E,$D8,$BF,$D8,$BF,$D8,$BF ; BFF8 07 9E D8 BF D8 BF D8 BF  ........
Bank1D_End:
