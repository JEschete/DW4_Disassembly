; PRG bank $17: ROM file $05C010-$06000F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank17_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank17_MapSystemDirectory:
        db   $4C,$80,$8D,$B0,$FA,$9B,$00,$00 ; 8000 4C 80 8D B0 FA 9B 00 00  L.......
        db   $A9,$BE,$C3,$BE,$D5,$BE,$01,$BA ; 8008 A9 BE C3 BE D5 BE 01 BA  ........
        db   $55,$BA,$9C,$B9,$C1,$B4,$29,$B5 ; 8010 55 BA 9C B9 C1 B4 29 B5  U.....).
        db   $CF,$B5,$8F,$B6,$F8,$B6,$51,$B7 ; 8018 CF B5 8F B6 F8 B6 51 B7  ......Q.
        db   $56,$B6,$CE,$B6,$31,$B7,$90,$BA ; 8020 56 B6 CE B6 31 B7 90 BA  V...1...
        db   $5A,$BB,$F7,$BB,$80,$B8,$E2,$B8 ; 8028 5A BB F7 BB 80 B8 E2 B8  Z.......
        db   $43,$B9,$4F,$BC,$1D,$BD,$D2,$BD ; 8030 43 B9 4F BC 1D BD D2 BD  C.O.....
        db   $19,$B8,$60,$B8,$69,$B8,$5A,$BE ; 8038 19 B8 60 B8 69 B8 5A BE  ..`.i.Z.
        db   $95,$BE,$5D,$BE,$7D,$BE,$97,$BE ; 8040 95 BE 5D BE 7D BE 97 BE  ..].}...
        db   $95,$BE,$A7,$89                 ; 8048 95 BE A7 89              ....
; ----------------------------------------------------------------------------
Bank17_MapSystemServices:
        lda     $1F                             ; 804C A5 1F                    ..
        ora     #$08                            ; 804E 09 08                    ..
        sta     $1F                             ; 8050 85 1F                    ..
        jsr     UpperFixedEngine_Entry_C5C5     ; 8052 20 C5 C5                  ..
        jsr     UpperFixedEngine_Entry_C54E     ; 8055 20 4E C5                  N.
        lda     #$00                            ; 8058 A9 00                    ..
        sta     $0508                           ; 805A 8D 08 05                 ...
        sta     $0509                           ; 805D 8D 09 05                 ...
        lda     $0505                           ; 8060 AD 05 05                 ...
        and     #$FE                            ; 8063 29 FE                    ).
        sta     $0505                           ; 8065 8D 05 05                 ...
        brk                                     ; 8068 00                       .
        db   $07,$6F,$3D                     ; 8069 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
Bank17_MapSystemInitialize:
        jsr     InitializeOamShadow             ; 806C 20 43 C5                  C.
        jsr     MapSystem_Entry_9372            ; 806F 20 72 93                  r.
        jsr     MapSystem_Entry_91E7            ; 8072 20 E7 91                  ..
        jsr     MapSystem_Entry_91AF            ; 8075 20 AF 91                  ..
        jsr     MapSystem_Entry_8C04            ; 8078 20 04 8C                  ..
        jsr     UpperFixedEngine_Entry_C62D     ; 807B 20 2D C6                  -.
        jsr     MapSystem_Entry_8C83            ; 807E 20 83 8C                  ..
        jsr     UpperFixedEngine_Entry_C5BF     ; 8081 20 BF C5                  ..
MapSystem_Branch_8084:
        jsr     MapSystem_Entry_8F64            ; 8084 20 64 8F                  d.
        jsr     MapSystem_Entry_8AAC            ; 8087 20 AC 8A                  ..
        jsr     MapSystem_Entry_9242            ; 808A 20 42 92                  B.
        jsr     MapSystem_Entry_8C69            ; 808D 20 69 8C                  i.
        jsr     MapSystem_Entry_81D7            ; 8090 20 D7 81                  ..
        jsr     MapSystem_Entry_8D7F            ; 8093 20 7F 8D                  ..
        jsr     MapSystem_Entry_9242            ; 8096 20 42 92                  B.
        jsr     MapSystem_Entry_8ED6            ; 8099 20 D6 8E                  ..
        jsr     MapSystem_Entry_80B1            ; 809C 20 B1 80                  ..
        jsr     MapSystem_Entry_89EE            ; 809F 20 EE 89                  ..
        jsr     MapSystem_Entry_8F37            ; 80A2 20 37 8F                  7.
        jsr     MapSystem_Entry_9242            ; 80A5 20 42 92                  B.
        jsr     MapSystem_Entry_92B4            ; 80A8 20 B4 92                  ..
        jsr     MapSystem_Entry_8C9D            ; 80AB 20 9D 8C                  ..
        jmp     MapSystem_Branch_8084           ; 80AE 4C 84 80                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_80B1:
        jsr     MapSystem_Entry_81F2            ; 80B1 20 F2 81                  ..
        bcs     MapSystem_Branch_80C1           ; 80B4 B0 0B                    ..
        jsr     MapSystem_Entry_9242            ; 80B6 20 42 92                  B.
        brk                                     ; 80B9 00                       .
        db   $7A,$4B                         ; 80BA 7A 4B                    zK
; ----------------------------------------------------------------------------
MapSystem_Entry_80BC:
        pha                                     ; 80BC 48                       H
        pha                                     ; 80BD 48                       H
        jmp     MapSystem_Branch_884A           ; 80BE 4C 4A 88                 LJ.
; ----------------------------------------------------------------------------
MapSystem_Branch_80C1:
        txa                                     ; 80C1 8A                       .
        pha                                     ; 80C2 48                       H
        jsr     MapSystem_Entry_8286            ; 80C3 20 86 82                  ..
        pla                                     ; 80C6 68                       h
        pha                                     ; 80C7 48                       H
        cmp     #$02                            ; 80C8 C9 02                    ..
        bcc     MapSystem_Branch_80CF           ; 80CA 90 03                    ..
        asl     a                               ; 80CC 0A                       .
        sbc     #$01                            ; 80CD E9 01                    ..
MapSystem_Branch_80CF:
        tax                                     ; 80CF AA                       .
        inc     $62B0,x                         ; 80D0 FE B0 62                 ..b
        bne     MapSystem_Branch_80E1           ; 80D3 D0 0C                    ..
        cmp     #$02                            ; 80D5 C9 02                    ..
        bcc     MapSystem_Branch_80DE           ; 80D7 90 05                    ..
        dec     $62B0,x                         ; 80D9 DE B0 62                 ..b
        bne     MapSystem_Branch_80E1           ; 80DC D0 03                    ..
MapSystem_Branch_80DE:
        inc     $62B1,x                         ; 80DE FE B1 62                 ..b
MapSystem_Branch_80E1:
        pla                                     ; 80E1 68                       h
        asl     a                               ; 80E2 0A                       .
        tax                                     ; 80E3 AA                       .
        lda     $36                             ; 80E4 A5 36                    .6
        pha                                     ; 80E6 48                       H
        lda     Bank17_ScaleValues,x            ; 80E7 BD C5 81                 ...
        sta     $36                             ; 80EA 85 36                    .6
        lda     $81C6,x                         ; 80EC BD C6 81                 ...
        sta     $37                             ; 80EF 85 37                    .7
        ldx     #$36                            ; 80F1 A2 36                    .6
        pla                                     ; 80F3 68                       h
        jsr     MultiplyPointerWord             ; 80F4 20 27 C8                  '.
        jsr     MapSystem_Entry_8C39            ; 80F7 20 39 8C                  9.
        jsr     UpperFixedEngine_Entry_C62D     ; 80FA 20 2D C6                  -.
        jsr     MapSystem_Entry_818F            ; 80FD 20 8F 81                  ..
        jsr     MapSystem_Entry_81DD            ; 8100 20 DD 81                  ..
        lda     #$5A                            ; 8103 A9 5A                    .Z
        sta     $8A                             ; 8105 85 8A                    ..
MapSystem_Branch_8107:
        jsr     MapSystem_Entry_8237            ; 8107 20 37 82                  7.
        jsr     WaitForNmi                      ; 810A 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C8EC     ; 810D 20 EC C8                  ..
        lda     ButtonsPressed                  ; 8110 A5 14                    ..
        bne     MapSystem_Branch_8118           ; 8112 D0 04                    ..
        dec     $8A                             ; 8114 C6 8A                    ..
        bne     MapSystem_Branch_8107           ; 8116 D0 EF                    ..
MapSystem_Branch_8118:
        jsr     MapSystem_Entry_9242            ; 8118 20 42 92                  B.
        jsr     MapSystem_Entry_819F            ; 811B 20 9F 81                  ..
        lda     #$00                            ; 811E A9 00                    ..
        sta     $82                             ; 8120 85 82                    ..
        jsr     MapSystem_Entry_81B2            ; 8122 20 B2 81                  ..
        jsr     MapSystem_Entry_92B4            ; 8125 20 B4 92                  ..
        jsr     MapSystem_Entry_92F6            ; 8128 20 F6 92                  ..
        jsr     MapSystem_Entry_8A3F            ; 812B 20 3F 8A                  ?.
MapSystem_Branch_812E:
        jsr     MapSystem_Entry_8237            ; 812E 20 37 82                  7.
        jsr     WaitForNmi                      ; 8131 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C8EC     ; 8134 20 EC C8                  ..
        jsr     MapSystem_Entry_8141            ; 8137 20 41 81                  A.
        lsr     ButtonsPressed                  ; 813A 46 14                    F.
        bcs     MapSystem_Branch_8179           ; 813C B0 3B                    .;
        jmp     MapSystem_Branch_812E           ; 813E 4C 2E 81                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8141:
        lda     ButtonsPressed                  ; 8141 A5 14                    ..
        asl     a                               ; 8143 0A                       .
        bcs     MapSystem_Branch_8162           ; 8144 B0 1C                    ..
        asl     a                               ; 8146 0A                       .
        bcs     MapSystem_Branch_8150           ; 8147 B0 07                    ..
        lda     ButtonsPressed                  ; 8149 A5 14                    ..
        and     #$02                            ; 814B 29 02                    ).
        bne     MapSystem_Branch_8162           ; 814D D0 13                    ..
        rts                                     ; 814F 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8150:
        lda     $0203                           ; 8150 AD 03 02                 ...
        cmp     #$50                            ; 8153 C9 50                    .P
        beq     MapSystem_Branch_8161           ; 8155 F0 0A                    ..
        lda     #$50                            ; 8157 A9 50                    .P
        sta     $0203                           ; 8159 8D 03 02                 ...
        lda     #$58                            ; 815C A9 58                    .X
        sta     $0207                           ; 815E 8D 07 02                 ...
MapSystem_Branch_8161:
        rts                                     ; 8161 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8162:
        lda     $0203                           ; 8162 AD 03 02                 ...
        cmp     #$88                            ; 8165 C9 88                    ..
        beq     MapSystem_Branch_8173           ; 8167 F0 0A                    ..
        lda     #$88                            ; 8169 A9 88                    ..
        sta     $0203                           ; 816B 8D 03 02                 ...
        lda     #$90                            ; 816E A9 90                    ..
        sta     $0207                           ; 8170 8D 07 02                 ...
MapSystem_Branch_8173:
        rts                                     ; 8173 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8174:
        pha                                     ; 8174 48                       H
        pha                                     ; 8175 48                       H
        jmp     MapSystem_Branch_896E           ; 8176 4C 6E 89                 Ln.
; ----------------------------------------------------------------------------
MapSystem_Branch_8179:
        brk                                     ; 8179 00                       .
        db   $85,$FB                         ; 817A 85 FB                    ..
; ----------------------------------------------------------------------------
Bank17_MapGameEntry:
        jsr     MapSystem_Entry_8244            ; 817C 20 44 82                  D.
        jsr     MapSystem_Entry_8F37            ; 817F 20 37 8F                  7.
        jsr     MapSystem_Entry_92B4            ; 8182 20 B4 92                  ..
        lda     $0203                           ; 8185 AD 03 02                 ...
        cmp     #$50                            ; 8188 C9 50                    .P
        bne     MapSystem_Branch_8174           ; 818A D0 E8                    ..
        jmp     Bank17_MapGameInitialize        ; 818C 4C 54 86                 LT.
; ----------------------------------------------------------------------------
MapSystem_Entry_818F:
        lda     $36                             ; 818F A5 36                    .6
        sta     $FD                             ; 8191 85 FD                    ..
        lda     $37                             ; 8193 A5 37                    .7
        sta     $FE                             ; 8195 85 FE                    ..
        lda     $38                             ; 8197 A5 38                    .8
        sta     $FF                             ; 8199 85 FF                    ..
        brk                                     ; 819B 00                       .
        db   $75,$4B                         ; 819C 75 4B                    uK
; ----------------------------------------------------------------------------
MapSystem_Entry_819E:
        rts                                     ; 819E 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_819F:
        lda     $36                             ; 819F A5 36                    .6
        asl     a                               ; 81A1 0A                       .
        sta     $FD                             ; 81A2 85 FD                    ..
        lda     $37                             ; 81A4 A5 37                    .7
        rol     a                               ; 81A6 2A                       *
        sta     $FE                             ; 81A7 85 FE                    ..
        lda     $38                             ; 81A9 A5 38                    .8
        rol     a                               ; 81AB 2A                       *
        sta     $FF                             ; 81AC 85 FF                    ..
        brk                                     ; 81AE 00                       .
        db   $76,$4B                         ; 81AF 76 4B                    vK
; ----------------------------------------------------------------------------
MapSystem_Entry_81B1:
        rts                                     ; 81B1 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_81B2:
        lda     $82                             ; 81B2 A5 82                    ..
        sta     $FD                             ; 81B4 85 FD                    ..
        lda     #$00                            ; 81B6 A9 00                    ..
        sta     $FE                             ; 81B8 85 FE                    ..
        sta     $FF                             ; 81BA 85 FF                    ..
        inc     $FD                             ; 81BC E6 FD                    ..
        brk                                     ; 81BE 00                       .
        db   $77,$4B                         ; 81BF 77 4B                    wK
; ----------------------------------------------------------------------------
MapSystem_Entry_81C1:
        rts                                     ; 81C1 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_81C2:
        jmp     UpperFixedEngine_Entry_D218     ; 81C2 4C 18 D2                 L..
; ----------------------------------------------------------------------------
Bank17_ScaleValues:
        db   $F4                             ; 81C5 F4                       .
        db   $01,$64,$00,$32,$00,$14,$00,$08 ; 81C6 01 64 00 32 00 14 00 08  .d.2....
        db   $00,$05,$00,$04,$00,$02,$00,$01 ; 81CE 00 05 00 04 00 02 00 01  ........
        db   $00                             ; 81D6 00                       .
; ----------------------------------------------------------------------------
MapSystem_Entry_81D7:
        jsr     MapSystem_Entry_81F2            ; 81D7 20 F2 81                  ..
        bcs     MapSystem_Entry_81DD            ; 81DA B0 01                    ..
        rts                                     ; 81DC 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_81DD:
        lda     #$30                            ; 81DD A9 30                    .0
        ldx     $81                             ; 81DF A6 81                    ..
        beq     MapSystem_Branch_81EB           ; 81E1 F0 08                    ..
        lda     #$2F                            ; 81E3 A9 2F                    ./
        cpx     #$03                            ; 81E5 E0 03                    ..
        bcc     MapSystem_Branch_81EB           ; 81E7 90 02                    ..
        lda     #$2E                            ; 81E9 A9 2E                    ..
MapSystem_Branch_81EB:
        brk                                     ; 81EB 00                       .
        db   $03,$9F                         ; 81EC 03 9F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_81EE:
        jsr     Bank17_UiService                ; 81EE 20 46 94                  F.
        rts                                     ; 81F1 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_81F2:
        lda     #$00                            ; 81F2 A9 00                    ..
        sta     $7E                             ; 81F4 85 7E                    .~
        jsr     MapSystem_Entry_84A0            ; 81F6 20 A0 84                  ..
        jsr     MapSystem_Entry_84CD            ; 81F9 20 CD 84                  ..
        jsr     MapSystem_Entry_84EF            ; 81FC 20 EF 84                  ..
        bcs     MapSystem_Branch_8227           ; 81FF B0 26                    .&
        jsr     MapSystem_Entry_8510            ; 8201 20 10 85                  ..
        bcs     MapSystem_Branch_8227           ; 8204 B0 21                    .!
        jsr     MapSystem_Entry_8522            ; 8206 20 22 85                  ".
        bcs     MapSystem_Branch_8227           ; 8209 B0 1C                    ..
        jsr     MapSystem_Entry_8532            ; 820B 20 32 85                  2.
        bcs     MapSystem_Branch_8227           ; 820E B0 17                    ..
        jsr     MapSystem_Entry_8544            ; 8210 20 44 85                  D.
        bcs     MapSystem_Branch_8227           ; 8213 B0 12                    ..
        jsr     MapSystem_Entry_8564            ; 8215 20 64 85                  d.
        bcs     MapSystem_Branch_8227           ; 8218 B0 0D                    ..
        jsr     MapSystem_Entry_8572            ; 821A 20 72 85                  r.
        bcs     MapSystem_Branch_8227           ; 821D B0 08                    ..
        jsr     MapSystem_Entry_860C            ; 821F 20 0C 86                  ..
        bcs     MapSystem_Branch_8227           ; 8222 B0 03                    ..
        jsr     MapSystem_Entry_861F            ; 8224 20 1F 86                  ..
MapSystem_Branch_8227:
        php                                     ; 8227 08                       .
        stx     $81                             ; 8228 86 81                    ..
        lda     #$00                            ; 822A A9 00                    ..
        sta     $7F                             ; 822C 85 7F                    ..
        rol     a                               ; 822E 2A                       *
        sta     $7E                             ; 822F 85 7E                    .~
        lda     $36                             ; 8231 A5 36                    .6
        sta     $80                             ; 8233 85 80                    ..
        plp                                     ; 8235 28                       (
        rts                                     ; 8236 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8237:
        lda     $7E                             ; 8237 A5 7E                    .~
        beq     MapSystem_Branch_825C           ; 8239 F0 21                    .!
        lda     $7F                             ; 823B A5 7F                    ..
        clc                                     ; 823D 18                       .
        adc     #$10                            ; 823E 69 10                    i.
        sta     $7F                             ; 8240 85 7F                    ..
        bpl     MapSystem_Branch_825D           ; 8242 10 19                    ..
MapSystem_Entry_8244:
        lda     $7E                             ; 8244 A5 7E                    .~
        beq     MapSystem_Branch_825C           ; 8246 F0 14                    ..
        lda     $36                             ; 8248 A5 36                    .6
        pha                                     ; 824A 48                       H
        lda     $80                             ; 824B A5 80                    ..
        sta     $36                             ; 824D 85 36                    .6
        lda     $81                             ; 824F A5 81                    ..
        jsr     MapSystem_Entry_82A9            ; 8251 20 A9 82                  ..
        lda     $81                             ; 8254 A5 81                    ..
        jsr     MapSystem_Entry_8286            ; 8256 20 86 82                  ..
        pla                                     ; 8259 68                       h
        sta     $36                             ; 825A 85 36                    .6
MapSystem_Branch_825C:
        rts                                     ; 825C 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_825D:
        lda     $81                             ; 825D A5 81                    ..
        tay                                     ; 825F A8                       .
        asl     a                               ; 8260 0A                       .
        tax                                     ; 8261 AA                       .
        lda     Bank17_UiPointers,x             ; 8262 BD A9 83                 ...
        sta     $00                             ; 8265 85 00                    ..
        lda     $83AA,x                         ; 8267 BD AA 83                 ...
        sta     $01                             ; 826A 85 01                    ..
        lda     Bank17_UiLengths,y              ; 826C B9 7D 82                 .}.
        tay                                     ; 826F A8                       .
MapSystem_Branch_8270:
        lda     #$00                            ; 8270 A9 00                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 8272 20 5A C6                  Z.
        inc     $00                             ; 8275 E6 00                    ..
        dey                                     ; 8277 88                       .
        bne     MapSystem_Branch_8270           ; 8278 D0 F6                    ..
        jmp     UpperFixedEngine_Entry_C62D     ; 827A 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
Bank17_UiLengths:
        db   $13,$13,$13,$13,$13,$0D,$0D,$10 ; 827D 13 13 13 13 13 0D 0D 10  ........
        db   $10                             ; 8285 10                       .
; ----------------------------------------------------------------------------
MapSystem_Entry_8286:
        tax                                     ; 8286 AA                       .
        ldy     Bank17_UiStringOffsets,x        ; 8287 BC E3 82                 ...
        asl     a                               ; 828A 0A                       .
        tax                                     ; 828B AA                       .
        lda     Bank17_UiPointers,x             ; 828C BD A9 83                 ...
        sta     $00                             ; 828F 85 00                    ..
        lda     $83AA,x                         ; 8291 BD AA 83                 ...
        sta     $01                             ; 8294 85 01                    ..
MapSystem_Branch_8296:
        lda     Bank17_UiStrings,y              ; 8296 B9 EC 82                 ...
        cmp     #$FF                            ; 8299 C9 FF                    ..
        beq     MapSystem_Branch_82A6           ; 829B F0 09                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 829D 20 5A C6                  Z.
        iny                                     ; 82A0 C8                       .
        inc     $00                             ; 82A1 E6 00                    ..
        jmp     MapSystem_Branch_8296           ; 82A3 4C 96 82                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_82A6:
        jmp     UpperFixedEngine_Entry_C62D     ; 82A6 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
MapSystem_Entry_82A9:
        pha                                     ; 82A9 48                       H
        asl     a                               ; 82AA 0A                       .
        pha                                     ; 82AB 48                       H
        tax                                     ; 82AC AA                       .
        lda     Bank17_ScaleValues,x            ; 82AD BD C5 81                 ...
        sta     $72                             ; 82B0 85 72                    .r
        lda     $81C6,x                         ; 82B2 BD C6 81                 ...
        sta     $73                             ; 82B5 85 73                    .s
        lda     $36                             ; 82B7 A5 36                    .6
        ldx     #$72                            ; 82B9 A2 72                    .r
        jsr     MultiplyPointerWord             ; 82BB 20 27 C8                  '.
        lda     #$00                            ; 82BE A9 00                    ..
        sta     $74                             ; 82C0 85 74                    .t
        brk                                     ; 82C2 00                       .
        db   $0C,$6F                         ; 82C3 0C 6F                    .o
; ----------------------------------------------------------------------------
MapSystem_Entry_82C5:
        pla                                     ; 82C5 68                       h
        tax                                     ; 82C6 AA                       .
        lda     Bank17_UiPointersAlternate,x    ; 82C7 BD BB 83                 ...
        sta     $00                             ; 82CA 85 00                    ..
        lda     $83BC,x                         ; 82CC BD BC 83                 ...
        sta     $01                             ; 82CF 85 01                    ..
        pla                                     ; 82D1 68                       h
        ldx     #$00                            ; 82D2 A2 00                    ..
        cmp     #$02                            ; 82D4 C9 02                    ..
        bcc     MapSystem_Branch_82DE           ; 82D6 90 06                    ..
        inx                                     ; 82D8 E8                       .
        cmp     #$04                            ; 82D9 C9 04                    ..
        bcc     MapSystem_Branch_82DE           ; 82DB 90 01                    ..
        inx                                     ; 82DD E8                       .
MapSystem_Branch_82DE:
        txa                                     ; 82DE 8A                       .
        jsr     MapSystem_Entry_8C56            ; 82DF 20 56 8C                  V.
        rts                                     ; 82E2 60                       `
; ----------------------------------------------------------------------------
Bank17_UiStringOffsets:
        db   $00,$0C,$18,$27,$33,$3E,$44,$4D ; 82E3 00 0C 18 27 33 3E 44 4D  ...'3>DM
        db   $59                             ; 82EB 59                       Y
Bank17_UiStrings:
        db   $36,$19,$23,$0B,$16,$00,$2A,$16 ; 82EC 36 19 23 0B 16 00 2A 16  6.#...*.
        db   $1F,$1D,$12,$FF,$06,$00,$19,$10 ; 82F4 1F 1D 12 FF 06 00 19 10  ........
        db   $00,$0B,$00,$2F,$13,$18,$0E,$FF ; 82FC 00 0B 00 2F 13 18 0E FF  .../....
        db   $37,$1E,$1C,$0B,$13,$11,$12,$1E ; 8304 37 1E 1C 0B 13 11 12 1E  7.......
        db   $00,$2A,$16,$1F,$1D,$12,$FF,$05 ; 830C 00 2A 16 1F 1D 12 FF 05  .*......
        db   $00,$19,$10,$00,$0B,$00,$2F,$13 ; 8314 00 19 10 00 0B 00 2F 13  ....../.
        db   $18,$0E,$FF,$2A,$1F,$16,$16,$00 ; 831C 18 0E FF 2A 1F 16 16 00  ...*....
        db   $2C,$19,$1F,$1D,$0F,$FF,$2A,$16 ; 8324 2C 19 1F 1D 0F FF 2A 16  ,.....*.
        db   $1F,$1D,$12,$FF,$37,$1E,$1C,$0B ; 832C 1F 1D 12 FF 37 1E 1C 0B  ....7...
        db   $13,$11,$12,$1E,$FF,$04,$00,$19 ; 8334 13 11 12 1E FF 04 00 19  ........
        db   $10,$00,$0B,$00,$2F,$13,$18,$0E ; 833C 10 00 0B 00 2F 13 18 0E  ..../...
        db   $FF,$03,$00,$34,$0B,$13,$1C,$1D ; 8344 FF 03 00 34 0B 13 1C 1D  ...4....
        db   $FF,$38,$19,$1A,$00,$37,$0D,$19 ; 834C FF 38 19 1A 00 37 0D 19  .8...7..
        db   $1C,$0F,$00,$19,$10,$FF,$28,$19 ; 8354 1C 0F 00 19 10 FF 28 19  ......(.
        db   $1F,$0C,$16,$0F,$00,$39,$1A,$FF ; 835C 1F 0C 16 0F 00 39 1A FF  .....9..
        db   $38,$19,$1A,$00,$38,$0B,$15,$0F ; 8364 38 19 1A 00 38 0B 15 0F  8...8...
        db   $1D,$00,$19,$10,$FF,$28,$19,$1F ; 836C 1D 00 19 10 FF 28 19 1F  .....(..
        db   $0C,$16,$0F,$00,$39,$1A,$FF,$38 ; 8374 0C 16 0F 00 39 1A FF 38  ....9..8
        db   $19,$1E,$0B,$16,$00,$26,$0F,$1E ; 837C 19 1E 0B 16 00 26 0F 1E  .....&..
        db   $1D,$FF,$38,$19,$1E,$0B,$16,$00 ; 8384 1D FF 38 19 1E 0B 16 00  ..8.....
        db   $38,$0B,$15,$0F,$1D,$FF,$38,$19 ; 838C 38 0B 15 0F 1D FF 38 19  8.....8.
        db   $1A,$00,$37,$0D,$19,$1C,$0F,$00 ; 8394 1A 00 37 0D 19 1C 0F 00  ..7.....
        db   $19,$10,$00,$28,$19,$1F,$0C,$16 ; 839C 19 10 00 28 19 1F 0C 16  ...(....
        db   $0F,$00,$39,$1A,$FF             ; 83A4 0F 00 39 1A FF           ..9..
Bank17_UiPointers:
        db   $0B                             ; 83A9 0B                       .
        db   $02,$0B,$03,$0B,$04,$0B,$05,$0B ; 83AA 02 0B 03 0B 04 0B 05 0B  ........
        db   $06,$12,$07,$12,$08,$01,$07,$01 ; 83B2 06 12 07 12 08 01 07 01  ........
        db   $08                             ; 83BA 08                       .
Bank17_UiPointersAlternate:
        db   $19                             ; 83BB 19                       .
        db   $02,$19,$03,$1A,$04,$1A,$05,$1B ; 83BC 02 19 03 1A 04 1A 05 1B  ........
        db   $06,$1B,$07,$1B,$08,$0D,$07,$0D ; 83C4 06 1B 07 1B 08 0D 07 0D  ........
        db   $08                             ; 83CC 08                       .
; ----------------------------------------------------------------------------
Bank17_UiUpdate:
        jsr     MapSystem_Entry_847C            ; 83CD 20 7C 84                  |.
        jsr     Bank17_UiUpdateAlternate        ; 83D0 20 DA 83                  ..
        jsr     UpperFixedEngine_Entry_C8CC     ; 83D3 20 CC C8                  ..
        jsr     MapSystem_Entry_848E            ; 83D6 20 8E 84                  ..
        rts                                     ; 83D9 60                       `
; ----------------------------------------------------------------------------
Bank17_UiUpdateAlternate:
        jsr     MapSystem_Entry_83E1            ; 83DA 20 E1 83                  ..
        jsr     MapSystem_Entry_8434            ; 83DD 20 34 84                  4.
        rts                                     ; 83E0 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_83E1:
        ldx     #$00                            ; 83E1 A2 00                    ..
        stx     $9E                             ; 83E3 86 9E                    ..
        stx     $9D                             ; 83E5 86 9D                    ..
MapSystem_Branch_83E7:
        ldx     $9E                             ; 83E7 A6 9E                    ..
        lda     #$00                            ; 83E9 A9 00                    ..
        sta     $73                             ; 83EB 85 73                    .s
        sta     $74                             ; 83ED 85 74                    .t
        lda     $62B0,x                         ; 83EF BD B0 62                 ..b
        sta     $72                             ; 83F2 85 72                    .r
        cpx     #$02                            ; 83F4 E0 02                    ..
        bcc     MapSystem_Branch_8408           ; 83F6 90 10                    ..
        inx                                     ; 83F8 E8                       .
        lda     $62B0,x                         ; 83F9 BD B0 62                 ..b
        sta     $73                             ; 83FC 85 73                    .s
        cpx     #$10                            ; 83FE E0 10                    ..
        bcc     MapSystem_Branch_8408           ; 8400 90 06                    ..
        inx                                     ; 8402 E8                       .
        lda     $62B0,x                         ; 8403 BD B0 62                 ..b
        sta     $74                             ; 8406 85 74                    .t
MapSystem_Branch_8408:
        inx                                     ; 8408 E8                       .
        stx     $9E                             ; 8409 86 9E                    ..
        brk                                     ; 840B 00                       .
        db   $0C,$6F                         ; 840C 0C 6F                    .o
; ----------------------------------------------------------------------------
MapSystem_Entry_840E:
        inc     $9D                             ; 840E E6 9D                    ..
        inc     $9D                             ; 8410 E6 9D                    ..
        lda     $9D                             ; 8412 A5 9D                    ..
        sta     $01                             ; 8414 85 01                    ..
        lda     #$13                            ; 8416 A9 13                    ..
        sta     $00                             ; 8418 85 00                    ..
        cpx     #$10                            ; 841A E0 10                    ..
        bcc     MapSystem_Branch_8423           ; 841C 90 05                    ..
        lda     $02                             ; 841E A5 02                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 8420 20 5A C6                  Z.
MapSystem_Branch_8423:
        inc     $00                             ; 8423 E6 00                    ..
        lda     #$00                            ; 8425 A9 00                    ..
        jsr     MapSystem_Entry_8C56            ; 8427 20 56 8C                  V.
        jsr     UpperFixedEngine_Entry_C62D     ; 842A 20 2D C6                  -.
        lda     $9D                             ; 842D A5 9D                    ..
        cmp     #$17                            ; 842F C9 17                    ..
        bcc     MapSystem_Branch_83E7           ; 8431 90 B4                    ..
        rts                                     ; 8433 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8434:
        ldx     #$02                            ; 8434 A2 02                    ..
MapSystem_Branch_8436:
        lda     $62C6,x                         ; 8436 BD C6 62                 ..b
        sta     $72,x                           ; 8439 95 72                    .r
        dex                                     ; 843B CA                       .
        bpl     MapSystem_Branch_8436           ; 843C 10 F8                    ..
        brk                                     ; 843E 00                       .
        db   $0C,$6F                         ; 843F 0C 6F                    .o
; ----------------------------------------------------------------------------
MapSystem_Entry_8441:
        ldx     #$18                            ; 8441 A2 18                    ..
        jsr     MapSystem_Entry_8455            ; 8443 20 55 84                  U.
        ldx     #$02                            ; 8446 A2 02                    ..
MapSystem_Branch_8448:
        lda     $62C9,x                         ; 8448 BD C9 62                 ..b
        sta     $72,x                           ; 844B 95 72                    .r
        dex                                     ; 844D CA                       .
        bpl     MapSystem_Branch_8448           ; 844E 10 F8                    ..
        brk                                     ; 8450 00                       .
        db   $0C,$6F                         ; 8451 0C 6F                    .o
; ----------------------------------------------------------------------------
MapSystem_Entry_8453:
        ldx     #$1A                            ; 8453 A2 1A                    ..
MapSystem_Entry_8455:
        lda     $01                             ; 8455 A5 01                    ..
        pha                                     ; 8457 48                       H
        lda     $00                             ; 8458 A5 00                    ..
        pha                                     ; 845A 48                       H
        lda     #$11                            ; 845B A9 11                    ..
        sta     $00                             ; 845D 85 00                    ..
        stx     $01                             ; 845F 86 01                    ..
        pla                                     ; 8461 68                       h
        jsr     UpperFixedEngine_Entry_C65A     ; 8462 20 5A C6                  Z.
        inc     $00                             ; 8465 E6 00                    ..
        pla                                     ; 8467 68                       h
        jsr     UpperFixedEngine_Entry_C65A     ; 8468 20 5A C6                  Z.
        inc     $00                             ; 846B E6 00                    ..
        lda     $02                             ; 846D A5 02                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 846F 20 5A C6                  Z.
        inc     $00                             ; 8472 E6 00                    ..
        lda     #$00                            ; 8474 A9 00                    ..
        jsr     MapSystem_Entry_8C56            ; 8476 20 56 8C                  V.
        jmp     UpperFixedEngine_Entry_C62D     ; 8479 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
MapSystem_Entry_847C:
        lda     $0508                           ; 847C AD 08 05                 ...
        clc                                     ; 847F 18                       .
        adc     #$10                            ; 8480 69 10                    i.
        bcs     MapSystem_Branch_848D           ; 8482 B0 09                    ..
        sta     $0508                           ; 8484 8D 08 05                 ...
        jsr     WaitForNmi                      ; 8487 20 74 FF                  t.
        jmp     MapSystem_Entry_847C            ; 848A 4C 7C 84                 L|.
; ----------------------------------------------------------------------------
MapSystem_Branch_848D:
        rts                                     ; 848D 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_848E:
        lda     $0508                           ; 848E AD 08 05                 ...
        sec                                     ; 8491 38                       8
        sbc     #$10                            ; 8492 E9 10                    ..
        bcc     MapSystem_Branch_848D           ; 8494 90 F7                    ..
        sta     $0508                           ; 8496 8D 08 05                 ...
        jsr     WaitForNmi                      ; 8499 20 74 FF                  t.
        jmp     MapSystem_Entry_848E            ; 849C 4C 8E 84                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_849F:
        rts                                     ; 849F 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_84A0:
        ldy     #$00                            ; 84A0 A0 00                    ..
        sty     $33                             ; 84A2 84 33                    .3
MapSystem_Branch_84A4:
        lda     $7600,y                         ; 84A4 B9 00 76                 ..v
        jsr     MapSystem_Entry_8F8B            ; 84A7 20 8B 8F                  ..
        ldy     $33                             ; 84AA A4 33                    .3
        sta     $29,y                           ; 84AC 99 29 00                 .).
        inx                                     ; 84AF E8                       .
        beq     MapSystem_Branch_84C8           ; 84B0 F0 16                    ..
        lda     #$01                            ; 84B2 A9 01                    ..
MapSystem_Branch_84B4:
        asl     a                               ; 84B4 0A                       .
        dex                                     ; 84B5 CA                       .
        bne     MapSystem_Branch_84B4           ; 84B6 D0 FC                    ..
        lsr     a                               ; 84B8 4A                       J
MapSystem_Branch_84B9:
        sta     $2E,y                           ; 84B9 99 2E 00                 ...
        ldx     $33                             ; 84BC A6 33                    .3
        inc     $29,x                           ; 84BE F6 29                    .)
        inc     $33                             ; 84C0 E6 33                    .3
        iny                                     ; 84C2 C8                       .
        cpy     #$05                            ; 84C3 C0 05                    ..
        bne     MapSystem_Branch_84A4           ; 84C5 D0 DD                    ..
        rts                                     ; 84C7 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_84C8:
        lda     #$FF                            ; 84C8 A9 FF                    ..
        jmp     MapSystem_Branch_84B9           ; 84CA 4C B9 84                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_84CD:
        ldx     #$0C                            ; 84CD A2 0C                    ..
        lda     #$00                            ; 84CF A9 00                    ..
MapSystem_Branch_84D1:
        sta     $7635,x                         ; 84D1 9D 35 76                 .5v
        dex                                     ; 84D4 CA                       .
        bpl     MapSystem_Branch_84D1           ; 84D5 10 FA                    ..
        ldy     #$04                            ; 84D7 A0 04                    ..
MapSystem_Branch_84D9:
        ldx     $29,y                           ; 84D9 B6 29                    .)
        beq     MapSystem_Branch_84E4           ; 84DB F0 07                    ..
        inc     $7634,x                         ; 84DD FE 34 76                 .4v
MapSystem_Branch_84E0:
        dey                                     ; 84E0 88                       .
        bpl     MapSystem_Branch_84D9           ; 84E1 10 F6                    ..
        rts                                     ; 84E3 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_84E4:
        ldx     #$0C                            ; 84E4 A2 0C                    ..
MapSystem_Branch_84E6:
        inc     $7635,x                         ; 84E6 FE 35 76                 .5v
        dex                                     ; 84E9 CA                       .
        bpl     MapSystem_Branch_84E6           ; 84EA 10 FA                    ..
        jmp     MapSystem_Branch_84E0           ; 84EC 4C E0 84                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_84EF:
        jsr     MapSystem_Entry_8564            ; 84EF 20 64 85                  d.
        bcc     MapSystem_Branch_8506           ; 84F2 90 12                    ..
        jsr     MapSystem_Entry_8572            ; 84F4 20 72 85                  r.
        bcc     MapSystem_Branch_8506           ; 84F7 90 0D                    ..
        jsr     MapSystem_Entry_8647            ; 84F9 20 47 86                  G.
        bcs     MapSystem_Branch_8508           ; 84FC B0 0A                    ..
        lda     $7635                           ; 84FE AD 35 76                 .5v
        and     $7641                           ; 8501 2D 41 76                 -Av
        bne     MapSystem_Branch_850C           ; 8504 D0 06                    ..
MapSystem_Branch_8506:
        clc                                     ; 8506 18                       .
        rts                                     ; 8507 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8508:
        ldx     #$02                            ; 8508 A2 02                    ..
        sec                                     ; 850A 38                       8
        rts                                     ; 850B 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_850C:
        ldx     #$00                            ; 850C A2 00                    ..
        sec                                     ; 850E 38                       8
        rts                                     ; 850F 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8510:
        ldx     #$0C                            ; 8510 A2 0C                    ..
MapSystem_Branch_8512:
        lda     $7635,x                         ; 8512 BD 35 76                 .5v
        cmp     #$05                            ; 8515 C9 05                    ..
        beq     MapSystem_Branch_851E           ; 8517 F0 05                    ..
        dex                                     ; 8519 CA                       .
        bpl     MapSystem_Branch_8512           ; 851A 10 F6                    ..
        clc                                     ; 851C 18                       .
        rts                                     ; 851D 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_851E:
        ldx     #$01                            ; 851E A2 01                    ..
        sec                                     ; 8520 38                       8
        rts                                     ; 8521 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8522:
        jsr     MapSystem_Entry_8564            ; 8522 20 64 85                  d.
        bcc     MapSystem_Branch_852C           ; 8525 90 05                    ..
        jsr     MapSystem_Entry_8572            ; 8527 20 72 85                  r.
        bcs     MapSystem_Branch_852E           ; 852A B0 02                    ..
MapSystem_Branch_852C:
        clc                                     ; 852C 18                       .
        rts                                     ; 852D 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_852E:
        ldx     #$02                            ; 852E A2 02                    ..
        sec                                     ; 8530 38                       8
        rts                                     ; 8531 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8532:
        ldx     #$0C                            ; 8532 A2 0C                    ..
MapSystem_Branch_8534:
        lda     $7635,x                         ; 8534 BD 35 76                 .5v
        cmp     #$04                            ; 8537 C9 04                    ..
        beq     MapSystem_Branch_8540           ; 8539 F0 05                    ..
        dex                                     ; 853B CA                       .
        bpl     MapSystem_Branch_8534           ; 853C 10 F6                    ..
        clc                                     ; 853E 18                       .
        rts                                     ; 853F 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8540:
        ldx     #$03                            ; 8540 A2 03                    ..
        sec                                     ; 8542 38                       8
        rts                                     ; 8543 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8544:
        jsr     MapSystem_Entry_860C            ; 8544 20 0C 86                  ..
        bcc     MapSystem_Branch_8556           ; 8547 90 0D                    ..
        pha                                     ; 8549 48                       H
        jsr     MapSystem_Entry_8647            ; 854A 20 47 86                  G.
        pla                                     ; 854D 68                       h
        tax                                     ; 854E AA                       .
        bcs     MapSystem_Branch_8558           ; 854F B0 07                    ..
        jsr     MapSystem_Entry_8637            ; 8551 20 37 86                  7.
        bcs     MapSystem_Branch_8560           ; 8554 B0 0A                    ..
MapSystem_Branch_8556:
        clc                                     ; 8556 18                       .
        rts                                     ; 8557 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8558:
        dex                                     ; 8558 CA                       .
        bmi     MapSystem_Branch_8556           ; 8559 30 FB                    0.
        jsr     MapSystem_Entry_860E            ; 855B 20 0E 86                  ..
        bcc     MapSystem_Branch_8556           ; 855E 90 F6                    ..
MapSystem_Branch_8560:
        ldx     #$04                            ; 8560 A2 04                    ..
        sec                                     ; 8562 38                       8
        rts                                     ; 8563 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8564:
        lda     $32                             ; 8564 A5 32                    .2
        ldx     #$03                            ; 8566 A2 03                    ..
MapSystem_Branch_8568:
        and     $2E,x                           ; 8568 35 2E                    5.
        dex                                     ; 856A CA                       .
        bpl     MapSystem_Branch_8568           ; 856B 10 FB                    ..
        cmp     #$01                            ; 856D C9 01                    ..
        ldx     #$05                            ; 856F A2 05                    ..
        rts                                     ; 8571 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8572:
        jsr     MapSystem_Entry_8647            ; 8572 20 47 86                  G.
        bcs     MapSystem_Branch_85AF           ; 8575 B0 38                    .8
        ldx     #$0C                            ; 8577 A2 0C                    ..
MapSystem_Branch_8579:
        lda     $7635,x                         ; 8579 BD 35 76                 .5v
        cmp     #$02                            ; 857C C9 02                    ..
        bcs     MapSystem_Branch_85AD           ; 857E B0 2D                    .-
        dex                                     ; 8580 CA                       .
        bpl     MapSystem_Branch_8579           ; 8581 10 F6                    ..
        ldx     #$00                            ; 8583 A2 00                    ..
MapSystem_Branch_8585:
        lda     $7635,x                         ; 8585 BD 35 76                 .5v
        bne     MapSystem_Branch_858E           ; 8588 D0 04                    ..
        inx                                     ; 858A E8                       .
        jmp     MapSystem_Branch_8585           ; 858B 4C 85 85                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_858E:
        cpx     #$00                            ; 858E E0 00                    ..
        beq     MapSystem_Branch_85A2           ; 8590 F0 10                    ..
MapSystem_Entry_8592:
        inx                                     ; 8592 E8                       .
MapSystem_Branch_8593:
        ldy     #$04                            ; 8593 A0 04                    ..
MapSystem_Branch_8595:
        lda     $7635,x                         ; 8595 BD 35 76                 .5v
        beq     MapSystem_Branch_85AD           ; 8598 F0 13                    ..
        inx                                     ; 859A E8                       .
        dey                                     ; 859B 88                       .
        bne     MapSystem_Branch_8595           ; 859C D0 F7                    ..
MapSystem_Branch_859E:
        ldx     #$06                            ; 859E A2 06                    ..
        sec                                     ; 85A0 38                       8
        rts                                     ; 85A1 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_85A2:
        jsr     MapSystem_Entry_8592            ; 85A2 20 92 85                  ..
        bcc     MapSystem_Branch_85A8           ; 85A5 90 01                    ..
        rts                                     ; 85A7 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_85A8:
        ldx     #$09                            ; 85A8 A2 09                    ..
        jmp     MapSystem_Branch_8593           ; 85AA 4C 93 85                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_85AD:
        clc                                     ; 85AD 18                       .
        rts                                     ; 85AE 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_85AF:
        lda     #$00                            ; 85AF A9 00                    ..
        sta     $33                             ; 85B1 85 33                    .3
        ldx     #$0C                            ; 85B3 A2 0C                    ..
MapSystem_Branch_85B5:
        lda     $7635,x                         ; 85B5 BD 35 76                 .5v
        cmp     #$03                            ; 85B8 C9 03                    ..
        bcs     MapSystem_Branch_85AD           ; 85BA B0 F1                    ..
        dex                                     ; 85BC CA                       .
        bpl     MapSystem_Branch_85B5           ; 85BD 10 F6                    ..
        ldx     #$00                            ; 85BF A2 00                    ..
MapSystem_Branch_85C1:
        lda     $7635,x                         ; 85C1 BD 35 76                 .5v
        inx                                     ; 85C4 E8                       .
        cmp     #$02                            ; 85C5 C9 02                    ..
        bne     MapSystem_Branch_85C1           ; 85C7 D0 F8                    ..
        cpx     #$01                            ; 85C9 E0 01                    ..
        beq     MapSystem_Branch_85EA           ; 85CB F0 1D                    ..
        cpx     #$0A                            ; 85CD E0 0A                    ..
        beq     MapSystem_Branch_859E           ; 85CF F0 CD                    ..
MapSystem_Branch_85D1:
        ldy     #$04                            ; 85D1 A0 04                    ..
MapSystem_Branch_85D3:
        lda     $7635,x                         ; 85D3 BD 35 76                 .5v
        cmp     #$02                            ; 85D6 C9 02                    ..
        bne     MapSystem_Branch_85E1           ; 85D8 D0 07                    ..
MapSystem_Branch_85DA:
        inx                                     ; 85DA E8                       .
        dey                                     ; 85DB 88                       .
        bne     MapSystem_Branch_85D3           ; 85DC D0 F5                    ..
        jmp     MapSystem_Branch_859E           ; 85DE 4C 9E 85                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_85E1:
        lda     $33                             ; 85E1 A5 33                    .3
        bne     MapSystem_Branch_85AD           ; 85E3 D0 C8                    ..
        inc     $33                             ; 85E5 E6 33                    .3
        jmp     MapSystem_Branch_85DA           ; 85E7 4C DA 85                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_85EA:
        ldy     #$04                            ; 85EA A0 04                    ..
MapSystem_Branch_85EC:
        lda     $7635,x                         ; 85EC BD 35 76                 .5v
        cmp     #$02                            ; 85EF C9 02                    ..
        bne     MapSystem_Branch_85FA           ; 85F1 D0 07                    ..
MapSystem_Branch_85F3:
        inx                                     ; 85F3 E8                       .
        dey                                     ; 85F4 88                       .
        bne     MapSystem_Branch_85EC           ; 85F5 D0 F5                    ..
        jmp     MapSystem_Branch_859E           ; 85F7 4C 9E 85                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_85FA:
        lda     $33                             ; 85FA A5 33                    .3
        bne     MapSystem_Branch_8603           ; 85FC D0 05                    ..
        inc     $33                             ; 85FE E6 33                    .3
        jmp     MapSystem_Branch_85F3           ; 8600 4C F3 85                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_8603:
        lda     #$00                            ; 8603 A9 00                    ..
        sta     $33                             ; 8605 85 33                    .3
        ldx     #$09                            ; 8607 A2 09                    ..
        jmp     MapSystem_Branch_85D1           ; 8609 4C D1 85                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_860C:
        ldx     #$0C                            ; 860C A2 0C                    ..
MapSystem_Entry_860E:
        lda     $7635,x                         ; 860E BD 35 76                 .5v
        cmp     #$03                            ; 8611 C9 03                    ..
        beq     MapSystem_Branch_861A           ; 8613 F0 05                    ..
        dex                                     ; 8615 CA                       .
        bpl     MapSystem_Entry_860E            ; 8616 10 F6                    ..
        clc                                     ; 8618 18                       .
        rts                                     ; 8619 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_861A:
        txa                                     ; 861A 8A                       .
        ldx     #$07                            ; 861B A2 07                    ..
        sec                                     ; 861D 38                       8
        rts                                     ; 861E 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_861F:
        jsr     MapSystem_Entry_8647            ; 861F 20 47 86                  G.
        bcs     MapSystem_Branch_8631           ; 8622 B0 0D                    ..
        jsr     MapSystem_Entry_8637            ; 8624 20 37 86                  7.
        bcc     MapSystem_Branch_8631           ; 8627 90 08                    ..
        dex                                     ; 8629 CA                       .
        bmi     MapSystem_Branch_8631           ; 862A 30 05                    0.
        jsr     MapSystem_Entry_8639            ; 862C 20 39 86                  9.
        bcs     MapSystem_Branch_8633           ; 862F B0 02                    ..
MapSystem_Branch_8631:
        clc                                     ; 8631 18                       .
        rts                                     ; 8632 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8633:
        ldx     #$08                            ; 8633 A2 08                    ..
        sec                                     ; 8635 38                       8
        rts                                     ; 8636 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8637:
        ldx     #$0C                            ; 8637 A2 0C                    ..
MapSystem_Entry_8639:
        lda     $7635,x                         ; 8639 BD 35 76                 .5v
        cmp     #$02                            ; 863C C9 02                    ..
        beq     MapSystem_Branch_8645           ; 863E F0 05                    ..
        dex                                     ; 8640 CA                       .
        bpl     MapSystem_Entry_8639            ; 8641 10 F6                    ..
        clc                                     ; 8643 18                       .
        rts                                     ; 8644 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8645:
        sec                                     ; 8645 38                       8
        rts                                     ; 8646 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8647:
        ldx     #$04                            ; 8647 A2 04                    ..
MapSystem_Branch_8649:
        lda     $29,x                           ; 8649 B5 29                    .)
        beq     MapSystem_Branch_8652           ; 864B F0 05                    ..
        dex                                     ; 864D CA                       .
        bpl     MapSystem_Branch_8649           ; 864E 10 F9                    ..
        clc                                     ; 8650 18                       .
        rts                                     ; 8651 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8652:
        sec                                     ; 8652 38                       8
        rts                                     ; 8653 60                       `
; ----------------------------------------------------------------------------
Bank17_MapGameInitialize:
        lda     #$00                            ; 8654 A9 00                    ..
        sta     $82                             ; 8656 85 82                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 8658 20 91 C8                  ..
        and     #$07                            ; 865B 29 07                    ).
        sta     $83                             ; 865D 85 83                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 865F 20 91 C8                  ..
        and     #$07                            ; 8662 29 07                    ).
        sta     $84                             ; 8664 85 84                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 8666 20 91 C8                  ..
        and     #$07                            ; 8669 29 07                    ).
        sta     $85                             ; 866B 85 85                    ..
MapSystem_Branch_866D:
        jsr     MapSystem_Entry_9242            ; 866D 20 42 92                  B.
        jsr     MapSystem_Entry_8C9D            ; 8670 20 9D 8C                  ..
        jsr     MapSystem_Entry_8F64            ; 8673 20 64 8F                  d.
        jsr     MapSystem_Entry_86BC            ; 8676 20 BC 86                  ..
        ldy     #$00                            ; 8679 A0 00                    ..
        jsr     MapSystem_Entry_8D43            ; 867B 20 43 8D                  C.
        lda     $7600                           ; 867E AD 00 76                 ..v
        jsr     MapSystem_Entry_8F8B            ; 8681 20 8B 8F                  ..
        ldy     #$00                            ; 8684 A0 00                    ..
        jsr     MapSystem_Entry_8D25            ; 8686 20 25 8D                  %.
        jsr     MapSystem_Entry_86A6            ; 8689 20 A6 86                  ..
        brk                                     ; 868C 00                       .
        db   $78,$4B                         ; 868D 78 4B                    xK
; ----------------------------------------------------------------------------
MapSystem_Entry_868F:
        jsr     MapSystem_Entry_8785            ; 868F 20 85 87                  ..
        jsr     MapSystem_Entry_9242            ; 8692 20 42 92                  B.
        jsr     MapSystem_Entry_87F1            ; 8695 20 F1 87                  ..
        jsr     MapSystem_Entry_87F7            ; 8698 20 F7 87                  ..
        jsr     MapSystem_Entry_87FD            ; 869B 20 FD 87                  ..
        jsr     MapSystem_Entry_890A            ; 869E 20 0A 89                  ..
        inc     $82                             ; 86A1 E6 82                    ..
        jmp     MapSystem_Branch_866D           ; 86A3 4C 6D 86                 Lm.
; ----------------------------------------------------------------------------
MapSystem_Entry_86A6:
        lda     $7600                           ; 86A6 AD 00 76                 ..v
        cmp     #$34                            ; 86A9 C9 34                    .4
        bne     MapSystem_Branch_86BB           ; 86AB D0 0E                    ..
        ldx     #$50                            ; 86AD A2 50                    .P
        jsr     UpperFixedEngine_Entry_C90C     ; 86AF 20 0C C9                  ..
        jsr     MapSystem_Entry_877B            ; 86B2 20 7B 87                  {.
        jsr     MapSystem_Entry_87F1            ; 86B5 20 F1 87                  ..
        jmp     MapSystem_Branch_8827           ; 86B8 4C 27 88                 L'.
; ----------------------------------------------------------------------------
MapSystem_Branch_86BB:
        rts                                     ; 86BB 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_86BC:
        ldx     #$05                            ; 86BC A2 05                    ..
        lda     $82                             ; 86BE A5 82                    ..
        and     #$07                            ; 86C0 29 07                    ).
        cmp     $83                             ; 86C2 C5 83                    ..
        beq     MapSystem_Branch_8701           ; 86C4 F0 3B                    .;
        cmp     $84                             ; 86C6 C5 84                    ..
        beq     MapSystem_Branch_8701           ; 86C8 F0 37                    .7
        cmp     $85                             ; 86CA C5 85                    ..
        beq     MapSystem_Branch_8734           ; 86CC F0 66                    .f
        lda     $7600                           ; 86CE AD 00 76                 ..v
MapSystem_Branch_86D1:
        cmp     #$04                            ; 86D1 C9 04                    ..
        bcc     MapSystem_Branch_86D9           ; 86D3 90 04                    ..
        cmp     #$24                            ; 86D5 C9 24                    .$
        bcc     MapSystem_Branch_86EB           ; 86D7 90 12                    ..
MapSystem_Branch_86D9:
        lda     $7600,x                         ; 86D9 BD 00 76                 ..v
        pha                                     ; 86DC 48                       H
        lda     $7600                           ; 86DD AD 00 76                 ..v
        sta     $7600,x                         ; 86E0 9D 00 76                 ..v
        pla                                     ; 86E3 68                       h
        sta     $7600                           ; 86E4 8D 00 76                 ..v
        inx                                     ; 86E7 E8                       .
        jmp     MapSystem_Branch_86D1           ; 86E8 4C D1 86                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_86EB:
        ldy     #$01                            ; 86EB A0 01                    ..
MapSystem_Branch_86ED:
        lda     $7600,y                         ; 86ED B9 00 76                 ..v
        cmp     #$04                            ; 86F0 C9 04                    ..
        bcc     MapSystem_Branch_8700           ; 86F2 90 0C                    ..
        cmp     #$24                            ; 86F4 C9 24                    .$
        bcs     MapSystem_Branch_8700           ; 86F6 B0 08                    ..
        iny                                     ; 86F8 C8                       .
        cpy     #$05                            ; 86F9 C0 05                    ..
        bcc     MapSystem_Branch_86ED           ; 86FB 90 F0                    ..
        jmp     MapSystem_Branch_8724           ; 86FD 4C 24 87                 L$.
; ----------------------------------------------------------------------------
MapSystem_Branch_8700:
        rts                                     ; 8700 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8701:
        ldy     #$00                            ; 8701 A0 00                    ..
MapSystem_Branch_8703:
        lda     $7600,y                         ; 8703 B9 00 76                 ..v
MapSystem_Branch_8706:
        cmp     #$04                            ; 8706 C9 04                    ..
        bcc     MapSystem_Branch_8720           ; 8708 90 16                    ..
        cmp     #$24                            ; 870A C9 24                    .$
        bcs     MapSystem_Branch_8720           ; 870C B0 12                    ..
        lda     $7600,x                         ; 870E BD 00 76                 ..v
        pha                                     ; 8711 48                       H
        lda     $7600,y                         ; 8712 B9 00 76                 ..v
        sta     $7600,x                         ; 8715 9D 00 76                 ..v
        pla                                     ; 8718 68                       h
        sta     $7600,y                         ; 8719 99 00 76                 ..v
        inx                                     ; 871C E8                       .
        jmp     MapSystem_Branch_8706           ; 871D 4C 06 87                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_8720:
        cpy     #$00                            ; 8720 C0 00                    ..
        bne     MapSystem_Branch_8733           ; 8722 D0 0F                    ..
MapSystem_Branch_8724:
        txa                                     ; 8724 8A                       .
        pha                                     ; 8725 48                       H
        jsr     UpperFixedEngine_Entry_C891     ; 8726 20 91 C8                  ..
        and     #$03                            ; 8729 29 03                    ).
        tay                                     ; 872B A8                       .
        iny                                     ; 872C C8                       .
        pla                                     ; 872D 68                       h
        tax                                     ; 872E AA                       .
        inx                                     ; 872F E8                       .
        jmp     MapSystem_Branch_8703           ; 8730 4C 03 87                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_8733:
        rts                                     ; 8733 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8734:
        lda     $7600                           ; 8734 AD 00 76                 ..v
MapSystem_Branch_8737:
        cmp     #$04                            ; 8737 C9 04                    ..
        bcc     MapSystem_Branch_873F           ; 8739 90 04                    ..
        cmp     #$10                            ; 873B C9 10                    ..
        bcc     MapSystem_Branch_8751           ; 873D 90 12                    ..
MapSystem_Branch_873F:
        lda     $7600,x                         ; 873F BD 00 76                 ..v
        pha                                     ; 8742 48                       H
        lda     $7600                           ; 8743 AD 00 76                 ..v
        sta     $7600,x                         ; 8746 9D 00 76                 ..v
        pla                                     ; 8749 68                       h
        sta     $7600                           ; 874A 8D 00 76                 ..v
        inx                                     ; 874D E8                       .
        jmp     MapSystem_Branch_8737           ; 874E 4C 37 87                 L7.
; ----------------------------------------------------------------------------
MapSystem_Branch_8751:
        txa                                     ; 8751 8A                       .
        pha                                     ; 8752 48                       H
        jsr     UpperFixedEngine_Entry_C891     ; 8753 20 91 C8                  ..
        and     #$03                            ; 8756 29 03                    ).
        tay                                     ; 8758 A8                       .
        iny                                     ; 8759 C8                       .
        pla                                     ; 875A 68                       h
        tax                                     ; 875B AA                       .
        inx                                     ; 875C E8                       .
        lda     $7600,y                         ; 875D B9 00 76                 ..v
MapSystem_Branch_8760:
        cmp     #$04                            ; 8760 C9 04                    ..
        bcc     MapSystem_Branch_8768           ; 8762 90 04                    ..
        cmp     #$0C                            ; 8764 C9 0C                    ..
        bcc     MapSystem_Branch_877A           ; 8766 90 12                    ..
MapSystem_Branch_8768:
        lda     $7600,x                         ; 8768 BD 00 76                 ..v
        pha                                     ; 876B 48                       H
        lda     $7600,y                         ; 876C B9 00 76                 ..v
        sta     $7600,x                         ; 876F 9D 00 76                 ..v
        pla                                     ; 8772 68                       h
        sta     $7600,y                         ; 8773 99 00 76                 ..v
        inx                                     ; 8776 E8                       .
        jmp     MapSystem_Branch_8760           ; 8777 4C 60 87                 L`.
; ----------------------------------------------------------------------------
MapSystem_Branch_877A:
        rts                                     ; 877A 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_877B:
        ldx     #$04                            ; 877B A2 04                    ..
        lda     #$00                            ; 877D A9 00                    ..
MapSystem_Branch_877F:
        sta     $2F,x                           ; 877F 95 2F                    ./
        dex                                     ; 8781 CA                       .
        bpl     MapSystem_Branch_877F           ; 8782 10 FB                    ..
        rts                                     ; 8784 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8785:
        lda     #$01                            ; 8785 A9 01                    ..
        sta     $29                             ; 8787 85 29                    .)
        ldx     #$00                            ; 8789 A2 00                    ..
MapSystem_Branch_878B:
        lda     Bank17_MapGameOamTemplate,x     ; 878B BD E9 87                 ...
        sta     $0200,x                         ; 878E 9D 00 02                 ...
        inx                                     ; 8791 E8                       .
        cpx     #$08                            ; 8792 E0 08                    ..
        bne     MapSystem_Branch_878B           ; 8794 D0 F5                    ..
        jsr     MapSystem_Entry_877B            ; 8796 20 7B 87                  {.
        lda     #$90                            ; 8799 A9 90                    ..
        sta     $8A                             ; 879B 85 8A                    ..
MapSystem_Branch_879D:
        jsr     MapSystem_Entry_8E30            ; 879D 20 30 8E                  0.
        jsr     MapSystem_Entry_8DC4            ; 87A0 20 C4 8D                  ..
        jsr     MapSystem_Entry_87D1            ; 87A3 20 D1 87                  ..
        jsr     MapSystem_Entry_87B2            ; 87A6 20 B2 87                  ..
        jsr     MapSystem_Entry_8237            ; 87A9 20 37 82                  7.
        jsr     WaitForNmi                      ; 87AC 20 74 FF                  t.
        jmp     MapSystem_Branch_879D           ; 87AF 4C 9D 87                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_87B2:
        lda     ButtonsPressed                  ; 87B2 A5 14                    ..
        bmi     MapSystem_Branch_87BB           ; 87B4 30 05                    0.
        and     #$40                            ; 87B6 29 40                    )@
        bne     MapSystem_Branch_87C6           ; 87B8 D0 0C                    ..
        rts                                     ; 87BA 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_87BB:
        ldx     $29                             ; 87BB A6 29                    .)
        cpx     #$04                            ; 87BD E0 04                    ..
        beq     MapSystem_Branch_87C5           ; 87BF F0 04                    ..
        inc     $29                             ; 87C1 E6 29                    .)
        sta     $34                             ; 87C3 85 34                    .4
MapSystem_Branch_87C5:
        rts                                     ; 87C5 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_87C6:
        ldx     $29                             ; 87C6 A6 29                    .)
        cpx     #$01                            ; 87C8 E0 01                    ..
        beq     MapSystem_Branch_87D0           ; 87CA F0 04                    ..
        dec     $29                             ; 87CC C6 29                    .)
        sta     $34                             ; 87CE 85 34                    .4
MapSystem_Branch_87D0:
        rts                                     ; 87D0 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_87D1:
        lda     ButtonsPressed                  ; 87D1 A5 14                    ..
        and     #$01                            ; 87D3 29 01                    ).
        beq     MapSystem_Branch_87E8           ; 87D5 F0 11                    ..
        jsr     MapSystem_Entry_8F37            ; 87D7 20 37 8F                  7.
        ldx     $29                             ; 87DA A6 29                    .)
        stx     $2F                             ; 87DC 86 2F                    ./
        sta     $2F,x                           ; 87DE 95 2F                    ./
        jsr     MapSystem_Entry_8E52            ; 87E0 20 52 8E                  R.
        jsr     MapSystem_Entry_8244            ; 87E3 20 44 82                  D.
        pla                                     ; 87E6 68                       h
        pla                                     ; 87E7 68                       h
MapSystem_Branch_87E8:
        rts                                     ; 87E8 60                       `
; ----------------------------------------------------------------------------
Bank17_MapGameOamTemplate:
        db   $88,$01,$00,$40,$88,$02,$00,$48 ; 87E9 88 01 00 40 88 02 00 48  ...@...H
; ----------------------------------------------------------------------------
MapSystem_Entry_87F1:
        ldy     #$01                            ; 87F1 A0 01                    ..
        jsr     MapSystem_Entry_8F0E            ; 87F3 20 0E 8F                  ..
        rts                                     ; 87F6 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_87F7:
        ldy     $2F                             ; 87F7 A4 2F                    ./
        jsr     MapSystem_Entry_8F1E            ; 87F9 20 1E 8F                  ..
        rts                                     ; 87FC 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_87FD:
        lda     $7600                           ; 87FD AD 00 76                 ..v
        jsr     MapSystem_Entry_8F8B            ; 8800 20 8B 8F                  ..
        sta     $29                             ; 8803 85 29                    .)
        bne     MapSystem_Branch_880B           ; 8805 D0 04                    ..
        lda     #$0D                            ; 8807 A9 0D                    ..
        sta     $29                             ; 8809 85 29                    .)
MapSystem_Branch_880B:
        dec     $29                             ; 880B C6 29                    .)
        ldx     $2F                             ; 880D A6 2F                    ./
        lda     $7600,x                         ; 880F BD 00 76                 ..v
        jsr     MapSystem_Entry_8F8B            ; 8812 20 8B 8F                  ..
        sta     $2A                             ; 8815 85 2A                    .*
        bne     MapSystem_Branch_881D           ; 8817 D0 04                    ..
        lda     #$0D                            ; 8819 A9 0D                    ..
        sta     $2A                             ; 881B 85 2A                    .*
MapSystem_Branch_881D:
        dec     $2A                             ; 881D C6 2A                    .*
        lda     $2A                             ; 881F A5 2A                    .*
        cmp     $29                             ; 8821 C5 29                    .)
        beq     MapSystem_Branch_8838           ; 8823 F0 13                    ..
        bcs     MapSystem_Branch_8861           ; 8825 B0 3A                    .:
MapSystem_Branch_8827:
        brk                                     ; 8827 00                       .
        db   $7A,$4B                         ; 8828 7A 4B                    zK
; ----------------------------------------------------------------------------
MapSystem_Entry_882A:
        ldx     #$02                            ; 882A A2 02                    ..
MapSystem_Branch_882C:
        lda     $62C0,x                         ; 882C BD C0 62                 ..b
        cmp     $36,x                           ; 882F D5 36                    .6
        bcc     MapSystem_Branch_8840           ; 8831 90 0D                    ..
        beq     MapSystem_Branch_883B           ; 8833 F0 06                    ..
        jmp     MapSystem_Branch_884A           ; 8835 4C 4A 88                 LJ.
; ----------------------------------------------------------------------------
MapSystem_Branch_8838:
        jmp     MapSystem_Branch_88DA           ; 8838 4C DA 88                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_883B:
        dex                                     ; 883B CA                       .
        bpl     MapSystem_Branch_882C           ; 883C 10 EE                    ..
        bmi     MapSystem_Branch_884A           ; 883E 30 0A                    0.
MapSystem_Branch_8840:
        ldx     #$02                            ; 8840 A2 02                    ..
MapSystem_Branch_8842:
        lda     $36,x                           ; 8842 B5 36                    .6
        sta     $62C0,x                         ; 8844 9D C0 62                 ..b
        dex                                     ; 8847 CA                       .
        bpl     MapSystem_Branch_8842           ; 8848 10 F8                    ..
MapSystem_Branch_884A:
        jsr     MapSystem_Entry_92B4            ; 884A 20 B4 92                  ..
        jsr     UpperFixedEngine_Entry_D210     ; 884D 20 10 D2                  ..
        lda     #$00                            ; 8850 A9 00                    ..
        sta     $36                             ; 8852 85 36                    .6
        sta     $37                             ; 8854 85 37                    .7
        sta     $38                             ; 8856 85 38                    .8
        jsr     MapSystem_Entry_8C39            ; 8858 20 39 8C                  9.
        jsr     UpperFixedEngine_Entry_C62D     ; 885B 20 2D C6                  -.
        pla                                     ; 885E 68                       h
        pla                                     ; 885F 68                       h
        rts                                     ; 8860 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8861:
        asl     $36                             ; 8861 06 36                    .6
        rol     $37                             ; 8863 26 37                    &7
        rol     $38                             ; 8865 26 38                    &8
        jsr     MapSystem_Entry_8C39            ; 8867 20 39 8C                  9.
        jsr     UpperFixedEngine_Entry_C62D     ; 886A 20 2D C6                  -.
        jsr     MapSystem_Entry_818F            ; 886D 20 8F 81                  ..
        lda     #$30                            ; 8870 A9 30                    .0
        ldx     $38                             ; 8872 A6 38                    .8
        cpx     #$01                            ; 8874 E0 01                    ..
        beq     MapSystem_Branch_887C           ; 8876 F0 04                    ..
        bcs     MapSystem_Branch_889E           ; 8878 B0 24                    .$
        bcc     MapSystem_Branch_888C           ; 887A 90 10                    ..
MapSystem_Branch_887C:
        ldx     $37                             ; 887C A6 37                    .7
        cpx     #$86                            ; 887E E0 86                    ..
        beq     MapSystem_Branch_8886           ; 8880 F0 04                    ..
        bcs     MapSystem_Branch_889E           ; 8882 B0 1A                    ..
        bcc     MapSystem_Branch_888C           ; 8884 90 06                    ..
MapSystem_Branch_8886:
        ldy     $36                             ; 8886 A4 36                    .6
        cpy     #$A0                            ; 8888 C0 A0                    ..
        bcs     MapSystem_Branch_889E           ; 888A B0 12                    ..
MapSystem_Branch_888C:
        lda     #$2F                            ; 888C A9 2F                    ./
        ldx     $37                             ; 888E A6 37                    .7
        cpx     #$13                            ; 8890 E0 13                    ..
        beq     MapSystem_Branch_8898           ; 8892 F0 04                    ..
        bcs     MapSystem_Branch_889E           ; 8894 B0 08                    ..
        bcc     MapSystem_Branch_889C           ; 8896 90 04                    ..
MapSystem_Branch_8898:
        cpy     #$88                            ; 8898 C0 88                    ..
        bcs     MapSystem_Branch_889E           ; 889A B0 02                    ..
MapSystem_Branch_889C:
        lda     #$2E                            ; 889C A9 2E                    ..
MapSystem_Branch_889E:
        pha                                     ; 889E 48                       H
        brk                                     ; 889F 00                       .
        db   $03,$9F                         ; 88A0 03 9F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_88A2:
        pla                                     ; 88A2 68                       h
        cmp     #$30                            ; 88A3 C9 30                    .0
        beq     MapSystem_Branch_88AD           ; 88A5 F0 06                    ..
        jsr     Bank17_UiService                ; 88A7 20 46 94                  F.
        jmp     MapSystem_Entry_88B6            ; 88AA 4C B6 88                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_88AD:
        jsr     WaitForNmi                      ; 88AD 20 74 FF                  t.
        brk                                     ; 88B0 00                       .
        db   $07,$9F                         ; 88B1 07 9F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_88B3:
        brk                                     ; 88B3 00                       .
        db   $09,$9F                         ; 88B4 09 9F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_88B6:
        jsr     MapSystem_Entry_81C2            ; 88B6 20 C2 81                  ..
        jsr     MapSystem_Entry_9242            ; 88B9 20 42 92                  B.
        lda     $38                             ; 88BC A5 38                    .8
        cmp     #$01                            ; 88BE C9 01                    ..
        beq     MapSystem_Branch_88C6           ; 88C0 F0 04                    ..
        bcc     MapSystem_Branch_88D9           ; 88C2 90 15                    ..
        bcs     MapSystem_Branch_88D6           ; 88C4 B0 10                    ..
MapSystem_Branch_88C6:
        lda     $37                             ; 88C6 A5 37                    .7
        cmp     #$86                            ; 88C8 C9 86                    ..
        beq     MapSystem_Branch_88D0           ; 88CA F0 04                    ..
        bcc     MapSystem_Branch_88D9           ; 88CC 90 0B                    ..
        bcs     MapSystem_Branch_88D6           ; 88CE B0 06                    ..
MapSystem_Branch_88D0:
        lda     $36                             ; 88D0 A5 36                    .6
        cmp     #$A0                            ; 88D2 C9 A0                    ..
        bcc     MapSystem_Branch_88D9           ; 88D4 90 03                    ..
MapSystem_Branch_88D6:
        jmp     MapSystem_Branch_8934           ; 88D6 4C 34 89                 L4.
; ----------------------------------------------------------------------------
MapSystem_Branch_88D9:
        rts                                     ; 88D9 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_88DA:
        brk                                     ; 88DA 00                       .
        db   $79,$4B                         ; 88DB 79 4B                    yK
; ----------------------------------------------------------------------------
MapSystem_Entry_88DD:
        jsr     MapSystem_Entry_88EA            ; 88DD 20 EA 88                  ..
        jsr     MapSystem_Entry_92B4            ; 88E0 20 B4 92                  ..
        pla                                     ; 88E3 68                       h
        pla                                     ; 88E4 68                       h
        inc     $82                             ; 88E5 E6 82                    ..
        jmp     MapSystem_Branch_866D           ; 88E7 4C 6D 86                 Lm.
; ----------------------------------------------------------------------------
MapSystem_Entry_88EA:
        brk                                     ; 88EA 00                       .
        db   $9A,$FB                         ; 88EB 9A FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_88ED:
        ldx     #$2D                            ; 88ED A2 2D                    .-
        jsr     UpperFixedEngine_Entry_C90C     ; 88EF 20 0C C9                  ..
        rts                                     ; 88F2 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_88F3:
        brk                                     ; 88F3 00                       .
        db   $85,$FB                         ; 88F4 85 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_88F6:
        jsr     MapSystem_Entry_8244            ; 88F6 20 44 82                  D.
        jsr     MapSystem_Entry_8F37            ; 88F9 20 37 8F                  7.
        jsr     MapSystem_Entry_92B4            ; 88FC 20 B4 92                  ..
        jsr     MapSystem_Entry_9242            ; 88FF 20 42 92                  B.
        lda     $0203                           ; 8902 AD 03 02                 ...
        cmp     #$50                            ; 8905 C9 50                    .P
        bne     MapSystem_Branch_8934           ; 8907 D0 2B                    .+
        rts                                     ; 8909 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_890A:
        jsr     MapSystem_Entry_9242            ; 890A 20 42 92                  B.
        jsr     MapSystem_Entry_92B4            ; 890D 20 B4 92                  ..
        jsr     MapSystem_Entry_819F            ; 8910 20 9F 81                  ..
        inc     $82                             ; 8913 E6 82                    ..
        jsr     MapSystem_Entry_81B2            ; 8915 20 B2 81                  ..
        dec     $82                             ; 8918 C6 82                    ..
        jsr     MapSystem_Entry_92F6            ; 891A 20 F6 92                  ..
        jsr     MapSystem_Entry_8A3F            ; 891D 20 3F 8A                  ?.
MapSystem_Branch_8920:
        jsr     MapSystem_Entry_8237            ; 8920 20 37 82                  7.
        jsr     WaitForNmi                      ; 8923 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C8EC     ; 8926 20 EC C8                  ..
        jsr     MapSystem_Entry_8141            ; 8929 20 41 81                  A.
        lda     ButtonsPressed                  ; 892C A5 14                    ..
        lsr     a                               ; 892E 4A                       J
        bcs     MapSystem_Branch_88F3           ; 892F B0 C2                    ..
        jmp     MapSystem_Branch_8920           ; 8931 4C 20 89                 L .
; ----------------------------------------------------------------------------
MapSystem_Branch_8934:
        ldx     #$02                            ; 8934 A2 02                    ..
MapSystem_Branch_8936:
        lda     $62C3,x                         ; 8936 BD C3 62                 ..b
        cmp     $36,x                           ; 8939 D5 36                    .6
        bcc     MapSystem_Branch_8947           ; 893B 90 0A                    ..
        beq     MapSystem_Branch_8942           ; 893D F0 03                    ..
        jmp     MapSystem_Branch_8951           ; 893F 4C 51 89                 LQ.
; ----------------------------------------------------------------------------
MapSystem_Branch_8942:
        dex                                     ; 8942 CA                       .
        bpl     MapSystem_Branch_8936           ; 8943 10 F1                    ..
        bmi     MapSystem_Branch_8951           ; 8945 30 0A                    0.
MapSystem_Branch_8947:
        ldx     #$02                            ; 8947 A2 02                    ..
MapSystem_Branch_8949:
        lda     $36,x                           ; 8949 B5 36                    .6
        sta     $62C3,x                         ; 894B 9D C3 62                 ..b
        dex                                     ; 894E CA                       .
        bpl     MapSystem_Branch_8949           ; 894F 10 F8                    ..
MapSystem_Branch_8951:
        ldx     #$02                            ; 8951 A2 02                    ..
MapSystem_Branch_8953:
        lda     $62C0,x                         ; 8953 BD C0 62                 ..b
        cmp     $36,x                           ; 8956 D5 36                    .6
        bcc     MapSystem_Branch_8964           ; 8958 90 0A                    ..
        beq     MapSystem_Branch_895F           ; 895A F0 03                    ..
        jmp     MapSystem_Branch_896E           ; 895C 4C 6E 89                 Ln.
; ----------------------------------------------------------------------------
MapSystem_Branch_895F:
        dex                                     ; 895F CA                       .
        bpl     MapSystem_Branch_8953           ; 8960 10 F1                    ..
        bmi     MapSystem_Branch_896E           ; 8962 30 0A                    0.
MapSystem_Branch_8964:
        ldx     #$02                            ; 8964 A2 02                    ..
MapSystem_Branch_8966:
        lda     $36,x                           ; 8966 B5 36                    .6
        sta     $62C0,x                         ; 8968 9D C0 62                 ..b
        dex                                     ; 896B CA                       .
        bpl     MapSystem_Branch_8966           ; 896C 10 F8                    ..
MapSystem_Branch_896E:
        jsr     MapSystem_Entry_8244            ; 896E 20 44 82                  D.
        brk                                     ; 8971 00                       .
        db   $11,$FB                         ; 8972 11 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8974:
        jsr     MapSystem_Entry_89A7            ; 8974 20 A7 89                  ..
        lda     $36                             ; 8977 A5 36                    .6
        clc                                     ; 8979 18                       .
        adc     $62C9                           ; 897A 6D C9 62                 m.b
        sta     $62C9                           ; 897D 8D C9 62                 ..b
        lda     $37                             ; 8980 A5 37                    .7
        adc     $62CA                           ; 8982 6D CA 62                 m.b
        sta     $62CA                           ; 8985 8D CA 62                 ..b
        lda     $38                             ; 8988 A5 38                    .8
        adc     $62CB                           ; 898A 6D CB 62                 m.b
        sta     $62CB                           ; 898D 8D CB 62                 ..b
        lda     #$00                            ; 8990 A9 00                    ..
        sta     $36                             ; 8992 85 36                    .6
        sta     $37                             ; 8994 85 37                    .7
        sta     $38                             ; 8996 85 38                    .8
        jsr     MapSystem_Entry_8C04            ; 8998 20 04 8C                  ..
        jsr     MapSystem_Entry_8C39            ; 899B 20 39 8C                  9.
        jsr     UpperFixedEngine_Entry_C62D     ; 899E 20 2D C6                  -.
        jsr     Bank17_UiService                ; 89A1 20 46 94                  F.
        pla                                     ; 89A4 68                       h
        pla                                     ; 89A5 68                       h
        rts                                     ; 89A6 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_89A7:
        lda     $36                             ; 89A7 A5 36                    .6
        clc                                     ; 89A9 18                       .
        adc     SaveCasinoCoins                 ; 89AA 6D AD 62                 m.b
        sta     SaveCasinoCoins                 ; 89AD 8D AD 62                 ..b
        lda     $37                             ; 89B0 A5 37                    .7
        adc     $62AE                           ; 89B2 6D AE 62                 m.b
        sta     $62AE                           ; 89B5 8D AE 62                 ..b
        lda     $38                             ; 89B8 A5 38                    .8
        adc     $62AF                           ; 89BA 6D AF 62                 m.b
        sta     $62AF                           ; 89BD 8D AF 62                 ..b
        lda     $62AF                           ; 89C0 AD AF 62                 ..b
        cmp     #$0F                            ; 89C3 C9 0F                    ..
        bcc     MapSystem_Branch_89EC           ; 89C5 90 25                    .%
        bne     MapSystem_Branch_89DB           ; 89C7 D0 12                    ..
        lda     $62AE                           ; 89C9 AD AE 62                 ..b
        cmp     #$42                            ; 89CC C9 42                    .B
        bcc     MapSystem_Branch_89EC           ; 89CE 90 1C                    ..
        bne     MapSystem_Branch_89DB           ; 89D0 D0 09                    ..
        lda     SaveCasinoCoins                 ; 89D2 AD AD 62                 ..b
        cmp     #$3F                            ; 89D5 C9 3F                    .?
        beq     MapSystem_Branch_89EC           ; 89D7 F0 13                    ..
        bcc     MapSystem_Branch_89EC           ; 89D9 90 11                    ..
MapSystem_Branch_89DB:
        lda     #$0F                            ; 89DB A9 0F                    ..
        sta     $62AF                           ; 89DD 8D AF 62                 ..b
        lda     #$42                            ; 89E0 A9 42                    .B
        sta     $62AE                           ; 89E2 8D AE 62                 ..b
        lda     #$3F                            ; 89E5 A9 3F                    .?
        sta     SaveCasinoCoins                 ; 89E7 8D AD 62                 ..b
        sec                                     ; 89EA 38                       8
        rts                                     ; 89EB 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_89EC:
        clc                                     ; 89EC 18                       .
        rts                                     ; 89ED 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_89EE:
        jsr     MapSystem_Entry_9242            ; 89EE 20 42 92                  B.
        brk                                     ; 89F1 00                       .
        db   $7B,$4B                         ; 89F2 7B 4B                    {K
; ----------------------------------------------------------------------------
MapSystem_Entry_89F4:
        jsr     MapSystem_Entry_92F6            ; 89F4 20 F6 92                  ..
        jsr     MapSystem_Entry_8A3F            ; 89F7 20 3F 8A                  ?.
MapSystem_Branch_89FA:
        jsr     UpperFixedEngine_Entry_C8EC     ; 89FA 20 EC C8                  ..
        lda     ButtonsPressed                  ; 89FD A5 14                    ..
        asl     a                               ; 89FF 0A                       .
        bcs     MapSystem_Branch_8A17           ; 8A00 B0 15                    ..
        asl     a                               ; 8A02 0A                       .
        bcs     MapSystem_Branch_8A2B           ; 8A03 B0 26                    .&
        and     #$40                            ; 8A05 29 40                    )@
        bne     Bank17_CasinoExitService        ; 8A07 D0 4A                    .J
        lda     ButtonsPressed                  ; 8A09 A5 14                    ..
        lsr     a                               ; 8A0B 4A                       J
        bcs     Bank17_CasinoExitService        ; 8A0C B0 45                    .E
        lsr     a                               ; 8A0E 4A                       J
        bcs     MapSystem_Branch_8A17           ; 8A0F B0 06                    ..
MapSystem_Branch_8A11:
        jsr     WaitForNmi                      ; 8A11 20 74 FF                  t.
        jmp     MapSystem_Branch_89FA           ; 8A14 4C FA 89                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_8A17:
        lda     $0203                           ; 8A17 AD 03 02                 ...
        cmp     #$88                            ; 8A1A C9 88                    ..
        beq     MapSystem_Branch_8A28           ; 8A1C F0 0A                    ..
        lda     #$88                            ; 8A1E A9 88                    ..
        sta     $0203                           ; 8A20 8D 03 02                 ...
        lda     #$90                            ; 8A23 A9 90                    ..
        sta     $0207                           ; 8A25 8D 07 02                 ...
MapSystem_Branch_8A28:
        jmp     MapSystem_Branch_8A11           ; 8A28 4C 11 8A                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_8A2B:
        lda     $0203                           ; 8A2B AD 03 02                 ...
        cmp     #$50                            ; 8A2E C9 50                    .P
        beq     MapSystem_Branch_8A3C           ; 8A30 F0 0A                    ..
        lda     #$50                            ; 8A32 A9 50                    .P
        sta     $0203                           ; 8A34 8D 03 02                 ...
        lda     #$58                            ; 8A37 A9 58                    .X
        sta     $0207                           ; 8A39 8D 07 02                 ...
MapSystem_Branch_8A3C:
        jmp     MapSystem_Branch_8A11           ; 8A3C 4C 11 8A                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A3F:
        ldx     #$07                            ; 8A3F A2 07                    ..
MapSystem_Branch_8A41:
        lda     Bank17_CasinoOamTemplate,x      ; 8A41 BD 4B 8A                 .K.
        sta     $0200,x                         ; 8A44 9D 00 02                 ...
        dex                                     ; 8A47 CA                       .
        bpl     MapSystem_Branch_8A41           ; 8A48 10 F7                    ..
        rts                                     ; 8A4A 60                       `
; ----------------------------------------------------------------------------
Bank17_CasinoOamTemplate:
        db   $A0,$01,$00,$50,$A0,$02,$00,$58 ; 8A4B A0 01 00 50 A0 02 00 58  ...P...X
; ----------------------------------------------------------------------------
Bank17_CasinoExitService:
        brk                                     ; 8A53 00                       .
        db   $85,$FB                         ; 8A54 85 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A56:
        lda     $0203                           ; 8A56 AD 03 02                 ...
        cmp     #$50                            ; 8A59 C9 50                    .P
        beq     MapSystem_Branch_8A68           ; 8A5B F0 0B                    ..
MapSystem_Branch_8A5D:
        jsr     UpperFixedEngine_Entry_C5C5     ; 8A5D 20 C5 C5                  ..
        jsr     Bank17_CasinoSetupServices      ; 8A60 20 69 8A                  i.
        jsr     UpperFixedEngine_Entry_C5BF     ; 8A63 20 BF C5                  ..
        pla                                     ; 8A66 68                       h
        pla                                     ; 8A67 68                       h
MapSystem_Branch_8A68:
        rts                                     ; 8A68 60                       `
; ----------------------------------------------------------------------------
Bank17_CasinoSetupServices:
        ldx     #$00                            ; 8A69 A2 00                    ..
        brk                                     ; 8A6B 00                       .
        db   $23,$EF                         ; 8A6C 23 EF                    #.
; ----------------------------------------------------------------------------
MapSystem_Entry_8A6E:
        ldx     #$00                            ; 8A6E A2 00                    ..
        brk                                     ; 8A70 00                       .
        db   $0D,$87                         ; 8A71 0D 87                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A73:
        brk                                     ; 8A73 00                       .
        db   $08,$8F                         ; 8A74 08 8F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A76:
        jsr     UpperFixedEngine_Entry_C5AF     ; 8A76 20 AF C5                  ..
        brk                                     ; 8A79 00                       .
        db   $1D,$EF                         ; 8A7A 1D EF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A7C:
        lda     $28                             ; 8A7C A5 28                    .(
        brk                                     ; 8A7E 00                       .
        db   $02,$87                         ; 8A7F 02 87                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A81:
        lda     $0572                           ; 8A81 AD 72 05                 .r.
        brk                                     ; 8A84 00                       .
        db   $11,$87                         ; 8A85 11 87                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A87:
        brk                                     ; 8A87 00                       .
        db   $07,$87                         ; 8A88 07 87                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8A8A:
        ldx     #$00                            ; 8A8A A2 00                    ..
MapSystem_Branch_8A8C:
        lda     $7020,x                         ; 8A8C BD 20 70                 . p
        cmp     #$FF                            ; 8A8F C9 FF                    ..
        beq     MapSystem_Branch_8A9D           ; 8A91 F0 0A                    ..
        and     #$EF                            ; 8A93 29 EF                    ).
        sta     $7020,x                         ; 8A95 9D 20 70                 . p
        inx                                     ; 8A98 E8                       .
        cpx     #$1E                            ; 8A99 E0 1E                    ..
        bcc     MapSystem_Branch_8A8C           ; 8A9B 90 EF                    ..
MapSystem_Branch_8A9D:
        brk                                     ; 8A9D 00                       .
        db   $03,$EF                         ; 8A9E 03 EF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8AA0:
        lda     $1F                             ; 8AA0 A5 1F                    ..
        and     #$F7                            ; 8AA2 29 F7                    ).
        sta     $1F                             ; 8AA4 85 1F                    ..
        lda     #$00                            ; 8AA6 A9 00                    ..
        sta     $0553                           ; 8AA8 8D 53 05                 .S.
        rts                                     ; 8AAB 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8AAC:
        lda     SaveCasinoCoins                 ; 8AAC AD AD 62                 ..b
        ora     $62AE                           ; 8AAF 0D AE 62                 ..b
        ora     $62AF                           ; 8AB2 0D AF 62                 ..b
        bne     MapSystem_Branch_8AC3           ; 8AB5 D0 0C                    ..
        jsr     MapSystem_Entry_9242            ; 8AB7 20 42 92                  B.
        brk                                     ; 8ABA 00                       .
        db   $7C,$4B                         ; 8ABB 7C 4B                    |K
; ----------------------------------------------------------------------------
MapSystem_Entry_8ABD:
        jsr     MapSystem_Entry_81C2            ; 8ABD 20 C2 81                  ..
        jmp     MapSystem_Branch_8A5D           ; 8AC0 4C 5D 8A                 L].
; ----------------------------------------------------------------------------
MapSystem_Branch_8AC3:
        lda     #$01                            ; 8AC3 A9 01                    ..
        sta     $34                             ; 8AC5 85 34                    .4
        lda     $62AE                           ; 8AC7 AD AE 62                 ..b
        ora     $62AF                           ; 8ACA 0D AF 62                 ..b
        bne     MapSystem_Branch_8ADA           ; 8ACD D0 0B                    ..
        lda     SaveCasinoCoins                 ; 8ACF AD AD 62                 ..b
        cmp     $04F4                           ; 8AD2 CD F4 04                 ...
        bcs     MapSystem_Branch_8ADA           ; 8AD5 B0 03                    ..
        sta     $04F4                           ; 8AD7 8D F4 04                 ...
MapSystem_Branch_8ADA:
        ldx     $04F4                           ; 8ADA AE F4 04                 ...
        stx     $36                             ; 8ADD 86 36                    .6
        lda     #$00                            ; 8ADF A9 00                    ..
        sta     $37                             ; 8AE1 85 37                    .7
        sta     $38                             ; 8AE3 85 38                    .8
        sta     $29                             ; 8AE5 85 29                    .)
MapSystem_Branch_8AE7:
        jsr     MapSystem_Entry_8BCD            ; 8AE7 20 CD 8B                  ..
        dex                                     ; 8AEA CA                       .
        bne     MapSystem_Branch_8AE7           ; 8AEB D0 FA                    ..
        jsr     MapSystem_Entry_9266            ; 8AED 20 66 92                  f.
        lda     #$00                            ; 8AF0 A9 00                    ..
        sta     TextOutputX                     ; 8AF2 8D 51 05                 .Q.
        lda     #$04                            ; 8AF5 A9 04                    ..
        sta     TextOutputY                     ; 8AF7 8D 52 05                 .R.
        brk                                     ; 8AFA 00                       .
        db   $73,$4B                         ; 8AFB 73 4B                    sK
; ----------------------------------------------------------------------------
Bank17_CasinoLoop:
        jsr     MapSystem_Entry_8B15            ; 8AFD 20 15 8B                  ..
        jsr     MapSystem_Entry_8B3E            ; 8B00 20 3E 8B                  >.
        jsr     MapSystem_Entry_8BA0            ; 8B03 20 A0 8B                  ..
        jsr     MapSystem_Entry_8B32            ; 8B06 20 32 8B                  2.
        jsr     MapSystem_Entry_8C04            ; 8B09 20 04 8C                  ..
        jsr     MapSystem_Entry_8C24            ; 8B0C 20 24 8C                  $.
        jsr     UpperFixedEngine_Entry_C62D     ; 8B0F 20 2D C6                  -.
        jmp     Bank17_CasinoLoop               ; 8B12 4C FD 8A                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8B15:
        inc     $9E                             ; 8B15 E6 9E                    ..
        jsr     UpperFixedEngine_Entry_C8EC     ; 8B17 20 EC C8                  ..
        lda     ButtonsPressed                  ; 8B1A A5 14                    ..
        cmp     $9D                             ; 8B1C C5 9D                    ..
        bne     MapSystem_Branch_8B2B           ; 8B1E D0 0B                    ..
        lda     $9E                             ; 8B20 A5 9E                    ..
        cmp     #$14                            ; 8B22 C9 14                    ..
        bpl     MapSystem_Branch_8B31           ; 8B24 10 0B                    ..
        lda     #$00                            ; 8B26 A9 00                    ..
        sta     ButtonsPressed                  ; 8B28 85 14                    ..
        rts                                     ; 8B2A 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8B2B:
        sta     $9D                             ; 8B2B 85 9D                    ..
        lda     #$FF                            ; 8B2D A9 FF                    ..
        sta     $9E                             ; 8B2F 85 9E                    ..
MapSystem_Branch_8B31:
        rts                                     ; 8B31 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8B32:
        lda     ButtonsPressed                  ; 8B32 A5 14                    ..
        and     #$0E                            ; 8B34 29 0E                    ).
        cmp     #$0E                            ; 8B36 C9 0E                    ..
        bne     MapSystem_Branch_8B3D           ; 8B38 D0 03                    ..
        jsr     Bank17_UiUpdate                 ; 8B3A 20 CD 83                  ..
MapSystem_Branch_8B3D:
        rts                                     ; 8B3D 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8B3E:
        lda     ButtonsPressed                  ; 8B3E A5 14                    ..
        and     #$10                            ; 8B40 29 10                    ).
        bne     MapSystem_Branch_8B4B           ; 8B42 D0 07                    ..
        lda     ButtonsPressed                  ; 8B44 A5 14                    ..
        and     #$20                            ; 8B46 29 20                    )
        bne     MapSystem_Branch_8B75           ; 8B48 D0 2B                    .+
        rts                                     ; 8B4A 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8B4B:
        sta     $34                             ; 8B4B 85 34                    .4
        lda     SaveCasinoCoins                 ; 8B4D AD AD 62                 ..b
        ora     $62AE                           ; 8B50 0D AE 62                 ..b
        ora     $62AF                           ; 8B53 0D AF 62                 ..b
        bne     MapSystem_Branch_8B59           ; 8B56 D0 01                    ..
        rts                                     ; 8B58 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8B59:
        lda     $36                             ; 8B59 A5 36                    .6
        cmp     #$64                            ; 8B5B C9 64                    .d
        bcs     MapSystem_Branch_8B9A           ; 8B5D B0 3B                    .;
        inc     $36                             ; 8B5F E6 36                    .6
        lda     $36                             ; 8B61 A5 36                    .6
        cmp     #$64                            ; 8B63 C9 64                    .d
        bcs     MapSystem_Branch_8B97           ; 8B65 B0 30                    .0
        lda     #$00                            ; 8B67 A9 00                    ..
        sta     $29                             ; 8B69 85 29                    .)
        jsr     MapSystem_Entry_8BCD            ; 8B6B 20 CD 8B                  ..
        jsr     MapSystem_Entry_9266            ; 8B6E 20 66 92                  f.
        brk                                     ; 8B71 00                       .
        db   $B4,$FB                         ; 8B72 B4 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8B74:
        rts                                     ; 8B74 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8B75:
        sta     $34                             ; 8B75 85 34                    .4
        lda     $36                             ; 8B77 A5 36                    .6
        cmp     #$01                            ; 8B79 C9 01                    ..
        beq     MapSystem_Entry_8B96            ; 8B7B F0 19                    ..
        dec     $36                             ; 8B7D C6 36                    .6
        lda     #$00                            ; 8B7F A9 00                    ..
        sta     $29                             ; 8B81 85 29                    .)
        inc     SaveCasinoCoins                 ; 8B83 EE AD 62                 ..b
        bne     MapSystem_Branch_8B90           ; 8B86 D0 08                    ..
        inc     $62AE                           ; 8B88 EE AE 62                 ..b
        bne     MapSystem_Branch_8B90           ; 8B8B D0 03                    ..
        inc     $62AF                           ; 8B8D EE AF 62                 ..b
MapSystem_Branch_8B90:
        jsr     MapSystem_Entry_9266            ; 8B90 20 66 92                  f.
        brk                                     ; 8B93 00                       .
        db   $B4,$FB                         ; 8B94 B4 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8B96:
        rts                                     ; 8B96 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8B97:
        jsr     MapSystem_Entry_8BCD            ; 8B97 20 CD 8B                  ..
MapSystem_Branch_8B9A:
        jsr     MapSystem_Entry_9266            ; 8B9A 20 66 92                  f.
        jmp     MapSystem_Entry_8BA9            ; 8B9D 4C A9 8B                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8BA0:
        lda     ButtonsPressed                  ; 8BA0 A5 14                    ..
        and     #$01                            ; 8BA2 29 01                    ).
        beq     MapSystem_Branch_8BCC           ; 8BA4 F0 26                    .&
        brk                                     ; 8BA6 00                       .
        db   $85,$FB                         ; 8BA7 85 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8BA9:
        jsr     MapSystem_Entry_8C04            ; 8BA9 20 04 8C                  ..
        jsr     MapSystem_Entry_8C39            ; 8BAC 20 39 8C                  9.
        jsr     UpperFixedEngine_Entry_C62D     ; 8BAF 20 2D C6                  -.
        lda     $36                             ; 8BB2 A5 36                    .6
        sta     $04F4                           ; 8BB4 8D F4 04                 ...
        lda     $62C6                           ; 8BB7 AD C6 62                 ..b
        clc                                     ; 8BBA 18                       .
        adc     $36                             ; 8BBB 65 36                    e6
        sta     $62C6                           ; 8BBD 8D C6 62                 ..b
        bcc     MapSystem_Branch_8BCA           ; 8BC0 90 08                    ..
        inc     $62C7                           ; 8BC2 EE C7 62                 ..b
        bne     MapSystem_Branch_8BCA           ; 8BC5 D0 03                    ..
        inc     $62C8                           ; 8BC7 EE C8 62                 ..b
MapSystem_Branch_8BCA:
        pla                                     ; 8BCA 68                       h
        pla                                     ; 8BCB 68                       h
MapSystem_Branch_8BCC:
        rts                                     ; 8BCC 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8BCD:
        lda     SaveCasinoCoins                 ; 8BCD AD AD 62                 ..b
        sec                                     ; 8BD0 38                       8
        sbc     #$01                            ; 8BD1 E9 01                    ..
        sta     SaveCasinoCoins                 ; 8BD3 8D AD 62                 ..b
        lda     $62AE                           ; 8BD6 AD AE 62                 ..b
        sbc     #$00                            ; 8BD9 E9 00                    ..
        sta     $62AE                           ; 8BDB 8D AE 62                 ..b
        lda     $62AF                           ; 8BDE AD AF 62                 ..b
        sbc     #$00                            ; 8BE1 E9 00                    ..
        sta     $62AF                           ; 8BE3 8D AF 62                 ..b
        rts                                     ; 8BE6 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8BE7:
        ldx     #$02                            ; 8BE7 A2 02                    ..
MapSystem_Branch_8BE9:
        lda     SaveCasinoCoins,x               ; 8BE9 BD AD 62                 ..b
        sta     $72,x                           ; 8BEC 95 72                    .r
        dex                                     ; 8BEE CA                       .
        bpl     MapSystem_Branch_8BE9           ; 8BEF 10 F8                    ..
        brk                                     ; 8BF1 00                       .
        db   $0C,$6F                         ; 8BF2 0C 6F                    .o
; ----------------------------------------------------------------------------
MapSystem_Entry_8BF4:
        lda     $00                             ; 8BF4 A5 00                    ..
        ora     $01                             ; 8BF6 05 01                    ..
        beq     MapSystem_Branch_8C03           ; 8BF8 F0 09                    ..
        ldx     #$05                            ; 8BFA A2 05                    ..
        lda     #$0A                            ; 8BFC A9 0A                    ..
MapSystem_Branch_8BFE:
        sta     $02,x                           ; 8BFE 95 02                    ..
        dex                                     ; 8C00 CA                       .
        bpl     MapSystem_Branch_8BFE           ; 8C01 10 FB                    ..
MapSystem_Branch_8C03:
        rts                                     ; 8C03 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8C04:
        jsr     MapSystem_Entry_8BE7            ; 8C04 20 E7 8B                  ..
        ldy     #$03                            ; 8C07 A0 03                    ..
        ldx     #$02                            ; 8C09 A2 02                    ..
        stx     $00                             ; 8C0B 86 00                    ..
        sty     $01                             ; 8C0D 84 01                    ..
        lda     #$00                            ; 8C0F A9 00                    ..
        sta     $0F                             ; 8C11 85 0F                    ..
MapSystem_Branch_8C13:
        tax                                     ; 8C13 AA                       .
        lda     $02,x                           ; 8C14 B5 02                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 8C16 20 5A C6                  Z.
        inc     $00                             ; 8C19 E6 00                    ..
        inc     $0F                             ; 8C1B E6 0F                    ..
        lda     $0F                             ; 8C1D A5 0F                    ..
        cmp     #$06                            ; 8C1F C9 06                    ..
        bcc     MapSystem_Branch_8C13           ; 8C21 90 F0                    ..
        rts                                     ; 8C23 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8C24:
        lda     $29                             ; 8C24 A5 29                    .)
        clc                                     ; 8C26 18                       .
        adc     #$08                            ; 8C27 69 08                    i.
        sta     $29                             ; 8C29 85 29                    .)
        bpl     MapSystem_Entry_8C39            ; 8C2B 10 0C                    ..
        ldx     #$05                            ; 8C2D A2 05                    ..
        lda     #$00                            ; 8C2F A9 00                    ..
MapSystem_Branch_8C31:
        sta     $02,x                           ; 8C31 95 02                    ..
        dex                                     ; 8C33 CA                       .
        bpl     MapSystem_Branch_8C31           ; 8C34 10 FB                    ..
        jmp     MapSystem_Entry_8C45            ; 8C36 4C 45 8C                 LE.
; ----------------------------------------------------------------------------
MapSystem_Entry_8C39:
        ldx     #$02                            ; 8C39 A2 02                    ..
MapSystem_Branch_8C3B:
        lda     $36,x                           ; 8C3B B5 36                    .6
        sta     $72,x                           ; 8C3D 95 72                    .r
        dex                                     ; 8C3F CA                       .
        bpl     MapSystem_Branch_8C3B           ; 8C40 10 F9                    ..
        brk                                     ; 8C42 00                       .
        db   $0C,$6F                         ; 8C43 0C 6F                    .o
; ----------------------------------------------------------------------------
MapSystem_Entry_8C45:
        ldy     #$05                            ; 8C45 A0 05                    ..
        ldx     #$02                            ; 8C47 A2 02                    ..
        stx     $00                             ; 8C49 86 00                    ..
        sty     $01                             ; 8C4B 84 01                    ..
        lda     $02                             ; 8C4D A5 02                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 8C4F 20 5A C6                  Z.
        inc     $00                             ; 8C52 E6 00                    ..
        lda     #$00                            ; 8C54 A9 00                    ..
MapSystem_Entry_8C56:
        sta     $0F                             ; 8C56 85 0F                    ..
MapSystem_Branch_8C58:
        tax                                     ; 8C58 AA                       .
        lda     $03,x                           ; 8C59 B5 03                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 8C5B 20 5A C6                  Z.
        inc     $00                             ; 8C5E E6 00                    ..
        inc     $0F                             ; 8C60 E6 0F                    ..
        lda     $0F                             ; 8C62 A5 0F                    ..
        cmp     #$05                            ; 8C64 C9 05                    ..
        bcc     MapSystem_Branch_8C58           ; 8C66 90 F0                    ..
        rts                                     ; 8C68 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8C69:
        ldy     #$00                            ; 8C69 A0 00                    ..
        jsr     MapSystem_Entry_8D1F            ; 8C6B 20 1F 8D                  ..
        ldy     #$01                            ; 8C6E A0 01                    ..
        jsr     MapSystem_Entry_8D1A            ; 8C70 20 1A 8D                  ..
        ldy     #$02                            ; 8C73 A0 02                    ..
        jsr     MapSystem_Entry_8D1A            ; 8C75 20 1A 8D                  ..
        ldy     #$03                            ; 8C78 A0 03                    ..
        jsr     MapSystem_Entry_8D1A            ; 8C7A 20 1A 8D                  ..
        ldy     #$04                            ; 8C7D A0 04                    ..
        jsr     MapSystem_Entry_8D1A            ; 8C7F 20 1A 8D                  ..
        rts                                     ; 8C82 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8C83:
        ldy     #$00                            ; 8C83 A0 00                    ..
        jsr     MapSystem_Entry_8CD0            ; 8C85 20 D0 8C                  ..
        ldy     #$01                            ; 8C88 A0 01                    ..
        jsr     MapSystem_Entry_8CD0            ; 8C8A 20 D0 8C                  ..
        ldy     #$02                            ; 8C8D A0 02                    ..
        jsr     MapSystem_Entry_8CD0            ; 8C8F 20 D0 8C                  ..
        ldy     #$03                            ; 8C92 A0 03                    ..
        jsr     MapSystem_Entry_8CD0            ; 8C94 20 D0 8C                  ..
        ldy     #$04                            ; 8C97 A0 04                    ..
        jsr     MapSystem_Entry_8CD0            ; 8C99 20 D0 8C                  ..
        rts                                     ; 8C9C 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8C9D:
        ldy     #$00                            ; 8C9D A0 00                    ..
        jsr     MapSystem_Entry_8CB7            ; 8C9F 20 B7 8C                  ..
        ldy     #$01                            ; 8CA2 A0 01                    ..
        jsr     MapSystem_Entry_8CB7            ; 8CA4 20 B7 8C                  ..
        ldy     #$02                            ; 8CA7 A0 02                    ..
        jsr     MapSystem_Entry_8CB7            ; 8CA9 20 B7 8C                  ..
        ldy     #$03                            ; 8CAC A0 03                    ..
        jsr     MapSystem_Entry_8CB7            ; 8CAE 20 B7 8C                  ..
        ldy     #$04                            ; 8CB1 A0 04                    ..
        jsr     MapSystem_Entry_8CB7            ; 8CB3 20 B7 8C                  ..
        rts                                     ; 8CB6 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8CB7:
        lda     Bank17_UiPositions,y            ; 8CB7 B9 3E 8D                 .>.
        sta     $04F2                           ; 8CBA 8D F2 04                 ...
        jsr     MapSystem_Entry_8CFD            ; 8CBD 20 FD 8C                  ..
        brk                                     ; 8CC0 00                       .
        db   $12,$DF                         ; 8CC1 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8CC3:
        jsr     MapSystem_Entry_8CED            ; 8CC3 20 ED 8C                  ..
        brk                                     ; 8CC6 00                       .
        db   $12,$DF                         ; 8CC7 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8CC9:
        jsr     MapSystem_Entry_8CDD            ; 8CC9 20 DD 8C                  ..
        brk                                     ; 8CCC 00                       .
        db   $12,$DF                         ; 8CCD 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8CCF:
        rts                                     ; 8CCF 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8CD0:
        lda     Bank17_UiPositions,y            ; 8CD0 B9 3E 8D                 .>.
        sta     $04F2                           ; 8CD3 8D F2 04                 ...
        jsr     MapSystem_Entry_8CDD            ; 8CD6 20 DD 8C                  ..
        brk                                     ; 8CD9 00                       .
        db   $12,$DF                         ; 8CDA 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8CDC:
        rts                                     ; 8CDC 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8CDD:
        ldx     #$00                            ; 8CDD A2 00                    ..
MapSystem_Branch_8CDF:
        lda     Bank17_UiLayoutTemplateA,x      ; 8CDF BD C4 90                 ...
        sta     $0480,x                         ; 8CE2 9D 80 04                 ...
        inx                                     ; 8CE5 E8                       .
        cpx     #$2A                            ; 8CE6 E0 2A                    .*
        bne     MapSystem_Branch_8CDF           ; 8CE8 D0 F5                    ..
        jmp     MapSystem_Branch_8D0A           ; 8CEA 4C 0A 8D                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8CED:
        ldx     #$00                            ; 8CED A2 00                    ..
MapSystem_Branch_8CEF:
        lda     Bank17_UiLayoutTemplateB,x      ; 8CEF BD EE 90                 ...
        sta     $0480,x                         ; 8CF2 9D 80 04                 ...
        inx                                     ; 8CF5 E8                       .
        cpx     #$2A                            ; 8CF6 E0 2A                    .*
        bne     MapSystem_Branch_8CEF           ; 8CF8 D0 F5                    ..
        jmp     MapSystem_Branch_8D0A           ; 8CFA 4C 0A 8D                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8CFD:
        ldx     #$00                            ; 8CFD A2 00                    ..
MapSystem_Branch_8CFF:
        lda     Bank17_UiLayoutTemplateC,x      ; 8CFF BD 18 91                 ...
        sta     $0480,x                         ; 8D02 9D 80 04                 ...
        inx                                     ; 8D05 E8                       .
        cpx     #$2A                            ; 8D06 E0 2A                    .*
        bne     MapSystem_Branch_8CFF           ; 8D08 D0 F5                    ..
MapSystem_Branch_8D0A:
        lda     #$43                            ; 8D0A A9 43                    .C
        sta     $04F3                           ; 8D0C 8D F3 04                 ...
        ldx     #$0B                            ; 8D0F A2 0B                    ..
        lda     #$02                            ; 8D11 A9 02                    ..
MapSystem_Branch_8D13:
        sta     $04E0,x                         ; 8D13 9D E0 04                 ...
        dex                                     ; 8D16 CA                       .
        bpl     MapSystem_Branch_8D13           ; 8D17 10 FA                    ..
        rts                                     ; 8D19 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8D1A:
        ldx     #$0A                            ; 8D1A A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8D1C 20 0C C9                  ..
MapSystem_Entry_8D1F:
        jsr     MapSystem_Entry_8D43            ; 8D1F 20 43 8D                  C.
        jsr     MapSystem_Entry_8F5A            ; 8D22 20 5A 8F                  Z.
MapSystem_Entry_8D25:
        jsr     MapSystem_Entry_8F9E            ; 8D25 20 9E 8F                  ..
        jsr     MapSystem_Entry_8D58            ; 8D28 20 58 8D                  X.
        brk                                     ; 8D2B 00                       .
        db   $12,$DF                         ; 8D2C 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8D2E:
        jsr     MapSystem_Entry_8D5D            ; 8D2E 20 5D 8D                  ].
        brk                                     ; 8D31 00                       .
        db   $12,$DF                         ; 8D32 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8D34:
        jsr     MapSystem_Entry_8D67            ; 8D34 20 67 8D                  g.
        brk                                     ; 8D37 00                       .
        db   $B3,$FB                         ; 8D38 B3 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8D3A:
        brk                                     ; 8D3A 00                       .
        db   $12,$DF                         ; 8D3B 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8D3D:
        rts                                     ; 8D3D 60                       `
; ----------------------------------------------------------------------------
Bank17_UiPositions:
        db   $51,$54,$57,$5A,$5D             ; 8D3E 51 54 57 5A 5D           QTWZ]
; ----------------------------------------------------------------------------
MapSystem_Entry_8D43:
        lda     Bank17_UiPositions,y            ; 8D43 B9 3E 8D                 .>.
        sta     $04F2                           ; 8D46 8D F2 04                 ...
        jsr     MapSystem_Entry_8CED            ; 8D49 20 ED 8C                  ..
        brk                                     ; 8D4C 00                       .
        db   $12,$DF                         ; 8D4D 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8D4F:
        jsr     MapSystem_Entry_8CFD            ; 8D4F 20 FD 8C                  ..
        brk                                     ; 8D52 00                       .
        db   $12,$DF                         ; 8D53 12 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8D55:
        jmp     MapSystem_Entry_8F42            ; 8D55 4C 42 8F                 LB.
; ----------------------------------------------------------------------------
MapSystem_Entry_8D58:
        ldx     #$02                            ; 8D58 A2 02                    ..
        jmp     MapSystem_Entry_8D6E            ; 8D5A 4C 6E 8D                 Ln.
; ----------------------------------------------------------------------------
MapSystem_Entry_8D5D:
        ldx     #$01                            ; 8D5D A2 01                    ..
        jsr     MapSystem_Entry_8D6E            ; 8D5F 20 6E 8D                  n.
        ldx     #$03                            ; 8D62 A2 03                    ..
        jmp     MapSystem_Entry_8D6E            ; 8D64 4C 6E 8D                 Ln.
; ----------------------------------------------------------------------------
MapSystem_Entry_8D67:
        ldx     #$00                            ; 8D67 A2 00                    ..
        jsr     MapSystem_Entry_8D6E            ; 8D69 20 6E 8D                  n.
        ldx     #$04                            ; 8D6C A2 04                    ..
MapSystem_Entry_8D6E:
        ldy     #$07                            ; 8D6E A0 07                    ..
MapSystem_Branch_8D70:
        lda     $04B0,x                         ; 8D70 BD B0 04                 ...
        sta     $0480,x                         ; 8D73 9D 80 04                 ...
        txa                                     ; 8D76 8A                       .
        clc                                     ; 8D77 18                       .
        adc     #$06                            ; 8D78 69 06                    i.
        tax                                     ; 8D7A AA                       .
        dey                                     ; 8D7B 88                       .
        bne     MapSystem_Branch_8D70           ; 8D7C D0 F2                    ..
        rts                                     ; 8D7E 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8D7F:
        jsr     MapSystem_Entry_92C5            ; 8D7F 20 C5 92                  ..
        jsr     MapSystem_Entry_9314            ; 8D82 20 14 93                  ..
        brk                                     ; 8D85 00                       .
        db   $74,$4B                         ; 8D86 74 4B                    tK
; ----------------------------------------------------------------------------
MapSystem_Entry_8D88:
        jsr     MapSystem_Entry_8EA9            ; 8D88 20 A9 8E                  ..
MapSystem_Branch_8D8B:
        jsr     MapSystem_Entry_8E30            ; 8D8B 20 30 8E                  0.
        jsr     MapSystem_Entry_8237            ; 8D8E 20 37 82                  7.
        jsr     MapSystem_Entry_8DC4            ; 8D91 20 C4 8D                  ..
        jsr     MapSystem_Entry_8DA0            ; 8D94 20 A0 8D                  ..
        jsr     MapSystem_Entry_8DE5            ; 8D97 20 E5 8D                  ..
        jsr     WaitForNmi                      ; 8D9A 20 74 FF                  t.
        jmp     MapSystem_Branch_8D8B           ; 8D9D 4C 8B 8D                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8DA0:
        lda     ButtonsPressed                  ; 8DA0 A5 14                    ..
        and     #$03                            ; 8DA2 29 03                    ).
        bne     MapSystem_Branch_8DA7           ; 8DA4 D0 01                    ..
        rts                                     ; 8DA6 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8DA7:
        lda     $8A                             ; 8DA7 A5 8A                    ..
        cmp     #$A0                            ; 8DA9 C9 A0                    ..
        beq     MapSystem_Branch_8DBB           ; 8DAB F0 0E                    ..
        ldx     $29                             ; 8DAD A6 29                    .)
        inc     $2F,x                           ; 8DAF F6 2F                    ./
        jsr     MapSystem_Entry_8E52            ; 8DB1 20 52 8E                  R.
        lda     $34                             ; 8DB4 A5 34                    .4
        ora     #$03                            ; 8DB6 09 03                    ..
        sta     $34                             ; 8DB8 85 34                    .4
        rts                                     ; 8DBA 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8DBB:
        brk                                     ; 8DBB 00                       .
        db   $85,$FB                         ; 8DBC 85 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8DBE:
        jsr     MapSystem_Entry_8244            ; 8DBE 20 44 82                  D.
        pla                                     ; 8DC1 68                       h
        pla                                     ; 8DC2 68                       h
        rts                                     ; 8DC3 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8DC4:
        jsr     UpperFixedEngine_Entry_C8EC     ; 8DC4 20 EC C8                  ..
        ldy     ButtonsPressed                  ; 8DC7 A4 14                    ..
        beq     MapSystem_Branch_8DD8           ; 8DC9 F0 0D                    ..
        ldy     $35                             ; 8DCB A4 35                    .5
        bne     MapSystem_Branch_8DD1           ; 8DCD D0 02                    ..
        ldy     #$20                            ; 8DCF A0 20                    .
MapSystem_Branch_8DD1:
        dey                                     ; 8DD1 88                       .
        bne     MapSystem_Branch_8DD8           ; 8DD2 D0 04                    ..
        sty     $34                             ; 8DD4 84 34                    .4
        ldy     #$12                            ; 8DD6 A0 12                    ..
MapSystem_Branch_8DD8:
        sty     $35                             ; 8DD8 84 35                    .5
        lda     ButtonsPressed                  ; 8DDA A5 14                    ..
        and     $34                             ; 8DDC 25 34                    %4
        sta     $34                             ; 8DDE 85 34                    .4
        eor     ButtonsPressed                  ; 8DE0 45 14                    E.
        sta     ButtonsPressed                  ; 8DE2 85 14                    ..
        rts                                     ; 8DE4 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8DE5:
        lda     ButtonsPressed                  ; 8DE5 A5 14                    ..
        asl     a                               ; 8DE7 0A                       .
        bcs     MapSystem_Branch_8E0C           ; 8DE8 B0 22                    ."
        asl     a                               ; 8DEA 0A                       .
        bcs     MapSystem_Branch_8DF4           ; 8DEB B0 07                    ..
        asl     a                               ; 8DED 0A                       .
        bcs     MapSystem_Branch_8E26           ; 8DEE B0 36                    .6
        asl     a                               ; 8DF0 0A                       .
        bcs     MapSystem_Branch_8E2B           ; 8DF1 B0 38                    .8
        rts                                     ; 8DF3 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8DF4:
        lda     $34                             ; 8DF4 A5 34                    .4
        ora     #$40                            ; 8DF6 09 40                    .@
        sta     $34                             ; 8DF8 85 34                    .4
        lda     $8A                             ; 8DFA A5 8A                    ..
        cmp     #$A0                            ; 8DFC C9 A0                    ..
        beq     MapSystem_Branch_8E2B           ; 8DFE F0 2B                    .+
        lda     $29                             ; 8E00 A5 29                    .)
        beq     MapSystem_Branch_8E07           ; 8E02 F0 03                    ..
        dec     $29                             ; 8E04 C6 29                    .)
        rts                                     ; 8E06 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8E07:
        lda     #$04                            ; 8E07 A9 04                    ..
        sta     $29                             ; 8E09 85 29                    .)
        rts                                     ; 8E0B 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8E0C:
        lda     $34                             ; 8E0C A5 34                    .4
        ora     #$80                            ; 8E0E 09 80                    ..
        sta     $34                             ; 8E10 85 34                    .4
        lda     $8A                             ; 8E12 A5 8A                    ..
        cmp     #$A0                            ; 8E14 C9 A0                    ..
        beq     MapSystem_Branch_8E2B           ; 8E16 F0 13                    ..
        ldx     $29                             ; 8E18 A6 29                    .)
        cpx     #$04                            ; 8E1A E0 04                    ..
        beq     MapSystem_Branch_8E21           ; 8E1C F0 03                    ..
        inc     $29                             ; 8E1E E6 29                    .)
        rts                                     ; 8E20 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8E21:
        lda     #$00                            ; 8E21 A9 00                    ..
        sta     $29                             ; 8E23 85 29                    .)
        rts                                     ; 8E25 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8E26:
        lda     #$A0                            ; 8E26 A9 A0                    ..
        sta     $8A                             ; 8E28 85 8A                    ..
        rts                                     ; 8E2A 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8E2B:
        lda     #$90                            ; 8E2B A9 90                    ..
        sta     $8A                             ; 8E2D 85 8A                    ..
        rts                                     ; 8E2F 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8E30:
        ldx     #$02                            ; 8E30 A2 02                    ..
        lda     $8A                             ; 8E32 A5 8A                    ..
        sta     $0200                           ; 8E34 8D 00 02                 ...
        sta     $0204                           ; 8E37 8D 04 02                 ...
        cmp     #$90                            ; 8E3A C9 90                    ..
        bne     MapSystem_Branch_8E40           ; 8E3C D0 02                    ..
        ldx     $29                             ; 8E3E A6 29                    .)
MapSystem_Branch_8E40:
        lda     Bank17_SpritePositions,x        ; 8E40 BD 4D 8E                 .M.
        sta     $0203                           ; 8E43 8D 03 02                 ...
        clc                                     ; 8E46 18                       .
        adc     #$08                            ; 8E47 69 08                    i.
        sta     $0207                           ; 8E49 8D 07 02                 ...
        rts                                     ; 8E4C 60                       `
; ----------------------------------------------------------------------------
Bank17_SpritePositions:
        db   $08,$38,$68,$98,$C8             ; 8E4D 08 38 68 98 C8           .8h..
; ----------------------------------------------------------------------------
MapSystem_Entry_8E52:
        lda     $2F,x                           ; 8E52 B5 2F                    ./
        and     #$01                            ; 8E54 29 01                    ).
        bne     MapSystem_Branch_8E6B           ; 8E56 D0 13                    ..
        lda     #$28                            ; 8E58 A9 28                    .(
        sta     $2A                             ; 8E5A 85 2A                    .*
        lda     #$36                            ; 8E5C A9 36                    .6
        sta     $2B                             ; 8E5E 85 2B                    .+
        lda     #$25                            ; 8E60 A9 25                    .%
        sta     $2C                             ; 8E62 85 2C                    .,
        lda     #$3B                            ; 8E64 A9 3B                    .;
        sta     $2D                             ; 8E66 85 2D                    .-
        jmp     MapSystem_Branch_8E7B           ; 8E68 4C 7B 8E                 L{.
; ----------------------------------------------------------------------------
MapSystem_Branch_8E6B:
        lda     #$2C                            ; 8E6B A9 2C                    .,
        sta     $2A                             ; 8E6D 85 2A                    .*
        lda     #$33                            ; 8E6F A9 33                    .3
        sta     $2B                             ; 8E71 85 2B                    .+
        lda     #$30                            ; 8E73 A9 30                    .0
        sta     $2C                             ; 8E75 85 2C                    .,
        lda     #$28                            ; 8E77 A9 28                    .(
        sta     $2D                             ; 8E79 85 2D                    .-
MapSystem_Branch_8E7B:
        lda     Bank17_DisplayPositions,x       ; 8E7B BD A4 8E                 ...
        sta     $00                             ; 8E7E 85 00                    ..
        lda     #$12                            ; 8E80 A9 12                    ..
        sta     $01                             ; 8E82 85 01                    ..
        lda     $2A                             ; 8E84 A5 2A                    .*
        jsr     UpperFixedEngine_Entry_C65A     ; 8E86 20 5A C6                  Z.
        inc     $00                             ; 8E89 E6 00                    ..
        lda     $2B                             ; 8E8B A5 2B                    .+
        jsr     UpperFixedEngine_Entry_C65A     ; 8E8D 20 5A C6                  Z.
        inc     $00                             ; 8E90 E6 00                    ..
        lda     $2C                             ; 8E92 A5 2C                    .,
        jsr     UpperFixedEngine_Entry_C65A     ; 8E94 20 5A C6                  Z.
        inc     $00                             ; 8E97 E6 00                    ..
        lda     $2D                             ; 8E99 A5 2D                    .-
        jsr     UpperFixedEngine_Entry_C65A     ; 8E9B 20 5A C6                  Z.
        brk                                     ; 8E9E 00                       .
        db   $B6,$FB                         ; 8E9F B6 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8EA1:
        jmp     UpperFixedEngine_Entry_C626     ; 8EA1 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
Bank17_DisplayPositions:
        db   $03,$09,$0F,$15,$1B             ; 8EA4 03 09 0F 15 1B           .....
; ----------------------------------------------------------------------------
MapSystem_Entry_8EA9:
        lda     #$00                            ; 8EA9 A9 00                    ..
        sta     $29                             ; 8EAB 85 29                    .)
        sta     $34                             ; 8EAD 85 34                    .4
        sta     $35                             ; 8EAF 85 35                    .5
        lda     #$90                            ; 8EB1 A9 90                    ..
        sta     $8A                             ; 8EB3 85 8A                    ..
        ldx     #$00                            ; 8EB5 A2 00                    ..
MapSystem_Branch_8EB7:
        lda     Bank17_DisplayOamTemplate,x     ; 8EB7 BD CE 8E                 ...
        sta     $0200,x                         ; 8EBA 9D 00 02                 ...
        inx                                     ; 8EBD E8                       .
        cpx     #$08                            ; 8EBE E0 08                    ..
        bne     MapSystem_Branch_8EB7           ; 8EC0 D0 F5                    ..
        lda     #$00                            ; 8EC2 A9 00                    ..
        ldx     #$00                            ; 8EC4 A2 00                    ..
MapSystem_Branch_8EC6:
        sta     $2F,x                           ; 8EC6 95 2F                    ./
        inx                                     ; 8EC8 E8                       .
        cpx     #$05                            ; 8EC9 E0 05                    ..
        bne     MapSystem_Branch_8EC6           ; 8ECB D0 F9                    ..
        rts                                     ; 8ECD 60                       `
; ----------------------------------------------------------------------------
Bank17_DisplayOamTemplate:
        db   $90,$01,$00,$08,$90,$02,$00,$10 ; 8ECE 90 01 00 08 90 02 00 10  ........
; ----------------------------------------------------------------------------
MapSystem_Entry_8ED6:
        jsr     MapSystem_Entry_8F37            ; 8ED6 20 37 8F                  7.
        ldy     #$00                            ; 8ED9 A0 00                    ..
MapSystem_Branch_8EDB:
        lda     $2F,y                           ; 8EDB B9 2F 00                 ./.
        and     #$01                            ; 8EDE 29 01                    ).
        bne     MapSystem_Branch_8EE9           ; 8EE0 D0 07                    ..
        tya                                     ; 8EE2 98                       .
        pha                                     ; 8EE3 48                       H
        jsr     MapSystem_Entry_8CB7            ; 8EE4 20 B7 8C                  ..
        pla                                     ; 8EE7 68                       h
        tay                                     ; 8EE8 A8                       .
MapSystem_Branch_8EE9:
        iny                                     ; 8EE9 C8                       .
        cpy     #$05                            ; 8EEA C0 05                    ..
        bne     MapSystem_Branch_8EDB           ; 8EEC D0 ED                    ..
        ldx     #$00                            ; 8EEE A2 00                    ..
        ldy     #$05                            ; 8EF0 A0 05                    ..
MapSystem_Branch_8EF2:
        lda     $2F,x                           ; 8EF2 B5 2F                    ./
        and     #$01                            ; 8EF4 29 01                    ).
        bne     MapSystem_Branch_8F07           ; 8EF6 D0 0F                    ..
        lda     $7600,x                         ; 8EF8 BD 00 76                 ..v
        pha                                     ; 8EFB 48                       H
        lda     $7600,y                         ; 8EFC B9 00 76                 ..v
        sta     $7600,x                         ; 8EFF 9D 00 76                 ..v
        pla                                     ; 8F02 68                       h
        sta     $7600,y                         ; 8F03 99 00 76                 ..v
        iny                                     ; 8F06 C8                       .
MapSystem_Branch_8F07:
        inx                                     ; 8F07 E8                       .
        cpx     #$05                            ; 8F08 E0 05                    ..
        bne     MapSystem_Branch_8EF2           ; 8F0A D0 E6                    ..
        ldy     #$00                            ; 8F0C A0 00                    ..
MapSystem_Entry_8F0E:
        lda     $2F,y                           ; 8F0E B9 2F 00                 ./.
        and     #$01                            ; 8F11 29 01                    ).
        bne     MapSystem_Branch_8F18           ; 8F13 D0 03                    ..
        jsr     MapSystem_Entry_8F1E            ; 8F15 20 1E 8F                  ..
MapSystem_Branch_8F18:
        iny                                     ; 8F18 C8                       .
        cpy     #$05                            ; 8F19 C0 05                    ..
        bne     MapSystem_Entry_8F0E            ; 8F1B D0 F1                    ..
        rts                                     ; 8F1D 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8F1E:
        ldx     #$0A                            ; 8F1E A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8F20 20 0C C9                  ..
        tya                                     ; 8F23 98                       .
        pha                                     ; 8F24 48                       H
        jsr     MapSystem_Entry_8D43            ; 8F25 20 43 8D                  C.
        pla                                     ; 8F28 68                       h
        pha                                     ; 8F29 48                       H
        tay                                     ; 8F2A A8                       .
        lda     $7600,y                         ; 8F2B B9 00 76                 ..v
        jsr     MapSystem_Entry_8F8B            ; 8F2E 20 8B 8F                  ..
        jsr     MapSystem_Entry_8D25            ; 8F31 20 25 8D                  %.
        pla                                     ; 8F34 68                       h
        tay                                     ; 8F35 A8                       .
        rts                                     ; 8F36 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8F37:
        lda     #$F7                            ; 8F37 A9 F7                    ..
        sta     $0200                           ; 8F39 8D 00 02                 ...
        sta     $0204                           ; 8F3C 8D 04 02                 ...
        jmp     WaitForNmi                      ; 8F3F 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapSystem_Entry_8F42:
        ldx     #$00                            ; 8F42 A2 00                    ..
MapSystem_Branch_8F44:
        lda     Bank17_UiLayoutTemplate,x       ; 8F44 BD 9A 90                 ...
        sta     $04B0,x                         ; 8F47 9D B0 04                 ...
        inx                                     ; 8F4A E8                       .
        cpx     #$2A                            ; 8F4B E0 2A                    .*
        bne     MapSystem_Branch_8F44           ; 8F4D D0 F5                    ..
        ldx     #$0B                            ; 8F4F A2 0B                    ..
        lda     #$00                            ; 8F51 A9 00                    ..
MapSystem_Branch_8F53:
        sta     $04E0,x                         ; 8F53 9D E0 04                 ...
        dex                                     ; 8F56 CA                       .
        bpl     MapSystem_Branch_8F53           ; 8F57 10 FA                    ..
        rts                                     ; 8F59 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8F5A:
        ldx     $2E                             ; 8F5A A6 2E                    ..
        lda     $7600,x                         ; 8F5C BD 00 76                 ..v
        inc     $2E                             ; 8F5F E6 2E                    ..
        jmp     MapSystem_Entry_8F8B            ; 8F61 4C 8B 8F                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_8F64:
        lda     #$00                            ; 8F64 A9 00                    ..
        sta     $2E                             ; 8F66 85 2E                    ..
        lda     #$C8                            ; 8F68 A9 C8                    ..
        sta     $29                             ; 8F6A 85 29                    .)
MapSystem_Branch_8F6C:
        lda     #$35                            ; 8F6C A9 35                    .5
        brk                                     ; 8F6E 00                       .
        db   $17,$0F                         ; 8F6F 17 0F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8F71:
        tax                                     ; 8F71 AA                       .
        lda     #$35                            ; 8F72 A9 35                    .5
        brk                                     ; 8F74 00                       .
        db   $17,$0F                         ; 8F75 17 0F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_8F77:
        tay                                     ; 8F77 A8                       .
        lda     $7600,x                         ; 8F78 BD 00 76                 ..v
        pha                                     ; 8F7B 48                       H
        lda     $7600,y                         ; 8F7C B9 00 76                 ..v
        sta     $7600,x                         ; 8F7F 9D 00 76                 ..v
        pla                                     ; 8F82 68                       h
        sta     $7600,y                         ; 8F83 99 00 76                 ..v
        dec     $29                             ; 8F86 C6 29                    .)
        bne     MapSystem_Branch_8F6C           ; 8F88 D0 E2                    ..
        rts                                     ; 8F8A 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_8F8B:
        cmp     #$34                            ; 8F8B C9 34                    .4
        bcs     MapSystem_Branch_8F97           ; 8F8D B0 08                    ..
        pha                                     ; 8F8F 48                       H
        and     #$03                            ; 8F90 29 03                    ).
        tax                                     ; 8F92 AA                       .
        pla                                     ; 8F93 68                       h
        lsr     a                               ; 8F94 4A                       J
        lsr     a                               ; 8F95 4A                       J
        rts                                     ; 8F96 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8F97:
        ldx     #$FF                            ; 8F97 A2 FF                    ..
        txa                                     ; 8F99 8A                       .
        rts                                     ; 8F9A 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_8F9B:
        jmp     MapSystem_Branch_905D           ; 8F9B 4C 5D 90                 L].
; ----------------------------------------------------------------------------
MapSystem_Entry_8F9E:
        cpx     #$FF                            ; 8F9E E0 FF                    ..
        beq     MapSystem_Branch_8F9B           ; 8FA0 F0 F9                    ..
        clc                                     ; 8FA2 18                       .
        adc     #$8D                            ; 8FA3 69 8D                    i.
        sta     $04B0                           ; 8FA5 8D B0 04                 ...
        adc     #$0D                            ; 8FA8 69 0D                    i.
        sta     $04D8                           ; 8FAA 8D D8 04                 ...
        cmp     #$A4                            ; 8FAD C9 A4                    ..
        bcs     MapSystem_Branch_9021           ; 8FAF B0 70                    .p
        cmp     #$9A                            ; 8FB1 C9 9A                    ..
        beq     MapSystem_Branch_8FEC           ; 8FB3 F0 37                    .7
        sbc     #$9B                            ; 8FB5 E9 9B                    ..
        asl     a                               ; 8FB7 0A                       .
        tay                                     ; 8FB8 A8                       .
        txa                                     ; 8FB9 8A                       .
        pha                                     ; 8FBA 48                       H
        clc                                     ; 8FBB 18                       .
        adc     #$A7                            ; 8FBC 69 A7                    i.
        sta     $2C                             ; 8FBE 85 2C                    .,
        lda     Bank17_UiBitPatterns,y          ; 8FC0 B9 88 90                 ...
        sta     $2A                             ; 8FC3 85 2A                    .*
        lda     $9089,y                         ; 8FC5 B9 89 90                 ...
        sta     $2B                             ; 8FC8 85 2B                    .+
        lda     #$05                            ; 8FCA A9 05                    ..
        sta     $2D                             ; 8FCC 85 2D                    .-
        ldx     #$07                            ; 8FCE A2 07                    ..
        lda     $2C                             ; 8FD0 A5 2C                    .,
MapSystem_Branch_8FD2:
        ldy     #$03                            ; 8FD2 A0 03                    ..
MapSystem_Branch_8FD4:
        asl     $2B                             ; 8FD4 06 2B                    .+
        rol     $2A                             ; 8FD6 26 2A                    &*
        bcc     MapSystem_Branch_8FDD           ; 8FD8 90 03                    ..
        sta     $04B0,x                         ; 8FDA 9D B0 04                 ...
MapSystem_Branch_8FDD:
        inx                                     ; 8FDD E8                       .
        dey                                     ; 8FDE 88                       .
        bne     MapSystem_Branch_8FD4           ; 8FDF D0 F3                    ..
        inx                                     ; 8FE1 E8                       .
        inx                                     ; 8FE2 E8                       .
        inx                                     ; 8FE3 E8                       .
        dec     $2D                             ; 8FE4 C6 2D                    .-
        bne     MapSystem_Branch_8FD2           ; 8FE6 D0 EA                    ..
        pla                                     ; 8FE8 68                       h
        jmp     MapSystem_Branch_9016           ; 8FE9 4C 16 90                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_8FEC:
        txa                                     ; 8FEC 8A                       .
        sta     $2C                             ; 8FED 85 2C                    .,
        asl     a                               ; 8FEF 0A                       .
        asl     a                               ; 8FF0 0A                       .
        sta     $29                             ; 8FF1 85 29                    .)
        asl     a                               ; 8FF3 0A                       .
        clc                                     ; 8FF4 18                       .
        adc     $29                             ; 8FF5 65 29                    e)
        tax                                     ; 8FF7 AA                       .
        lda     #$03                            ; 8FF8 A9 03                    ..
        sta     $2B                             ; 8FFA 85 2B                    .+
        ldy     #$0C                            ; 8FFC A0 0C                    ..
MapSystem_Branch_8FFE:
        lda     #$04                            ; 8FFE A9 04                    ..
        sta     $2A                             ; 9000 85 2A                    .*
MapSystem_Branch_9002:
        lda     Bank17_UiTileRecordsA,x         ; 9002 BD 42 91                 .B.
        sta     $04B0,y                         ; 9005 99 B0 04                 ...
        inx                                     ; 9008 E8                       .
        iny                                     ; 9009 C8                       .
        dec     $2A                             ; 900A C6 2A                    .*
        bne     MapSystem_Branch_9002           ; 900C D0 F4                    ..
        iny                                     ; 900E C8                       .
        iny                                     ; 900F C8                       .
        dec     $2B                             ; 9010 C6 2B                    .+
        bne     MapSystem_Branch_8FFE           ; 9012 D0 EA                    ..
        lda     $2C                             ; 9014 A5 2C                    .,
MapSystem_Branch_9016:
        and     #$01                            ; 9016 29 01                    ).
MapSystem_Branch_9018:
        ldx     #$0B                            ; 9018 A2 0B                    ..
MapSystem_Branch_901A:
        sta     $04E0,x                         ; 901A 9D E0 04                 ...
        dex                                     ; 901D CA                       .
        bpl     MapSystem_Branch_901A           ; 901E 10 FA                    ..
        rts                                     ; 9020 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_9021:
        stx     $2B                             ; 9021 86 2B                    .+
        sbc     #$A4                            ; 9023 E9 A4                    ..
        asl     a                               ; 9025 0A                       .
        asl     a                               ; 9026 0A                       .
        sta     $29                             ; 9027 85 29                    .)
        asl     a                               ; 9029 0A                       .
        clc                                     ; 902A 18                       .
        adc     $29                             ; 902B 65 29                    e)
        tax                                     ; 902D AA                       .
        ldy     #$12                            ; 902E A0 12                    ..
        lda     #$03                            ; 9030 A9 03                    ..
        sta     $29                             ; 9032 85 29                    .)
MapSystem_Branch_9034:
        lda     #$04                            ; 9034 A9 04                    ..
        sta     $2A                             ; 9036 85 2A                    .*
MapSystem_Branch_9038:
        lda     Bank17_UiTileRecordsB,x         ; 9038 BD 72 91                 .r.
        sta     $04B0,y                         ; 903B 99 B0 04                 ...
        inx                                     ; 903E E8                       .
        iny                                     ; 903F C8                       .
        dec     $2A                             ; 9040 C6 2A                    .*
        bne     MapSystem_Branch_9038           ; 9042 D0 F4                    ..
        iny                                     ; 9044 C8                       .
        iny                                     ; 9045 C8                       .
        dec     $29                             ; 9046 C6 29                    .)
        bne     MapSystem_Branch_9034           ; 9048 D0 EA                    ..
        lda     $2B                             ; 904A A5 2B                    .+
        clc                                     ; 904C 18                       .
        adc     #$A7                            ; 904D 69 A7                    i.
        sta     $04BD                           ; 904F 8D BD 04                 ...
        sta     $04BE                           ; 9052 8D BE 04                 ...
        sta     $04BF                           ; 9055 8D BF 04                 ...
        lda     $2B                             ; 9058 A5 2B                    .+
        jmp     MapSystem_Branch_9016           ; 905A 4C 16 90                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_905D:
        ldx     #$AB                            ; 905D A2 AB                    ..
        stx     $04B0                           ; 905F 8E B0 04                 ...
        inx                                     ; 9062 E8                       .
        stx     $04D8                           ; 9063 8E D8 04                 ...
        ldx     #$00                            ; 9066 A2 00                    ..
        ldy     #$06                            ; 9068 A0 06                    ..
        lda     #$05                            ; 906A A9 05                    ..
        sta     $29                             ; 906C 85 29                    .)
MapSystem_Branch_906E:
        lda     #$05                            ; 906E A9 05                    ..
        sta     $2A                             ; 9070 85 2A                    .*
MapSystem_Branch_9072:
        lda     Bank17_UiTileRecordsC,x         ; 9072 BD 96 91                 ...
        sta     $04B0,y                         ; 9075 99 B0 04                 ...
        inx                                     ; 9078 E8                       .
        iny                                     ; 9079 C8                       .
        dec     $2A                             ; 907A C6 2A                    .*
        bne     MapSystem_Branch_9072           ; 907C D0 F4                    ..
        iny                                     ; 907E C8                       .
        dec     $29                             ; 907F C6 29                    .)
        bne     MapSystem_Branch_906E           ; 9081 D0 EB                    ..
        lda     #$03                            ; 9083 A9 03                    ..
        jmp     MapSystem_Branch_9018           ; 9085 4C 18 90                 L..
; ----------------------------------------------------------------------------
Bank17_UiBitPatterns:
        db   $40                             ; 9088 40                       @
        db   $04,$41,$04,$A0,$0A,$A1,$0A,$A2 ; 9089 04 41 04 A0 0A A1 0A A2  .A......
        db   $8A,$AA,$8A,$AA,$AA,$B5,$5A,$B6 ; 9091 8A AA 8A AA AA B5 5A B6  ......Z.
        db   $DA                             ; 9099 DA                       .
Bank17_UiLayoutTemplate:
        db   $8D,$80,$80,$80,$B0,$00,$80,$80 ; 909A 8D 80 80 80 B0 00 80 80  ........
        db   $80,$80,$80,$00,$80,$80,$80,$80 ; 90A2 80 80 80 00 80 80 80 80  ........
        db   $80,$00,$80,$80,$80,$80,$80,$00 ; 90AA 80 00 80 80 80 80 80 00  ........
        db   $80,$80,$80,$80,$80,$00,$80,$80 ; 90B2 80 80 80 80 80 00 80 80  ........
        db   $80,$80,$80,$00,$B1,$80,$80,$80 ; 90BA 80 80 80 00 B1 80 80 80  ........
        db   $9A,$00                         ; 90C2 9A 00                    ..
Bank17_UiLayoutTemplateA:
        db   $F7,$F8,$F8,$F8,$F9,$00,$FA,$FB ; 90C4 F7 F8 F8 F8 F9 00 FA FB  ........
        db   $FB,$FB,$FC,$00,$FA,$FB,$FB,$FB ; 90CC FB FB FC 00 FA FB FB FB  ........
        db   $FC,$00,$FA,$FB,$FB,$FB,$FC,$00 ; 90D4 FC 00 FA FB FB FB FC 00  ........
        db   $FA,$FB,$FB,$FB,$FC,$00,$FA,$FB ; 90DC FA FB FB FB FC 00 FA FB  ........
        db   $FB,$FB,$FC,$00,$FD,$FE,$FE,$FE ; 90E4 FB FB FC 00 FD FE FE FE  ........
        db   $FF,$00                         ; 90EC FF 00                    ..
Bank17_UiLayoutTemplateB:
        db   $00,$F7,$F8,$F9,$00,$00,$00,$FA ; 90EE 00 F7 F8 F9 00 00 00 FA  ........
        db   $FB,$FC,$00,$00,$00,$FA,$FB,$FC ; 90F6 FB FC 00 00 00 FA FB FC  ........
        db   $00,$00,$00,$FA,$FB,$FC,$00,$00 ; 90FE 00 00 00 FA FB FC 00 00  ........
        db   $00,$FA,$FB,$FC,$00,$00,$00,$FA ; 9106 00 FA FB FC 00 00 00 FA  ........
        db   $FB,$FC,$00,$00,$00,$FD,$FE,$FF ; 910E FB FC 00 00 00 FD FE FF  ........
        db   $00,$00                         ; 9116 00 00                    ..
Bank17_UiLayoutTemplateC:
        db   $00,$00,$F8,$00,$00,$00,$00,$00 ; 9118 00 00 F8 00 00 00 00 00  ........
        db   $FB,$00,$00,$00,$00,$00,$FB,$00 ; 9120 FB 00 00 00 00 00 FB 00  ........
        db   $00,$00,$00,$00,$FB,$00,$00,$00 ; 9128 00 00 00 00 FB 00 00 00  ........
        db   $00,$00,$FB,$00,$00,$00,$00,$00 ; 9130 00 00 FB 00 00 00 00 00  ........
        db   $FB,$00,$00,$00,$00,$00,$FE,$00 ; 9138 FB 00 00 00 00 00 FE 00  ........
        db   $00,$00                         ; 9140 00 00                    ..
Bank17_UiTileRecordsA:
        db   $80,$80,$B9,$BA,$80,$BB,$BC,$BD ; 9142 80 80 B9 BA 80 BB BC BD  ........
        db   $80,$BE,$BF,$80,$80,$C0,$C1,$C2 ; 914A 80 BE BF 80 80 C0 C1 C2  ........
        db   $80,$C3,$C4,$C5,$80,$C6,$C7,$C8 ; 9152 80 C3 C4 C5 80 C6 C7 C8  ........
        db   $80,$80,$B2,$80,$80,$B3,$B4,$B5 ; 915A 80 80 B2 80 80 B3 B4 B5  ........
        db   $80,$B6,$B7,$B8,$80,$C9,$CA,$CB ; 9162 80 B6 B7 B8 80 C9 CA CB  ........
        db   $80,$CC,$CD,$CE,$80,$CF,$D0,$D1 ; 916A 80 CC CD CE 80 CF D0 D1  ........
Bank17_UiTileRecordsB:
        db   $80,$80,$D2,$D3,$80,$D4,$D5,$80 ; 9172 80 80 D2 D3 80 D4 D5 80  ........
        db   $80,$80,$80,$80,$80,$D6,$D7,$D8 ; 917A 80 80 80 80 80 D6 D7 D8  ........
        db   $80,$D9,$DA,$DB,$80,$80,$DC,$DD ; 9182 80 D9 DA DB 80 80 DC DD  ........
        db   $80,$DE,$DF,$E0,$80,$E1,$E2,$E3 ; 918A 80 DE DF E0 80 E1 E2 E3  ........
        db   $80,$80,$80,$80                 ; 9192 80 80 80 80              ....
Bank17_UiTileRecordsC:
        db   $80,$AD,$AE,$AF,$80,$E4,$E5,$E6 ; 9196 80 AD AE AF 80 E4 E5 E6  ........
        db   $E7,$E8,$E9,$EA,$EB,$EC,$ED,$EE ; 919E E7 E8 E9 EA EB EC ED EE  ........
        db   $EF,$F0,$F1,$F2,$F3,$F4,$F5,$F6 ; 91A6 EF F0 F1 F2 F3 F4 F5 F6  ........
        db   $80                             ; 91AE 80                       .
; ----------------------------------------------------------------------------
MapSystem_Entry_91AF:
        lda     #$01                            ; 91AF A9 01                    ..
        sta     $04F4                           ; 91B1 8D F4 04                 ...
        lda     #$80                            ; 91B4 A9 80                    ..
        sta     $0553                           ; 91B6 8D 53 05                 .S.
        lda     #$0A                            ; 91B9 A9 0A                    ..
        sta     $05FC                           ; 91BB 8D FC 05                 ...
        lda     #$43                            ; 91BE A9 43                    .C
        sta     $04F3                           ; 91C0 8D F3 04                 ...
        lda     #$00                            ; 91C3 A9 00                    ..
        ldx     #$5F                            ; 91C5 A2 5F                    ._
MapSystem_Branch_91C7:
        sta     $0480,x                         ; 91C7 9D 80 04                 ...
        dex                                     ; 91CA CA                       .
        bpl     MapSystem_Branch_91C7           ; 91CB 10 FA                    ..
        lda     #$35                            ; 91CD A9 35                    .5
        brk                                     ; 91CF 00                       .
        db   $17,$0F                         ; 91D0 17 0F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_91D2:
        tax                                     ; 91D2 AA                       .
        ldy     #$34                            ; 91D3 A0 34                    .4
MapSystem_Branch_91D5:
        txa                                     ; 91D5 8A                       .
        sta     $7600,y                         ; 91D6 99 00 76                 ..v
        dey                                     ; 91D9 88                       .
        bmi     MapSystem_Branch_91E6           ; 91DA 30 0A                    0.
        inx                                     ; 91DC E8                       .
        cpx     #$35                            ; 91DD E0 35                    .5
        bcc     MapSystem_Branch_91D5           ; 91DF 90 F4                    ..
        ldx     #$00                            ; 91E1 A2 00                    ..
        jmp     MapSystem_Branch_91D5           ; 91E3 4C D5 91                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_91E6:
        rts                                     ; 91E6 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_91E7:
        ldx     #$3B                            ; 91E7 A2 3B                    .;
MapSystem_Branch_91E9:
        lda     Bank17_UiLayoutData,x           ; 91E9 BD 78 92                 .x.
        sta     $0480,x                         ; 91EC 9D 80 04                 ...
        dex                                     ; 91EF CA                       .
        bpl     MapSystem_Branch_91E9           ; 91F0 10 F7                    ..
        lda     #$10                            ; 91F2 A9 10                    ..
        sta     $04F2                           ; 91F4 8D F2 04                 ...
        lda     #$35                            ; 91F7 A9 35                    .5
        sta     $04F3                           ; 91F9 8D F3 04                 ...
        brk                                     ; 91FC 00                       .
        db   $13,$DF                         ; 91FD 13 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_91FF:
        ldx     #$00                            ; 91FF A2 00                    ..
MapSystem_Branch_9201:
        txa                                     ; 9201 8A                       .
        pha                                     ; 9202 48                       H
        jsr     MapSystem_Entry_8286            ; 9203 20 86 82                  ..
        pla                                     ; 9206 68                       h
        tax                                     ; 9207 AA                       .
        inx                                     ; 9208 E8                       .
        cpx     #$09                            ; 9209 E0 09                    ..
        bne     MapSystem_Branch_9201           ; 920B D0 F4                    ..
        jsr     UpperFixedEngine_Entry_C5AF     ; 920D 20 AF C5                  ..
        lda     PPUSTATUS                       ; 9210 AD 02 20                 ..
        ldx     #$00                            ; 9213 A2 00                    ..
        ldy     #$00                            ; 9215 A0 00                    ..
MapSystem_Branch_9217:
        lda     $9249,x                         ; 9217 BD 49 92                 .I.
        sta     PPUADDR                         ; 921A 8D 06 20                 ..
        lda     Bank17_PpuAddressTable,x        ; 921D BD 48 92                 .H.
        sta     PPUADDR                         ; 9220 8D 06 20                 ..
MapSystem_Branch_9223:
        lda     Bank17_UiStrings,y              ; 9223 B9 EC 82                 ...
        cmp     #$FF                            ; 9226 C9 FF                    ..
        beq     MapSystem_Branch_9231           ; 9228 F0 07                    ..
        sta     PPUDATA                         ; 922A 8D 07 20                 ..
        iny                                     ; 922D C8                       .
        jmp     MapSystem_Branch_9223           ; 922E 4C 23 92                 L#.
; ----------------------------------------------------------------------------
MapSystem_Branch_9231:
        iny                                     ; 9231 C8                       .
        inx                                     ; 9232 E8                       .
        inx                                     ; 9233 E8                       .
        cpx     #$1E                            ; 9234 E0 1E                    ..
        bcc     MapSystem_Branch_9217           ; 9236 90 DF                    ..
        jsr     UpperFixedEngine_Entry_C58F     ; 9238 20 8F C5                  ..
        jsr     MapSystem_Entry_92B4            ; 923B 20 B4 92                  ..
        jsr     MapSystem_Entry_9346            ; 923E 20 46 93                  F.
        rts                                     ; 9241 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9242:
        lda     #$04                            ; 9242 A9 04                    ..
        brk                                     ; 9244 00                       .
        db   $06,$6F                         ; 9245 06 6F                    .o
; ----------------------------------------------------------------------------
MapSystem_Entry_9247:
        rts                                     ; 9247 60                       `
; ----------------------------------------------------------------------------
Bank17_PpuAddressTable:
        db   $44                             ; 9248 44                       D
        db   $24,$84,$24,$C4,$24,$04,$25,$44 ; 9249 24 84 24 C4 24 04 25 44  $.$.$.%D
        db   $25,$84,$25,$C4,$25,$04,$26,$44 ; 9251 25 84 25 C4 25 04 26 44  %.%.%.&D
        db   $26,$84,$26,$A5,$26,$C4,$26,$E5 ; 9259 26 84 26 A5 26 C4 26 E5  &.&.&.&.
        db   $26,$04,$27,$44,$27             ; 9261 26 04 27 44 27           &.'D'
; ----------------------------------------------------------------------------
MapSystem_Entry_9266:
        ldx     #$00                            ; 9266 A2 00                    ..
MapSystem_Branch_9268:
        txa                                     ; 9268 8A                       .
        pha                                     ; 9269 48                       H
        jsr     MapSystem_Entry_82A9            ; 926A 20 A9 82                  ..
        pla                                     ; 926D 68                       h
        tax                                     ; 926E AA                       .
        inx                                     ; 926F E8                       .
        cpx     #$09                            ; 9270 E0 09                    ..
        bne     MapSystem_Branch_9268           ; 9272 D0 F4                    ..
        jsr     UpperFixedEngine_Entry_C62D     ; 9274 20 2D C6                  -.
        rts                                     ; 9277 60                       `
; ----------------------------------------------------------------------------
Bank17_UiLayoutData:
        db   $00,$86,$85,$85,$85,$85,$85,$85 ; 9278 00 86 85 85 85 85 85 85  ........
        db   $89,$00,$00,$84,$00,$00,$00,$00 ; 9280 89 00 00 84 00 00 00 00  ........
        db   $00,$00,$88,$00,$00,$84,$00,$00 ; 9288 00 00 88 00 00 84 00 00  ........
        db   $00,$00,$00,$00,$88,$00,$00,$84 ; 9290 00 00 00 00 88 00 00 84  ........
        db   $00,$00,$00,$00,$00,$01,$88,$00 ; 9298 00 00 00 00 00 01 88 00  ........
        db   $00,$87,$8A,$8A,$8A,$8A,$8A,$8A ; 92A0 00 87 8A 8A 8A 8A 8A 8A  ........
        db   $8B,$00,$00,$00,$00,$00,$00,$00 ; 92A8 8B 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00                 ; 92B0 00 00 00 00              ....
; ----------------------------------------------------------------------------
MapSystem_Entry_92B4:
        lda     #$91                            ; 92B4 A9 91                    ..
        jsr     MapSystem_Entry_9331            ; 92B6 20 31 93                  1.
        brk                                     ; 92B9 00                       .
        db   $13,$DF                         ; 92BA 13 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_92BC:
        lda     #$A1                            ; 92BC A9 A1                    ..
        sta     $04F2                           ; 92BE 8D F2 04                 ...
        brk                                     ; 92C1 00                       .
        db   $13,$DF                         ; 92C2 13 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_92C4:
        rts                                     ; 92C4 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_92C5:
        lda     #$91                            ; 92C5 A9 91                    ..
        jsr     MapSystem_Entry_9331            ; 92C7 20 31 93                  1.
MapSystem_Branch_92CA:
        lda     Bank17_UiLayoutDataSmall,x      ; 92CA BD D9 92                 ...
        sta     $0480,x                         ; 92CD 9D 80 04                 ...
        inx                                     ; 92D0 E8                       .
        cpx     #$1D                            ; 92D1 E0 1D                    ..
        bcc     MapSystem_Branch_92CA           ; 92D3 90 F5                    ..
        brk                                     ; 92D5 00                       .
        db   $13,$DF                         ; 92D6 13 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_92D8:
        rts                                     ; 92D8 60                       `
; ----------------------------------------------------------------------------
Bank17_UiLayoutDataSmall:
        db   $00,$28,$36,$25,$3B,$00,$00,$28 ; 92D9 00 28 36 25 3B 00 00 28  .(6%;..(
        db   $36,$25,$3B,$00,$00,$28,$36,$25 ; 92E1 36 25 3B 00 00 28 36 25  6%;..(6%
        db   $3B,$00,$00,$28,$36,$25,$3B,$00 ; 92E9 3B 00 00 28 36 25 3B 00  ;..(6%;.
        db   $00,$28,$36,$25,$3B             ; 92F1 00 28 36 25 3B           .(6%;
; ----------------------------------------------------------------------------
MapSystem_Entry_92F6:
        lda     #$A1                            ; 92F6 A9 A1                    ..
        jsr     MapSystem_Entry_9331            ; 92F8 20 31 93                  1.
        ldx     #$09                            ; 92FB A2 09                    ..
MapSystem_Branch_92FD:
        lda     Bank17_UiLayoutDataShort,x      ; 92FD BD 0A 93                 ...
        sta     $048A,x                         ; 9300 9D 8A 04                 ...
        dex                                     ; 9303 CA                       .
        bpl     MapSystem_Branch_92FD           ; 9304 10 F7                    ..
        brk                                     ; 9306 00                       .
        db   $13,$DF                         ; 9307 13 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9309:
        rts                                     ; 9309 60                       `
; ----------------------------------------------------------------------------
Bank17_UiLayoutDataShort:
        db   $3D,$0F,$1D,$00,$00,$00,$00,$32 ; 930A 3D 0F 1D 00 00 00 00 32  =......2
        db   $19,$00                         ; 9312 19 00                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9314:
        lda     #$A1                            ; 9314 A9 A1                    ..
        jsr     MapSystem_Entry_9331            ; 9316 20 31 93                  1.
        lda     #$28                            ; 9319 A9 28                    .(
        sta     $048D                           ; 931B 8D 8D 04                 ...
        lda     #$29                            ; 931E A9 29                    .)
        sta     $048E                           ; 9320 8D 8E 04                 ...
        lda     #$25                            ; 9323 A9 25                    .%
        sta     $048F                           ; 9325 8D 8F 04                 ...
        lda     #$30                            ; 9328 A9 30                    .0
        sta     $0490                           ; 932A 8D 90 04                 ...
        brk                                     ; 932D 00                       .
        db   $13,$DF                         ; 932E 13 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9330:
        rts                                     ; 9330 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9331:
        sta     $04F2                           ; 9331 8D F2 04                 ...
        lda     #$1F                            ; 9334 A9 1F                    ..
        sta     $04F3                           ; 9336 8D F3 04                 ...
        ldx     #$3A                            ; 9339 A2 3A                    .:
        lda     #$00                            ; 933B A9 00                    ..
MapSystem_Branch_933D:
        sta     $0480,x                         ; 933D 9D 80 04                 ...
        dex                                     ; 9340 CA                       .
        bpl     MapSystem_Branch_933D           ; 9341 10 FA                    ..
        ldx     #$00                            ; 9343 A2 00                    ..
        rts                                     ; 9345 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9346:
        lda     #$B1                            ; 9346 A9 B1                    ..
        jsr     MapSystem_Entry_9331            ; 9348 20 31 93                  1.
        lda     #$86                            ; 934B A9 86                    ..
        sta     $0481                           ; 934D 8D 81 04                 ...
        lda     #$89                            ; 9350 A9 89                    ..
        sta     $049A                           ; 9352 8D 9A 04                 ...
        lda     #$84                            ; 9355 A9 84                    ..
        sta     $049D                           ; 9357 8D 9D 04                 ...
        lda     #$88                            ; 935A A9 88                    ..
        sta     $04B6                           ; 935C 8D B6 04                 ...
        lda     #$85                            ; 935F A9 85                    ..
        ldx     #$18                            ; 9361 A2 18                    ..
MapSystem_Branch_9363:
        sta     $0481,x                         ; 9363 9D 81 04                 ...
        dex                                     ; 9366 CA                       .
        bne     MapSystem_Branch_9363           ; 9367 D0 FA                    ..
        lda     #$1E                            ; 9369 A9 1E                    ..
        sta     $04F3                           ; 936B 8D F3 04                 ...
        brk                                     ; 936E 00                       .
        db   $13,$DF                         ; 936F 13 DF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9371:
        rts                                     ; 9371 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9372:
        jsr     WaitForNmi                      ; 9372 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C5AF     ; 9375 20 AF C5                  ..
        ldx     #$00                            ; 9378 A2 00                    ..
        jsr     MapSystem_Entry_93AA            ; 937A 20 AA 93                  ..
        ldx     #$05                            ; 937D A2 05                    ..
        jsr     MapSystem_Entry_93AA            ; 937F 20 AA 93                  ..
        ldx     #$00                            ; 9382 A2 00                    ..
        jsr     MapSystem_Entry_93EF            ; 9384 20 EF 93                  ..
        jsr     MapSystem_Entry_93EF            ; 9387 20 EF 93                  ..
        lda     #$18                            ; 938A A9 18                    ..
        sta     PPUADDR                         ; 938C 8D 06 20                 ..
        lda     #$07                            ; 938F A9 07                    ..
        sta     PPUADDR                         ; 9391 8D 06 20                 ..
        lda     #$FF                            ; 9394 A9 FF                    ..
        sta     PPUDATA                         ; 9396 8D 07 20                 ..
        jsr     UpperFixedEngine_Entry_C58F     ; 9399 20 8F C5                  ..
        ldx     #$00                            ; 939C A2 00                    ..
MapSystem_Branch_939E:
        lda     Bank17_UiPpuSetup,x             ; 939E BD DF 93                 ...
        sta     $05FC,x                         ; 93A1 9D FC 05                 ...
        inx                                     ; 93A4 E8                       .
        cpx     #$10                            ; 93A5 E0 10                    ..
        bne     MapSystem_Branch_939E           ; 93A7 D0 F5                    ..
        rts                                     ; 93A9 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_93AA:
        lda     PPUSTATUS                       ; 93AA AD 02 20                 ..
        lda     $943D,x                         ; 93AD BD 3D 94                 .=.
        sta     PPUADDR                         ; 93B0 8D 06 20                 ..
        lda     $943C,x                         ; 93B3 BD 3C 94                 .<.
        sta     PPUADDR                         ; 93B6 8D 06 20                 ..
        lda     $943E,x                         ; 93B9 BD 3E 94                 .>.
        sta     $29                             ; 93BC 85 29                    .)
        lda     $943F,x                         ; 93BE BD 3F 94                 .?.
        sta     $2A                             ; 93C1 85 2A                    .*
        lda     $9440,x                         ; 93C3 BD 40 94                 .@.
        sta     $2B                             ; 93C6 85 2B                    .+
        ldy     #$00                            ; 93C8 A0 00                    ..
MapSystem_Branch_93CA:
        ldx     #$10                            ; 93CA A2 10                    ..
MapSystem_Branch_93CC:
        lda     ($29),y                         ; 93CC B1 29                    .)
        sta     PPUDATA                         ; 93CE 8D 07 20                 ..
        inc     $29                             ; 93D1 E6 29                    .)
        bne     MapSystem_Branch_93D7           ; 93D3 D0 02                    ..
        inc     $2A                             ; 93D5 E6 2A                    .*
MapSystem_Branch_93D7:
        dex                                     ; 93D7 CA                       .
        bne     MapSystem_Branch_93CC           ; 93D8 D0 F2                    ..
        dec     $2B                             ; 93DA C6 2B                    .+
        bne     MapSystem_Branch_93CA           ; 93DC D0 EC                    ..
        rts                                     ; 93DE 60                       `
; ----------------------------------------------------------------------------
Bank17_UiPpuSetup:
        db   $0F,$30,$12,$22,$30,$15,$25,$30 ; 93DF 0F 30 12 22 30 15 25 30  .0."0.%0
        db   $27,$17,$30,$14,$27,$30,$37,$17 ; 93E7 27 17 30 14 27 30 37 17  '.0.'07.
; ----------------------------------------------------------------------------
MapSystem_Entry_93EF:
        txa                                     ; 93EF 8A                       .
        pha                                     ; 93F0 48                       H
        lda     $9433,x                         ; 93F1 BD 33 94                 .3.
        sta     PPUADDR                         ; 93F4 8D 06 20                 ..
        lda     Bank17_PpuUploadDescriptors,x   ; 93F7 BD 32 94                 .2.
        sta     PPUADDR                         ; 93FA 8D 06 20                 ..
        lda     $9434,x                         ; 93FD BD 34 94                 .4.
        sta     $29                             ; 9400 85 29                    .)
        lda     $9435,x                         ; 9402 BD 35 94                 .5.
        sta     $2A                             ; 9405 85 2A                    .*
        lda     $9436,x                         ; 9407 BD 36 94                 .6.
        sta     $2B                             ; 940A 85 2B                    .+
        ldy     #$00                            ; 940C A0 00                    ..
MapSystem_Branch_940E:
        ldx     #$08                            ; 940E A2 08                    ..
MapSystem_Branch_9410:
        lda     ($29),y                         ; 9410 B1 29                    .)
        sta     PPUDATA                         ; 9412 8D 07 20                 ..
        inc     $29                             ; 9415 E6 29                    .)
        bne     MapSystem_Branch_941B           ; 9417 D0 02                    ..
        inc     $2A                             ; 9419 E6 2A                    .*
MapSystem_Branch_941B:
        dex                                     ; 941B CA                       .
        bne     MapSystem_Branch_9410           ; 941C D0 F2                    ..
        ldx     #$08                            ; 941E A2 08                    ..
        lda     #$00                            ; 9420 A9 00                    ..
MapSystem_Branch_9422:
        sta     PPUDATA                         ; 9422 8D 07 20                 ..
        dex                                     ; 9425 CA                       .
        bne     MapSystem_Branch_9422           ; 9426 D0 FA                    ..
        dec     $2B                             ; 9428 C6 2B                    .+
        bne     MapSystem_Branch_940E           ; 942A D0 E2                    ..
        pla                                     ; 942C 68                       h
        clc                                     ; 942D 18                       .
        adc     #$05                            ; 942E 69 05                    i.
        tax                                     ; 9430 AA                       .
        rts                                     ; 9431 60                       `
; ----------------------------------------------------------------------------
Bank17_PpuUploadDescriptors:
        db   $00                             ; 9432 00                       .
        db   $18                             ; 9433 18                       .
        db   $52                             ; 9434 52                       R
        db   $94                             ; 9435 94                       .
        db   $01,$10,$10,$5A,$94,$0A         ; 9436 01 10 10 5A 94 0A        ...Z..
        db   $D0                             ; 943C D0                       .
        db   $18                             ; 943D 18                       .
        db   $AA                             ; 943E AA                       .
        db   $94                             ; 943F 94                       .
        db   $73,$10,$00,$DA,$9B,$02         ; 9440 73 10 00 DA 9B 02        s.....
; ----------------------------------------------------------------------------
Bank17_UiService:
        ldx     #$0A                            ; 9446 A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 9448 20 0C C9                  ..
        jsr     UpperFixedEngine_Entry_F0C7     ; 944B 20 C7 F0                  ..
        brk                                     ; 944E 00                       .
        db   $09,$9F                         ; 944F 09 9F                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9451:
        rts                                     ; 9451 60                       `
; ----------------------------------------------------------------------------
Bank17_UiGraphics:
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00 ; 9452 FF FF FF FF FF FF FF 00  ........
        db   $00,$3C,$66,$66,$66,$66,$66,$3C ; 945A 00 3C 66 66 66 66 66 3C  .<fffff<
        db   $00,$38,$78,$38,$38,$38,$38,$7C ; 9462 00 38 78 38 38 38 38 7C  .8x8888|
        db   $00,$7C,$C6,$C6,$0C,$70,$C0,$FE ; 946A 00 7C C6 C6 0C 70 C0 FE  .|...p..
        db   $00,$7C,$C6,$C6,$1C,$C6,$C6,$7C ; 9472 00 7C C6 C6 1C C6 C6 7C  .|.....|
        db   $00,$0C,$1C,$2C,$4C,$CC,$FE,$0C ; 947A 00 0C 1C 2C 4C CC FE 0C  ...,L...
        db   $00,$FC,$C0,$C0,$FC,$0E,$0E,$FC ; 9482 00 FC C0 C0 FC 0E 0E FC  ........
        db   $00,$7C,$C0,$C0,$FC,$C6,$C6,$7C ; 948A 00 7C C0 C0 FC C6 C6 7C  .|.....|
        db   $00,$FE,$C6,$06,$18,$30,$30,$30 ; 9492 00 FE C6 06 18 30 30 30  .....000
        db   $00,$7C,$C6,$C6,$7C,$C6,$C6,$7C ; 949A 00 7C C6 C6 7C C6 C6 7C  .|..|..|
        db   $00,$7C,$C6,$C6,$7E,$06,$06,$7C ; 94A2 00 7C C6 C6 7E 06 06 7C  .|..~..|
        db   $7F,$F3,$ED,$DE,$DE,$C0,$DE,$DE ; 94AA 7F F3 ED DE DE C0 DE DE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 94B2 00 00 00 00 00 00 00 00  ........
        db   $7F,$E1,$DE,$DE,$F9,$E7,$DF,$C0 ; 94BA 7F E1 DE DE F9 E7 DF C0  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 94C2 00 00 00 00 00 00 00 00  ........
        db   $7F,$C1,$FE,$FE,$E1,$FE,$FE,$C1 ; 94CA 7F C1 FE FE E1 FE FE C1  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 94D2 00 00 00 00 00 00 00 00  ........
        db   $7F,$F9,$F5,$ED,$ED,$DD,$C0,$FD ; 94DA 7F F9 F5 ED ED DD C0 FD  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 94E2 00 00 00 00 00 00 00 00  ........
        db   $7F,$C1,$DF,$DF,$C1,$FE,$FE,$C1 ; 94EA 7F C1 DF DF C1 FE FE C1  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 94F2 00 00 00 00 00 00 00 00  ........
        db   $7F,$E1,$DE,$DF,$C1,$DE,$DE,$E1 ; 94FA 7F E1 DE DF C1 DE DE E1  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9502 00 00 00 00 00 00 00 00  ........
        db   $7F,$C0,$DE,$DD,$FB,$F7,$F7,$F7 ; 950A 7F C0 DE DD FB F7 F7 F7  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9512 00 00 00 00 00 00 00 00  ........
        db   $7F,$E1,$DE,$DE,$E1,$DE,$DE,$E1 ; 951A 7F E1 DE DE E1 DE DE E1  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9522 00 00 00 00 00 00 00 00  ........
        db   $7F,$E1,$DE,$DE,$E0,$FE,$DE,$E1 ; 952A 7F E1 DE DE E0 FE DE E1  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9532 00 00 00 00 00 00 00 00  ........
        db   $7F,$D9,$96,$D6,$D6,$D6,$D6,$D9 ; 953A 7F D9 96 D6 D6 D6 D6 D9  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9542 00 00 00 00 00 00 00 00  ........
        db   $7F,$F0,$FD,$FD,$DD,$DD,$DD,$E3 ; 954A 7F F0 FD FD DD DD DD E3  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9552 00 00 00 00 00 00 00 00  ........
        db   $7F,$E1,$DE,$DE,$C6,$DA,$DA,$E0 ; 955A 7F E1 DE DE C6 DA DA E0  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9562 00 00 00 00 00 00 00 00  ........
        db   $7F,$DD,$DB,$D7,$CF,$D7,$DB,$DD ; 956A 7F DD DB D7 CF D7 DB DD  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9572 00 00 00 00 00 00 00 00  ........
        db   $7B,$7B,$03,$7B,$7B,$B7,$CF,$FE ; 957A 7B 7B 03 7B 7B B7 CF FE  {{.{{...
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9582 00 00 00 00 00 00 00 00  ........
        db   $03,$FB,$E7,$9F,$7B,$7B,$87,$FE ; 958A 03 FB E7 9F 7B 7B 87 FE  ....{{..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9592 00 00 00 00 00 00 00 00  ........
        db   $83,$7F,$7F,$87,$7F,$7F,$83,$FE ; 959A 83 7F 7F 87 7F 7F 83 FE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 95A2 00 00 00 00 00 00 00 00  ........
        db   $BF,$03,$BB,$B7,$B7,$AF,$9F,$FE ; 95AA BF 03 BB B7 B7 AF 9F FE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 95B2 00 00 00 00 00 00 00 00  ........
        db   $83,$7F,$7F,$83,$FB,$FB,$83,$FE ; 95BA 83 7F 7F 83 FB FB 83 FE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 95C2 00 00 00 00 00 00 00 00  ........
        db   $87,$7B,$7B,$83,$FB,$7B,$87,$FE ; 95CA 87 7B 7B 83 FB 7B 87 FE  .{{..{..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 95D2 00 00 00 00 00 00 00 00  ........
        db   $EF,$EF,$EF,$DF,$BB,$7B,$03,$FE ; 95DA EF EF EF DF BB 7B 03 FE  .....{..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 95E2 00 00 00 00 00 00 00 00  ........
        db   $87,$7B,$7B,$87,$7B,$7B,$87,$FE ; 95EA 87 7B 7B 87 7B 7B 87 FE  .{{.{{..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 95F2 00 00 00 00 00 00 00 00  ........
        db   $87,$7B,$7F,$07,$7B,$7B,$87,$FE ; 95FA 87 7B 7F 07 7B 7B 87 FE  .{..{{..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9602 00 00 00 00 00 00 00 00  ........
        db   $9B,$6B,$6B,$6B,$6B,$69,$9B,$FE ; 960A 9B 6B 6B 6B 6B 69 9B FE  .kkkki..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9612 00 00 00 00 00 00 00 00  ........
        db   $C7,$BB,$BB,$BB,$BF,$BF,$0F,$FE ; 961A C7 BB BB BB BF BF 0F FE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9622 00 00 00 00 00 00 00 00  ........
        db   $07,$5B,$5B,$63,$7B,$7B,$87,$FE ; 962A 07 5B 5B 63 7B 7B 87 FE  .[[c{{..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9632 00 00 00 00 00 00 00 00  ........
        db   $BB,$DB,$EB,$F3,$EB,$DB,$BB,$FE ; 963A BB DB EB F3 EB DB BB FE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9642 00 00 00 00 00 00 00 00  ........
        db   $FC,$F8,$B1,$83,$C7,$87,$93,$FF ; 964A FC F8 B1 83 C7 87 93 FF  ........
        db   $03,$07,$4E,$7C,$38,$78,$6C,$00 ; 9652 03 07 4E 7C 38 78 6C 00  ..N|8xl.
        db   $C1,$80,$9C,$80,$80,$C1,$E3,$FF ; 965A C1 80 9C 80 80 C1 E3 FF  ........
        db   $3E,$7F,$63,$7F,$7F,$3E,$1C,$00 ; 9662 3E 7F 63 7F 7F 3E 1C 00  >.c..>..
        db   $F7,$E3,$C1,$94,$94,$80,$C1,$FF ; 966A F7 E3 C1 94 94 80 C1 FF  ........
        db   $08,$1C,$3E,$6B,$6B,$7F,$3E,$00 ; 9672 08 1C 3E 6B 6B 7F 3E 00  ..>kk.>.
        db   $F7,$A2,$A2,$80,$80,$80,$80,$FF ; 967A F7 A2 A2 80 80 80 80 FF  ........
        db   $08,$5D,$5D,$7F,$7F,$7F,$7F,$00 ; 9682 08 5D 5D 7F 7F 7F 7F 00  .]].....
        db   $7F,$E3,$D5,$D7,$E3,$F5,$D5,$E3 ; 968A 7F E3 D5 D7 E3 F5 D5 E3  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9692 00 00 00 00 00 00 00 00  ........
        db   $C7,$AB,$AF,$C7,$EB,$AB,$C7,$FE ; 969A C7 AB AF C7 EB AB C7 FE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 96A2 00 00 00 00 00 00 00 00  ........
        db   $FF,$C2,$F5,$F5,$B5,$B5,$B5,$CE ; 96AA FF C2 F5 F5 B5 B5 B5 CE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 96B2 00 00 00 00 00 00 00 00  ........
        db   $FF,$6D,$AB,$A7,$A7,$AB,$AD,$6D ; 96BA FF 6D AB A7 A7 AB AD 6D  .m.....m
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 96C2 00 00 00 00 00 00 00 00  ........
        db   $FF,$11,$76,$76,$16,$71,$76,$16 ; 96CA FF 11 76 76 16 71 76 16  ..vv.qv.
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 96D2 00 00 00 00 00 00 00 00  ........
        db   $FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; 96DA FE FF FF FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 96E2 00 00 00 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F ; 96EA FF FF FF FF FF FF FF 7F  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 96F2 00 00 00 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$EF,$C7,$C7,$C7,$C7 ; 96FA FF FF FF EF C7 C7 C7 C7  ........
        db   $00,$00,$00,$00,$10,$10,$10,$10 ; 9702 00 00 00 00 10 10 10 10  ........
        db   $FF,$FE,$FC,$F8,$F0,$E0,$E0,$E0 ; 970A FF FE FC F8 F0 E0 E0 E0  ........
        db   $00,$00,$01,$03,$07,$0F,$0F,$0F ; 9712 00 00 01 03 07 0F 0F 0F  ........
        db   $83,$00,$00,$00,$00,$44,$AA,$AA ; 971A 83 00 00 00 00 44 AA AA  .....D..
        db   $38,$7C,$FF,$FF,$FF,$BB,$55,$55 ; 9722 38 7C FF FF FF BB 55 55  8|....UU
        db   $FF,$FF,$7F,$3F,$1F,$0F,$0F,$0F ; 972A FF FF 7F 3F 1F 0F 0F 0F  ...?....
        db   $00,$00,$00,$80,$C0,$E0,$E0,$E0 ; 9732 00 00 00 80 C0 E0 E0 E0  ........
        db   $E1,$E1,$F0,$F8,$FE,$FF,$FF,$FF ; 973A E1 E1 F0 F8 FE FF FF FF  ........
        db   $0F,$0F,$07,$01,$00,$00,$00,$00 ; 9742 0F 0F 07 01 00 00 00 00  ........
        db   $45,$83,$FE,$00,$00,$FF,$FF,$FF ; 974A 45 83 FE 00 00 FF FF FF  E.......
        db   $BB,$FF,$FF,$FF,$00,$00,$00,$00 ; 9752 BB FF FF FF 00 00 00 00  ........
        db   $0F,$0F,$1F,$3F,$FF,$FF,$FF,$FF ; 975A 0F 0F 1F 3F FF FF FF FF  ...?....
        db   $E0,$E0,$C0,$00,$00,$00,$00,$00 ; 9762 E0 E0 C0 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$FF,$FF,$FE,$FC,$F9 ; 976A FF FF FF FF FF FE FC F9  ........
        db   $00,$00,$00,$00,$00,$00,$01,$02 ; 9772 00 00 00 00 00 00 01 02  ........
        db   $FF,$FF,$C3,$9B,$3B,$73,$E7,$CF ; 977A FF FF C3 9B 3B 73 E7 CF  ....;s..
        db   $00,$00,$00,$28,$58,$B8,$70,$E0 ; 9782 00 00 00 28 58 B8 70 E0  ...(X.p.
        db   $FF,$FF,$FF,$F9,$FA,$FD,$FC,$F8 ; 978A FF FF FF F9 FA FD FC F8  ........
        db   $00,$00,$00,$00,$00,$00,$00,$02 ; 9792 00 00 00 00 00 00 00 02  ........
        db   $F3,$E7,$CE,$9C,$39,$73,$A7,$4F ; 979A F3 E7 CE 9C 39 73 A7 4F  ....9s.O
        db   $05,$0B,$17,$2E,$5C,$38,$30,$80 ; 97A2 05 0B 17 2E 5C 38 30 80  ....\80.
        db   $9F,$3F,$7F,$FF,$FF,$FF,$FF,$FF ; 97AA 9F 3F 7F FF FF FF FF FF  .?......
        db   $C0,$80,$00,$00,$00,$00,$00,$00 ; 97B2 C0 80 00 00 00 00 00 00  ........
        db   $F0,$E0,$C0,$C0,$C1,$E3,$FF,$FF ; 97BA F0 E0 C0 C0 C1 E3 FF FF  ........
        db   $07,$0F,$1F,$1E,$1C,$00,$00,$00 ; 97C2 07 0F 1F 1E 1C 00 00 00  ........
        db   $2F,$17,$67,$FF,$FF,$FF,$FF,$FF ; 97CA 2F 17 67 FF FF FF FF FF  /.g.....
        db   $00,$80,$00,$00,$00,$00,$00,$00 ; 97D2 00 80 00 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$FC,$FC,$F8,$F0,$F0 ; 97DA FF FF FF FC FC F8 F0 F0  ........
        db   $00,$00,$00,$00,$01,$03,$07,$07 ; 97E2 00 00 00 00 01 03 07 07  ........
        db   $FF,$FF,$FF,$00,$00,$00,$00,$00 ; 97EA FF FF FF 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$FF,$FF,$FF,$FF ; 97F2 00 00 00 00 FF FF FF FF  ........
        db   $FF,$FF,$FF,$3F,$3F,$1F,$0F,$0F ; 97FA FF FF FF 3F 3F 1F 0F 0F  ...??...
        db   $00,$00,$00,$00,$80,$C0,$E0,$E0 ; 9802 00 00 00 00 80 C0 E0 E0  ........
        db   $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F8 ; 980A F0 F0 F0 F0 F0 F0 F0 F8  ........
        db   $07,$07,$07,$07,$07,$07,$07,$03 ; 9812 07 07 07 07 07 07 07 03  ........
        db   $00,$00,$7E,$7E,$00,$00,$00,$00 ; 981A 00 00 7E 7E 00 00 00 00  ..~~....
        db   $FF,$00,$00,$00,$00,$FF,$FF,$FF ; 9822 FF 00 00 00 00 FF FF FF  ........
        db   $0F,$0F,$0F,$0F,$0F,$0F,$0F,$1F ; 982A 0F 0F 0F 0F 0F 0F 0F 1F  ........
        db   $E0,$E0,$E0,$E0,$E0,$E0,$E0,$C0 ; 9832 E0 E0 E0 E0 E0 E0 E0 C0  ........
        db   $F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF ; 983A F8 FC FE FF FF FF FF FF  ........
        db   $03,$01,$00,$00,$00,$00,$00,$00 ; 9842 03 01 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$81,$FF,$FF,$FF ; 984A 00 00 00 00 81 FF FF FF  ........
        db   $FF,$FF,$FF,$7E,$00,$00,$00,$00 ; 9852 FF FF FF 7E 00 00 00 00  ...~....
        db   $1F,$3F,$7F,$FF,$FF,$FF,$FF,$FF ; 985A 1F 3F 7F FF FF FF FF FF  .?......
        db   $C0,$80,$00,$00,$00,$00,$00,$00 ; 9862 C0 80 00 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$FF,$FF,$F9,$F8,$F8 ; 986A FF FF FF FF FF F9 F8 F8  ........
        db   $00,$00,$00,$00,$00,$00,$02,$02 ; 9872 00 00 00 00 00 00 02 02  ........
        db   $FF,$FF,$FF,$E7,$C3,$C3,$81,$81 ; 987A FF FF FF E7 C3 C3 81 81  ........
        db   $00,$00,$00,$00,$18,$18,$3C,$3C ; 9882 00 00 00 00 18 18 3C 3C  ......<<
        db   $FF,$FF,$FF,$FF,$FF,$9F,$1F,$1F ; 988A FF FF FF FF FF 9F 1F 1F  ........
        db   $00,$00,$00,$00,$00,$00,$40,$40 ; 9892 00 00 00 00 00 00 40 40  ......@@
        db   $F8,$F8,$F8,$F8,$F8,$F8,$FB,$F8 ; 989A F8 F8 F8 F8 F8 F8 FB F8  ........
        db   $03,$03,$03,$03,$03,$00,$03,$00 ; 98A2 03 03 03 03 03 00 03 00  ........
        db   $00,$00,$00,$00,$00,$00,$FF,$00 ; 98AA 00 00 00 00 00 00 FF 00  ........
        db   $7E,$7E,$FF,$FF,$FF,$00,$FF,$00 ; 98B2 7E 7E FF FF FF 00 FF 00  ~~......
        db   $1F,$1F,$1F,$1F,$1F,$1F,$DF,$1F ; 98BA 1F 1F 1F 1F 1F 1F DF 1F  ........
        db   $C0,$C0,$C0,$C0,$C0,$00,$C0,$00 ; 98C2 C0 C0 C0 C0 C0 00 C0 00  ........
        db   $F8,$F8,$FF,$FF,$FF,$FF,$FF,$FF ; 98CA F8 F8 FF FF FF FF FF FF  ........
        db   $03,$00,$00,$00,$00,$00,$00,$00 ; 98D2 03 00 00 00 00 00 00 00  ........
        db   $00,$00,$FF,$FF,$FF,$FF,$FF,$FF ; 98DA 00 00 FF FF FF FF FF FF  ........
        db   $FF,$00,$00,$00,$00,$00,$00,$00 ; 98E2 FF 00 00 00 00 00 00 00  ........
        db   $1F,$1F,$FF,$FF,$FF,$FF,$FF,$FF ; 98EA 1F 1F FF FF FF FF FF FF  ........
        db   $C0,$00,$00,$00,$00,$00,$00,$00 ; 98F2 C0 00 00 00 00 00 00 00  ........
        db   $00,$00,$80,$F0,$F6,$F6,$F6,$F6 ; 98FA 00 00 80 F0 F6 F6 F6 F6  ........
        db   $00,$7F,$06,$06,$06,$06,$06,$06 ; 9902 00 7F 06 06 06 06 06 06  ........
        db   $1F,$1F,$3F,$FF,$FF,$FF,$FF,$FF ; 990A 1F 1F 3F FF FF FF FF FF  ..?.....
        db   $00,$C0,$00,$00,$00,$00,$00,$00 ; 9912 00 C0 00 00 00 00 00 00  ........
        db   $FC,$FB,$FB,$FB,$F8,$F8,$FC,$FE ; 991A FC FB FB FB F8 F8 FC FE  ........
        db   $00,$03,$03,$03,$03,$03,$01,$00 ; 9922 00 03 03 03 03 03 01 00  ........
        db   $F6,$76,$76,$76,$00,$00,$01,$03 ; 992A F6 76 76 76 00 00 01 03  .vvv....
        db   $06,$06,$06,$06,$8E,$FE,$FC,$00 ; 9932 06 06 06 06 8E FE FC 00  ........
        db   $FF,$FF,$FE,$FC,$FD,$FB,$FB,$FB ; 993A FF FF FE FC FD FB FB FB  ........
        db   $00,$00,$00,$01,$01,$03,$03,$03 ; 9942 00 00 00 01 01 03 03 03  ........
        db   $C3,$00,$00,$00,$BD,$7E,$7E,$7E ; 994A C3 00 00 00 BD 7E 7E 7E  .....~~~
        db   $00,$3C,$FF,$C3,$81,$00,$00,$00 ; 9952 00 3C FF C3 81 00 00 00  .<......
        db   $FF,$FF,$7F,$3F,$BF,$DF,$DF,$DF ; 995A FF FF 7F 3F BF DF DF DF  ...?....
        db   $00,$00,$00,$80,$80,$C0,$C0,$C0 ; 9962 00 00 00 80 80 C0 C0 C0  ........
        db   $FB,$FB,$FB,$FD,$FD,$FE,$FC,$FC ; 996A FB FB FB FD FD FE FC FC  ........
        db   $03,$03,$03,$01,$01,$00,$01,$01 ; 9972 03 03 03 01 01 00 01 01  ........
        db   $7E,$7E,$7E,$BD,$C3,$3C,$00,$00 ; 997A 7E 7E 7E BD C3 3C 00 00  ~~~..<..
        db   $00,$00,$00,$81,$C3,$FF,$FC,$C7 ; 9982 00 00 00 81 C3 FF FC C7  ........
        db   $DF,$DF,$DF,$BF,$BF,$4F,$0F,$0F ; 998A DF DF DF BF BF 4F 0F 0F  .....O..
        db   $C0,$C0,$C0,$80,$80,$00,$20,$E0 ; 9992 C0 C0 C0 80 80 00 20 E0  ...... .
        db   $38,$FC,$FF,$FF,$FF,$FF,$FF,$FF ; 999A 38 FC FF FF FF FF FF FF  8.......
        db   $03,$00,$00,$00,$00,$00,$00,$00 ; 99A2 03 00 00 00 00 00 00 00  ........
        db   $1F,$3F,$FF,$FF,$FF,$FF,$FF,$FF ; 99AA 1F 3F FF FF FF FF FF FF  .?......
        db   $C0,$00,$00,$00,$00,$00,$00,$00 ; 99B2 C0 00 00 00 00 00 00 00  ........
        db   $F0,$F0,$F8,$FC,$FD,$FD,$FD,$FD ; 99BA F0 F0 F8 FC FD FD FD FD  ........
        db   $00,$07,$01,$01,$01,$01,$01,$01 ; 99C2 00 07 01 01 01 01 01 01  ........
        db   $08,$08,$1C,$38,$B6,$AD,$9B,$F7 ; 99CA 08 08 1C 38 B6 AD 9B F7  ...8....
        db   $00,$E3,$81,$83,$86,$8C,$98,$F0 ; 99D2 00 E3 81 83 86 8C 98 F0  ........
        db   $0F,$0F,$1F,$7F,$FF,$FF,$FF,$FF ; 99DA 0F 0F 1F 7F FF FF FF FF  ........
        db   $00,$E0,$80,$00,$00,$00,$00,$00 ; 99E2 00 E0 80 00 00 00 00 00  ........
        db   $FD,$FD,$FD,$FD,$FC,$F8,$F0,$F0 ; 99EA FD FD FD FD FC F8 F0 F0  ........
        db   $01,$01,$01,$01,$01,$01,$07,$00 ; 99F2 01 01 01 01 01 01 07 00  ........
        db   $FB,$9D,$AE,$B7,$38,$1C,$08,$08 ; 99FA FB 9D AE B7 38 1C 08 08  ....8...
        db   $F8,$9C,$8E,$87,$83,$81,$E3,$00 ; 9A02 F8 9C 8E 87 83 81 E3 00  ........
        db   $FF,$FF,$FF,$7F,$3F,$0F,$07,$07 ; 9A0A FF FF FF 7F 3F 0F 07 07  ....?...
        db   $00,$00,$00,$00,$80,$C0,$F0,$00 ; 9A12 00 00 00 00 80 C0 F0 00  ........
        db   $FF,$FF,$FF,$FF,$FE,$F8,$F0,$E0 ; 9A1A FF FF FF FF FE F8 F0 E0  ........
        db   $00,$00,$00,$00,$00,$01,$07,$0F ; 9A22 00 00 00 00 00 01 07 0F  ........
        db   $FD,$F8,$F8,$F8,$38,$04,$04,$04 ; 9A2A FD F8 F8 F8 38 04 04 04  ....8...
        db   $00,$02,$02,$03,$03,$C1,$B1,$51 ; 9A32 00 02 02 03 03 C1 B1 51  .......Q
        db   $FF,$FF,$FF,$7F,$22,$00,$00,$00 ; 9A3A FF FF FF 7F 22 00 00 00  ...."...
        db   $00,$00,$00,$00,$80,$9C,$BE,$FF ; 9A42 00 00 00 00 80 9C BE FF  ........
        db   $DF,$8F,$8F,$0F,$0E,$10,$10,$10 ; 9A4A DF 8F 8F 0F 0E 10 10 10  ........
        db   $00,$20,$20,$60,$E0,$C1,$C6,$C5 ; 9A52 00 20 20 60 E0 C1 C6 C5  .  `....
        db   $FF,$FF,$FF,$FF,$3F,$0F,$07,$03 ; 9A5A FF FF FF FF 3F 0F 07 03  ....?...
        db   $00,$00,$00,$00,$00,$C0,$F0,$78 ; 9A62 00 00 00 00 00 C0 F0 78  .......x
        db   $C0,$E0,$F8,$FC,$FF,$FB,$F1,$F1 ; 9A6A C0 E0 F8 FC FF FB F1 F1  ........
        db   $1E,$05,$03,$00,$00,$00,$04,$04 ; 9A72 1E 05 03 00 00 00 04 04  ........
        db   $06,$02,$02,$00,$00,$00,$A0,$C0 ; 9A7A 06 02 02 00 00 00 A0 C0  ........
        db   $D0,$D9,$B9,$BD,$7D,$49,$06,$1E ; 9A82 D0 D9 B9 BD 7D 49 06 1E  ....}I..
        db   $63,$77,$F7,$C9,$B6,$63,$3E,$5D ; 9A8A 63 77 F7 C9 B6 63 3E 5D  cw...c>]
        db   $FF,$FF,$FF,$C9,$80,$00,$88,$DD ; 9A92 FF FF FF C9 80 00 88 DD  ........
        db   $30,$20,$A0,$80,$80,$00,$02,$01 ; 9A9A 30 20 A0 80 80 00 02 01  0 ......
        db   $85,$CD,$CE,$DE,$DF,$49,$B0,$BC ; 9AA2 85 CD CE DE DF 49 B0 BC  .....I..
        db   $01,$03,$0F,$1F,$7F,$7F,$FF,$FF ; 9AAA 01 03 0F 1F 7F 7F FF FF  ........
        db   $BC,$D0,$E0,$80,$00,$00,$00,$00 ; 9AB2 BC D0 E0 80 00 00 00 00  ........
        db   $E0,$F1,$F1,$F0,$F1,$F0,$F0,$F8 ; 9ABA E0 F1 F1 F0 F1 F0 F0 F8  ........
        db   $0E,$04,$04,$04,$05,$04,$04,$03 ; 9AC2 0E 04 04 04 05 04 04 03  ........
        db   $80,$40,$60,$F0,$E0,$A0,$50,$00 ; 9ACA 80 40 60 F0 E0 A0 50 00  .@`...P.
        db   $3F,$7F,$7B,$F3,$E7,$A7,$07,$07 ; 9AD2 3F 7F 7B F3 E7 A7 07 07  ?.{.....
        db   $22,$14,$14,$1C,$08,$00,$00,$00 ; 9ADA 22 14 14 1C 08 00 00 00  ".......
        db   $63,$80,$C1,$C1,$E3,$F7,$FF,$FF ; 9AE2 63 80 C1 C1 E3 F7 FF FF  c.......
        db   $00,$01,$03,$07,$03,$02,$05,$07 ; 9AEA 00 01 03 07 03 02 05 07  ........
        db   $7E,$FF,$EF,$E7,$F3,$F2,$F0,$F0 ; 9AF2 7E FF EF E7 F3 F2 F0 F0  ~.......
        db   $FF,$7F,$7F,$BF,$DF,$BF,$7F,$FF ; 9AFA FF 7F 7F BF DF BF 7F FF  ........
        db   $00,$00,$00,$80,$C0,$80,$00,$00 ; 9B02 00 00 00 80 C0 80 00 00  ........
        db   $FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; 9B0A FC FF FF FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 9B12 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$F6,$EF,$DF,$E0,$FF,$FF ; 9B1A 00 00 F6 EF DF E0 FF FF  ........
        db   $FB,$07,$07,$0F,$1F,$00,$00,$00 ; 9B22 FB 07 07 0F 1F 00 00 00  ........
        db   $00,$00,$00,$BE,$7F,$FF,$FF,$FF ; 9B2A 00 00 00 BE 7F FF FF FF  ........
        db   $FF,$FF,$80,$80,$00,$00,$00,$00 ; 9B32 FF FF 80 80 00 00 00 00  ........
        db   $0F,$07,$37,$FB,$7D,$83,$FF,$FF ; 9B3A 0F 07 37 FB 7D 83 FF FF  ..7.}...
        db   $E0,$F0,$F0,$F8,$7C,$00,$00,$00 ; 9B42 E0 F0 F0 F8 7C 00 00 00  ....|...
        db   $7F,$FF,$E0,$C6,$C6,$DB,$D9,$C6 ; 9B4A 7F FF E0 C6 C6 DB D9 C6  ........
        db   $00,$00,$00,$1F,$1F,$1F,$1F,$1F ; 9B52 00 00 00 1F 1F 1F 1F 1F  ........
        db   $FF,$FF,$00,$66,$66,$DB,$99,$66 ; 9B5A FF FF 00 66 66 DB 99 66  ...ff..f
        db   $00,$00,$00,$FF,$FF,$FF,$FF,$FF ; 9B62 00 00 00 FF FF FF FF FF  ........
        db   $FE,$FF,$07,$63,$63,$DB,$9B,$63 ; 9B6A FE FF 07 63 63 DB 9B 63  ...cc..c
        db   $00,$00,$00,$F8,$F8,$F8,$F8,$F8 ; 9B72 00 00 00 F8 F8 F8 F8 F8  ........
        db   $C6,$D9,$DB,$C6,$C6,$DB,$D9,$C6 ; 9B7A C6 D9 DB C6 C6 DB D9 C6  ........
        db   $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F ; 9B82 1F 1F 1F 1F 1F 1F 1F 1F  ........
        db   $66,$99,$DB,$66,$66,$DB,$99,$66 ; 9B8A 66 99 DB 66 66 DB 99 66  f..ff..f
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; 9B92 FF FF FF FF FF FF FF FF  ........
        db   $63,$9B,$DB,$63,$63,$DB,$9B,$63 ; 9B9A 63 9B DB 63 63 DB 9B 63  c..cc..c
        db   $F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8 ; 9BA2 F8 F8 F8 F8 F8 F8 F8 F8  ........
        db   $C6,$D9,$DB,$C6,$C6,$E0,$FF,$7F ; 9BAA C6 D9 DB C6 C6 E0 FF 7F  ........
        db   $1F,$1F,$1F,$1F,$1F,$00,$00,$00 ; 9BB2 1F 1F 1F 1F 1F 00 00 00  ........
        db   $66,$99,$DB,$66,$66,$00,$FF,$FF ; 9BBA 66 99 DB 66 66 00 FF FF  f..ff...
        db   $FF,$FF,$FF,$FF,$FF,$00,$00,$00 ; 9BC2 FF FF FF FF FF 00 00 00  ........
        db   $63,$9B,$DB,$63,$63,$07,$FF,$FE ; 9BCA 63 9B DB 63 63 07 FF FE  c..cc...
        db   $F8,$F8,$F8,$F8,$F8,$00,$00,$00 ; 9BD2 F8 F8 F8 F8 F8 00 00 00  ........
        db   $03,$07,$1D,$7A,$72,$10,$18,$07 ; 9BDA 03 07 1D 7A 72 10 18 07  ...zr...
        db   $03,$04,$7B,$15,$1D,$7F,$7F,$07 ; 9BE2 03 04 7B 15 1D 7F 7F 07  ..{.....
        db   $FE,$EF,$BE,$B0,$F0,$F0,$B0,$E0 ; 9BEA FE EF BE B0 F0 F0 B0 E0  ........
        db   $FE,$31,$FE,$F0,$D0,$F0,$D0,$E0 ; 9BF2 FE 31 FE F0 D0 F0 D0 E0  .1......
; ----------------------------------------------------------------------------
MapSystem_Entry_9BFA:
        lda     $1F                             ; 9BFA A5 1F                    ..
        ora     #$08                            ; 9BFC 09 08                    ..
        sta     $1F                             ; 9BFE 85 1F                    ..
        jsr     UpperFixedEngine_Entry_C5C5     ; 9C00 20 C5 C5                  ..
        brk                                     ; 9C03 00                       .
        db   $07,$6F,$3D                     ; 9C04 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
Bank17_MapUiEntry:
        jsr     MapSystem_Entry_9C7E            ; 9C07 20 7E 9C                  ~.
        jsr     UpperFixedEngine_Entry_C54E     ; 9C0A 20 4E C5                  N.
        jsr     MapSystem_Entry_A875            ; 9C0D 20 75 A8                  u.
        jsr     UpperFixedEngine_Entry_C5AF     ; 9C10 20 AF C5                  ..
        jsr     MapSystem_Entry_A7FE            ; 9C13 20 FE A7                  ..
        jsr     MapSystem_Entry_A599            ; 9C16 20 99 A5                  ..
        jsr     MapSystem_Entry_A57A            ; 9C19 20 7A A5                  z.
        jsr     MapSystem_Entry_9C5F            ; 9C1C 20 5F 9C                  _.
        jsr     UpperFixedEngine_Entry_C58F     ; 9C1F 20 8F C5                  ..
        jsr     MapSystem_Entry_9C35            ; 9C22 20 35 9C                  5.
        jsr     UpperFixedEngine_Entry_C5C5     ; 9C25 20 C5 C5                  ..
        jsr     UpperFixedEngine_Entry_C596     ; 9C28 20 96 C5                  ..
        brk                                     ; 9C2B 00                       .
        db   $15,$EF                         ; 9C2C 15 EF                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9C2E:
        lda     $1F                             ; 9C2E A5 1F                    ..
        and     #$F7                            ; 9C30 29 F7                    ).
        sta     $1F                             ; 9C32 85 1F                    ..
        rts                                     ; 9C34 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9C35:
        jsr     MapSystem_Entry_9FFC            ; 9C35 20 FC 9F                  ..
        jsr     MapSystem_Entry_A026            ; 9C38 20 26 A0                  &.
        jsr     MapSystem_Entry_9FE4            ; 9C3B 20 E4 9F                  ..
        jsr     MapSystem_Entry_A33C            ; 9C3E 20 3C A3                  <.
        jsr     UpperFixedEngine_Entry_C5BF     ; 9C41 20 BF C5                  ..
MapSystem_Branch_9C44:
        jsr     MapSystem_Entry_A33C            ; 9C44 20 3C A3                  <.
        jsr     MapSystem_Entry_9EE6            ; 9C47 20 E6 9E                  ..
        jsr     MapSystem_Entry_A050            ; 9C4A 20 50 A0                  P.
        jsr     MapSystem_Entry_9E76            ; 9C4D 20 76 9E                  v.
        jsr     MapSystem_Entry_9CFE            ; 9C50 20 FE 9C                  ..
        jsr     MapSystem_Entry_9FE4            ; 9C53 20 E4 9F                  ..
        jsr     WaitForNmi                      ; 9C56 20 74 FF                  t.
        jsr     MapSystem_Entry_9C94            ; 9C59 20 94 9C                  ..
        jmp     MapSystem_Branch_9C44           ; 9C5C 4C 44 9C                 LD.
; ----------------------------------------------------------------------------
MapSystem_Entry_9C5F:
        lda     #$00                            ; 9C5F A9 00                    ..
        tax                                     ; 9C61 AA                       .
MapSystem_Branch_9C62:
        sta     $29,x                           ; 9C62 95 29                    .)
        sta     $51,x                           ; 9C64 95 51                    .Q
        inx                                     ; 9C66 E8                       .
        cpx     #$10                            ; 9C67 E0 10                    ..
        bcc     MapSystem_Branch_9C62           ; 9C69 90 F7                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 9C6B 20 91 C8                  ..
        and     #$0F                            ; 9C6E 29 0F                    ).
        sta     $29                             ; 9C70 85 29                    .)
        sta     $2A                             ; 9C72 85 2A                    .*
        sta     $2B                             ; 9C74 85 2B                    .+
        lda     PlayerLocalX                    ; 9C76 A5 44                    .D
        and     #$0F                            ; 9C78 29 0F                    ).
        sta     $04FF                           ; 9C7A 8D FF 04                 ...
        rts                                     ; 9C7D 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9C7E:
        lda     #$00                            ; 9C7E A9 00                    ..
        sta     $0508                           ; 9C80 8D 08 05                 ...
        sta     $0509                           ; 9C83 8D 09 05                 ...
        lda     $0505                           ; 9C86 AD 05 05                 ...
        and     #$FE                            ; 9C89 29 FE                    ).
        sta     $0505                           ; 9C8B 8D 05 05                 ...
        lda     #$80                            ; 9C8E A9 80                    ..
        sta     $0553                           ; 9C90 8D 53 05                 .S.
        rts                                     ; 9C93 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9C94:
        jsr     MapSystem_Entry_9242            ; 9C94 20 42 92                  B.
        brk                                     ; 9C97 00                       .
        db   $8F,$4B                         ; 9C98 8F 4B                    .K
; ----------------------------------------------------------------------------
MapSystem_Entry_9C9A:
        ldx     #$05                            ; 9C9A A2 05                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 9C9C 20 0C C9                  ..
        lda     $C000                           ; 9C9F AD 00 C0                 ...
        beq     MapSystem_Branch_9CAB           ; 9CA2 F0 07                    ..
MapSystem_Branch_9CA4:
        jsr     UpperFixedEngine_Entry_C8EC     ; 9CA4 20 EC C8                  ..
        lda     ButtonsPressed                  ; 9CA7 A5 14                    ..
        bne     MapSystem_Branch_9CA4           ; 9CA9 D0 F9                    ..
MapSystem_Branch_9CAB:
        lda     #$00                            ; 9CAB A9 00                    ..
MapSystem_Branch_9CAD:
        sta     $5A                             ; 9CAD 85 5A                    .Z
        jsr     MapSystem_Entry_9CD8            ; 9CAF 20 D8 9C                  ..
        jsr     WaitForNmi                      ; 9CB2 20 74 FF                  t.
MapSystem_Branch_9CB5:
        jsr     MapSystem_Entry_8DC4            ; 9CB5 20 C4 8D                  ..
        lda     ButtonsPressed                  ; 9CB8 A5 14                    ..
        lsr     a                               ; 9CBA 4A                       J
        bcs     MapSystem_Branch_9CD1           ; 9CBB B0 14                    ..
        lsr     a                               ; 9CBD 4A                       J
        bcs     MapSystem_Branch_9CCD           ; 9CBE B0 0D                    ..
        and     #$04                            ; 9CC0 29 04                    ).
        bne     MapSystem_Branch_9CD7           ; 9CC2 D0 13                    ..
        bit     ButtonsPressed                  ; 9CC4 24 14                    $.
        bmi     MapSystem_Branch_9CCD           ; 9CC6 30 05                    0.
        bvs     MapSystem_Branch_9CAB           ; 9CC8 70 E1                    p.
        jmp     MapSystem_Branch_9CB5           ; 9CCA 4C B5 9C                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_9CCD:
        lda     #$01                            ; 9CCD A9 01                    ..
        bne     MapSystem_Branch_9CAD           ; 9CCF D0 DC                    ..
MapSystem_Branch_9CD1:
        lda     $5A                             ; 9CD1 A5 5A                    .Z
        beq     MapSystem_Branch_9CD7           ; 9CD3 F0 02                    ..
        pla                                     ; 9CD5 68                       h
        pla                                     ; 9CD6 68                       h
MapSystem_Branch_9CD7:
        rts                                     ; 9CD7 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9CD8:
        lda     #$23                            ; 9CD8 A9 23                    .#
        sta     $1C                             ; 9CDA 85 1C                    ..
        lda     #$4A                            ; 9CDC A9 4A                    .J
        sta     $1D                             ; 9CDE 85 1D                    ..
        ldy     $5A                             ; 9CE0 A4 5A                    .Z
        lda     Bank17_MapUiPointers,y          ; 9CE2 B9 FB 9C                 ...
        sta     $1E                             ; 9CE5 85 1E                    ..
        jsr     UpperFixedEngine_Entry_C636     ; 9CE7 20 36 C6                  6.
        lda     #$50                            ; 9CEA A9 50                    .P
        sta     $1D                             ; 9CEC 85 1D                    ..
        ldy     $5A                             ; 9CEE A4 5A                    .Z
        lda     $9CFC,y                         ; 9CF0 B9 FC 9C                 ...
        sta     $1E                             ; 9CF3 85 1E                    ..
        jsr     UpperFixedEngine_Entry_C636     ; 9CF5 20 36 C6                  6.
        jmp     UpperFixedEngine_Entry_C626     ; 9CF8 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
Bank17_MapUiPointers:
        db   $81                             ; 9CFB 81                       .
        db   $00,$81                         ; 9CFC 00 81                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9CFE:
        jsr     MapSystem_Entry_9FE4            ; 9CFE 20 E4 9F                  ..
        jsr     MapSystem_Entry_9242            ; 9D01 20 42 92                  B.
        lda     $60                             ; 9D04 A5 60                    .`
        beq     MapSystem_Branch_9D1D           ; 9D06 F0 15                    ..
        jsr     MapSystem_Entry_9D41            ; 9D08 20 41 9D                  A.
        jsr     MapSystem_Entry_9DD0            ; 9D0B 20 D0 9D                  ..
        brk                                     ; 9D0E 00                       .
        db   $75,$4B                         ; 9D0F 75 4B                    uK
; ----------------------------------------------------------------------------
MapSystem_Entry_9D11:
        jsr     MapSystem_Entry_9D23            ; 9D11 20 23 9D                  #.
        jsr     Bank17_UiService                ; 9D14 20 46 94                  F.
        jsr     MapSystem_Entry_9DE6            ; 9D17 20 E6 9D                  ..
        jmp     UpperFixedEngine_Entry_D218     ; 9D1A 4C 18 D2                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_9D1D:
        brk                                     ; 9D1D 00                       .
        db   $7A,$4B                         ; 9D1E 7A 4B                    zK
; ----------------------------------------------------------------------------
MapSystem_Entry_9D20:
        jmp     UpperFixedEngine_Entry_D210     ; 9D20 4C 10 D2                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_9D23:
        lda     $FE                             ; 9D23 A5 FE                    ..
        cmp     #$13                            ; 9D25 C9 13                    ..
        bcs     MapSystem_Entry_9D3D            ; 9D27 B0 14                    ..
        cmp     #$01                            ; 9D29 C9 01                    ..
        beq     MapSystem_Branch_9D33           ; 9D2B F0 06                    ..
        bcs     MapSystem_Branch_9D39           ; 9D2D B0 0A                    ..
MapSystem_Branch_9D2F:
        brk                                     ; 9D2F 00                       .
        db   $2E,$FB                         ; 9D30 2E FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9D32:
        rts                                     ; 9D32 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_9D33:
        lda     $FD                             ; 9D33 A5 FD                    ..
        cmp     #$F4                            ; 9D35 C9 F4                    ..
        bcc     MapSystem_Branch_9D2F           ; 9D37 90 F6                    ..
MapSystem_Branch_9D39:
        brk                                     ; 9D39 00                       .
        db   $2F,$FB                         ; 9D3A 2F FB                    /.
; ----------------------------------------------------------------------------
MapSystem_Entry_9D3C:
        rts                                     ; 9D3C 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9D3D:
        brk                                     ; 9D3D 00                       .
        db   $30,$FB                         ; 9D3E 30 FB                    0.
; ----------------------------------------------------------------------------
MapSystem_Entry_9D40:
        rts                                     ; 9D40 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9D41:
        ldy     #$00                            ; 9D41 A0 00                    ..
MapSystem_Branch_9D43:
        sty     $01                             ; 9D43 84 01                    ..
        lda     $04FA,y                         ; 9D45 B9 FA 04                 ...
        bpl     MapSystem_Branch_9D4D           ; 9D48 10 03                    ..
        jsr     MapSystem_Entry_9FC6            ; 9D4A 20 C6 9F                  ..
MapSystem_Branch_9D4D:
        inc     $01                             ; 9D4D E6 01                    ..
        ldy     $01                             ; 9D4F A4 01                    ..
        cpy     #$05                            ; 9D51 C0 05                    ..
        bcc     MapSystem_Branch_9D43           ; 9D53 90 EE                    ..
        rts                                     ; 9D55 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9D56:
        ldy     $81                             ; 9D56 A4 81                    ..
        lda     $04FA,y                         ; 9D58 B9 FA 04                 ...
        and     #$07                            ; 9D5B 29 07                    ).
        sta     $5B                             ; 9D5D 85 5B                    .[
        asl     a                               ; 9D5F 0A                       .
        asl     a                               ; 9D60 0A                       .
        asl     a                               ; 9D61 0A                       .
        adc     $5B                             ; 9D62 65 5B                    e[
        tay                                     ; 9D64 A8                       .
        lda     $A78F,y                         ; 9D65 B9 8F A7                 ...
        sta     $1D                             ; 9D68 85 1D                    ..
        lda     $A790,y                         ; 9D6A B9 90 A7                 ...
        sta     $1C                             ; 9D6D 85 1C                    ..
        rts                                     ; 9D6F 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9D70:
        jsr     MapSystem_Entry_9D56            ; 9D70 20 56 9D                  V.
        lda     #$06                            ; 9D73 A9 06                    ..
        sta     $82                             ; 9D75 85 82                    ..
MapSystem_Branch_9D77:
        lda     $A791,y                         ; 9D77 B9 91 A7                 ...
        sta     $1E                             ; 9D7A 85 1E                    ..
        jsr     UpperFixedEngine_Entry_C636     ; 9D7C 20 36 C6                  6.
        iny                                     ; 9D7F C8                       .
        dec     $82                             ; 9D80 C6 82                    ..
        bne     MapSystem_Branch_9D77           ; 9D82 D0 F3                    ..
        jmp     UpperFixedEngine_Entry_C626     ; 9D84 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
MapSystem_Branch_9D87:
        ldy     $81                             ; 9D87 A4 81                    ..
        jmp     MapSystem_Entry_9FC6            ; 9D89 4C C6 9F                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_9D8C:
        jsr     MapSystem_Entry_9D56            ; 9D8C 20 56 9D                  V.
        lda     #$8F                            ; 9D8F A9 8F                    ..
        sta     $1E                             ; 9D91 85 1E                    ..
        ldy     #$06                            ; 9D93 A0 06                    ..
MapSystem_Branch_9D95:
        jsr     UpperFixedEngine_Entry_C636     ; 9D95 20 36 C6                  6.
        dey                                     ; 9D98 88                       .
        bne     MapSystem_Branch_9D95           ; 9D99 D0 FA                    ..
        jmp     UpperFixedEngine_Entry_C626     ; 9D9B 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
MapSystem_Branch_9D9E:
        ldy     $81                             ; 9D9E A4 81                    ..
        jsr     MapSystem_Entry_9FC6            ; 9DA0 20 C6 9F                  ..
        lda     #$0D                            ; 9DA3 A9 0D                    ..
        sta     $0201,x                         ; 9DA5 9D 01 02                 ...
        rts                                     ; 9DA8 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9DA9:
        jsr     MapSystem_Entry_9DB8            ; 9DA9 20 B8 9D                  ..
        jsr     MapSystem_Entry_9DC0            ; 9DAC 20 C0 9D                  ..
        inc     $83                             ; 9DAF E6 83                    ..
        lda     $83                             ; 9DB1 A5 83                    ..
        and     #$1F                            ; 9DB3 29 1F                    ).
        sta     $83                             ; 9DB5 85 83                    ..
        rts                                     ; 9DB7 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9DB8:
        lda     $83                             ; 9DB8 A5 83                    ..
        and     #$0F                            ; 9DBA 29 0F                    ).
        beq     MapSystem_Branch_9D9E           ; 9DBC F0 E0                    ..
        bne     MapSystem_Branch_9D87           ; 9DBE D0 C7                    ..
MapSystem_Entry_9DC0:
        lda     $83                             ; 9DC0 A5 83                    ..
        cmp     #$08                            ; 9DC2 C9 08                    ..
        bcc     MapSystem_Branch_9D8C           ; 9DC4 90 C6                    ..
Bank17_MapTimingValues:
        bcs     MapSystem_Entry_9D70            ; 9DC6 B0 A8                    ..
        db   $3F,$36,$2D,$24,$1B,$12,$09,$00 ; 9DC8 3F 36 2D 24 1B 12 09 00  ?6-$....
; ----------------------------------------------------------------------------
MapSystem_Entry_9DD0:
        ldy     #$00                            ; 9DD0 A0 00                    ..
        sty     $FD                             ; 9DD2 84 FD                    ..
        sty     $FE                             ; 9DD4 84 FE                    ..
        sty     $FF                             ; 9DD6 84 FF                    ..
MapSystem_Branch_9DD8:
        lda     $04FA,y                         ; 9DD8 B9 FA 04                 ...
        bpl     MapSystem_Branch_9DE0           ; 9DDB 10 03                    ..
        jsr     MapSystem_Entry_9E33            ; 9DDD 20 33 9E                  3.
MapSystem_Branch_9DE0:
        iny                                     ; 9DE0 C8                       .
        cpy     #$05                            ; 9DE1 C0 05                    ..
        bcc     MapSystem_Branch_9DD8           ; 9DE3 90 F3                    ..
        rts                                     ; 9DE5 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9DE6:
        ldy     #$00                            ; 9DE6 A0 00                    ..
        sty     $34                             ; 9DE8 84 34                    .4
        sty     $37                             ; 9DEA 84 37                    .7
        sty     $38                             ; 9DEC 84 38                    .8
MapSystem_Branch_9DEE:
        sty     $81                             ; 9DEE 84 81                    ..
        lda     $04FA,y                         ; 9DF0 B9 FA 04                 ...
        bpl     MapSystem_Branch_9E2B           ; 9DF3 10 36                    .6
        jsr     MapSystem_Entry_9E33            ; 9DF5 20 33 9E                  3.
        lda     $04FA,y                         ; 9DF8 B9 FA 04                 ...
        and     #$07                            ; 9DFB 29 07                    ).
        tax                                     ; 9DFD AA                       .
        lda     #$01                            ; 9DFE A9 01                    ..
        sta     $36                             ; 9E00 85 36                    .6
        lda     #$00                            ; 9E02 A9 00                    ..
        sta     $83                             ; 9E04 85 83                    ..
        sta     $59                             ; 9E06 85 59                    .Y
MapSystem_Branch_9E08:
        jsr     MapSystem_Entry_89A7            ; 9E08 20 A7 89                  ..
        bcs     MapSystem_Branch_9E28           ; 9E0B B0 1B                    ..
        jsr     MapSystem_Entry_9FFC            ; 9E0D 20 FC 9F                  ..
        jsr     MapSystem_Entry_A022            ; 9E10 20 22 A0                  ".
        brk                                     ; 9E13 00                       .
        db   $9A,$FB                         ; 9E14 9A FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9E16:
        jsr     MapSystem_Entry_9F52            ; 9E16 20 52 9F                  R.
        jsr     MapSystem_Entry_9E68            ; 9E19 20 68 9E                  h.
        jsr     MapSystem_Entry_9DA9            ; 9E1C 20 A9 9D                  ..
        jsr     WaitForNmi                      ; 9E1F 20 74 FF                  t.
        lda     $32                             ; 9E22 A5 32                    .2
        ora     $33                             ; 9E24 05 33                    .3
        bne     MapSystem_Branch_9E08           ; 9E26 D0 E0                    ..
MapSystem_Branch_9E28:
        jsr     MapSystem_Entry_9D70            ; 9E28 20 70 9D                  p.
MapSystem_Branch_9E2B:
        ldy     $81                             ; 9E2B A4 81                    ..
        iny                                     ; 9E2D C8                       .
        cpy     #$05                            ; 9E2E C0 05                    ..
        bcc     MapSystem_Branch_9DEE           ; 9E30 90 BC                    ..
        rts                                     ; 9E32 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9E33:
        and     #$07                            ; 9E33 29 07                    ).
        asl     a                               ; 9E35 0A                       .
        tax                                     ; 9E36 AA                       .
        lda     Bank17_MapValues,x              ; 9E37 BD 58 9E                 .X.
        sta     $32                             ; 9E3A 85 32                    .2
        adc     $FD                             ; 9E3C 65 FD                    e.
        sta     $FD                             ; 9E3E 85 FD                    ..
        lda     $9E59,x                         ; 9E40 BD 59 9E                 .Y.
        sta     $33                             ; 9E43 85 33                    .3
        adc     $FE                             ; 9E45 65 FE                    e.
        sta     $FE                             ; 9E47 85 FE                    ..
        lda     $33                             ; 9E49 A5 33                    .3
        cmp     #$04                            ; 9E4B C9 04                    ..
        bcc     MapSystem_Branch_9E57           ; 9E4D 90 08                    ..
        lda     #$03                            ; 9E4F A9 03                    ..
        sta     $33                             ; 9E51 85 33                    .3
        lda     #$E8                            ; 9E53 A9 E8                    ..
        sta     $32                             ; 9E55 85 32                    .2
MapSystem_Branch_9E57:
        rts                                     ; 9E57 60                       `
; ----------------------------------------------------------------------------
Bank17_MapValues:
        db   $05                             ; 9E58 05                       .
        db   $00,$0A,$00,$14,$00,$32,$00,$64 ; 9E59 00 0A 00 14 00 32 00 64  .....2.d
        db   $00,$C8,$00,$F4,$01,$E8,$03     ; 9E61 00 C8 00 F4 01 E8 03     .......
; ----------------------------------------------------------------------------
MapSystem_Entry_9E68:
        lda     $32                             ; 9E68 A5 32                    .2
        sec                                     ; 9E6A 38                       8
        sbc     $36                             ; 9E6B E5 36                    .6
        sta     $32                             ; 9E6D 85 32                    .2
        lda     $33                             ; 9E6F A5 33                    .3
        sbc     $37                             ; 9E71 E5 37                    .7
        sta     $33                             ; 9E73 85 33                    .3
        rts                                     ; 9E75 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9E76:
        jsr     MapSystem_Entry_A38D            ; 9E76 20 8D A3                  ..
        ldx     #$00                            ; 9E79 A2 00                    ..
MapSystem_Branch_9E7B:
        lda     $29,x                           ; 9E7B B5 29                    .)
        ora     $53,x                           ; 9E7D 15 53                    .S
        tay                                     ; 9E7F A8                       .
        lda     ($51),y                         ; 9E80 B1 51                    .Q
        sta     $7B,x                           ; 9E82 95 7B                    .{
        ldy     $29,x                           ; 9E84 B4 29                    .)
        iny                                     ; 9E86 C8                       .
        tya                                     ; 9E87 98                       .
        and     $56                             ; 9E88 25 56                    %V
        ora     $53,x                           ; 9E8A 15 53                    .S
        tay                                     ; 9E8C A8                       .
        lda     ($51),y                         ; 9E8D B1 51                    .Q
        sta     $7E,x                           ; 9E8F 95 7E                    .~
        ldy     $29,x                           ; 9E91 B4 29                    .)
        iny                                     ; 9E93 C8                       .
        iny                                     ; 9E94 C8                       .
        tya                                     ; 9E95 98                       .
        and     $56                             ; 9E96 25 56                    %V
        ora     $53,x                           ; 9E98 15 53                    .S
        tay                                     ; 9E9A A8                       .
        lda     ($51),y                         ; 9E9B B1 51                    .Q
        sta     $81,x                           ; 9E9D 95 81                    ..
        inx                                     ; 9E9F E8                       .
        cpx     #$03                            ; 9EA0 E0 03                    ..
        bcc     MapSystem_Branch_9E7B           ; 9EA2 90 D7                    ..
        ldy     #$00                            ; 9EA4 A0 00                    ..
        sty     $60                             ; 9EA6 84 60                    .`
MapSystem_Branch_9EA8:
        jsr     MapSystem_Entry_9EB8            ; 9EA8 20 B8 9E                  ..
        sta     $04FA,y                         ; 9EAB 99 FA 04                 ...
        ora     $60                             ; 9EAE 05 60                    .`
        sta     $60                             ; 9EB0 85 60                    .`
        iny                                     ; 9EB2 C8                       .
        cpy     $36                             ; 9EB3 C4 36                    .6
        bcc     MapSystem_Branch_9EA8           ; 9EB5 90 F1                    ..
        rts                                     ; 9EB7 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9EB8:
        ldx     Bank17_MapComparisonTables,y    ; 9EB8 BE D7 9E                 ...
        lda     $7B,x                           ; 9EBB B5 7B                    .{
        ldx     $9EDC,y                         ; 9EBD BE DC 9E                 ...
        cmp     $7B,x                           ; 9EC0 D5 7B                    .{
        bne     MapSystem_Branch_9ED4           ; 9EC2 D0 10                    ..
        ldx     $9EE1,y                         ; 9EC4 BE E1 9E                 ...
        cmp     $7B,x                           ; 9EC7 D5 7B                    .{
        beq     MapSystem_Branch_9ED1           ; 9EC9 F0 06                    ..
        cmp     #$01                            ; 9ECB C9 01                    ..
        bne     MapSystem_Branch_9ED4           ; 9ECD D0 05                    ..
        lda     #$00                            ; 9ECF A9 00                    ..
MapSystem_Branch_9ED1:
        ora     #$80                            ; 9ED1 09 80                    ..
        rts                                     ; 9ED3 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_9ED4:
        lda     #$00                            ; 9ED4 A9 00                    ..
        rts                                     ; 9ED6 60                       `
; ----------------------------------------------------------------------------
Bank17_MapComparisonTables:
        db   $03,$06,$00,$06,$00             ; 9ED7 03 06 00 06 00           .....
        db   $04,$07,$01,$04,$04             ; 9EDC 04 07 01 04 04           .....
        db   $05,$08,$02,$02,$08             ; 9EE1 05 08 02 02 08           .....
; ----------------------------------------------------------------------------
MapSystem_Entry_9EE6:
        lda     SaveCasinoCoins                 ; 9EE6 AD AD 62                 ..b
        ora     $62AE                           ; 9EE9 0D AE 62                 ..b
        ora     $62AF                           ; 9EEC 0D AF 62                 ..b
        bne     MapSystem_Branch_9EFD           ; 9EEF D0 0C                    ..
        jsr     MapSystem_Entry_9242            ; 9EF1 20 42 92                  B.
        brk                                     ; 9EF4 00                       .
        db   $7C,$4B                         ; 9EF5 7C 4B                    |K
; ----------------------------------------------------------------------------
MapSystem_Entry_9EF7:
        jsr     MapSystem_Entry_81C2            ; 9EF7 20 C2 81                  ..
        pla                                     ; 9EFA 68                       h
        pla                                     ; 9EFB 68                       h
        rts                                     ; 9EFC 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_9EFD:
        jsr     MapSystem_Entry_9242            ; 9EFD 20 42 92                  B.
        brk                                     ; 9F00 00                       .
        db   $8B,$4B                         ; 9F01 8B 4B                    .K
; ----------------------------------------------------------------------------
MapSystem_Entry_9F03:
        lda     #$00                            ; 9F03 A9 00                    ..
        sta     $36                             ; 9F05 85 36                    .6
MapSystem_Branch_9F07:
        jsr     UpperFixedEngine_Entry_C8EC     ; 9F07 20 EC C8                  ..
        lda     ButtonsPressed                  ; 9F0A A5 14                    ..
        lda     ButtonsPressed                  ; 9F0C A5 14                    ..
        and     #$10                            ; 9F0E 29 10                    ).
        beq     MapSystem_Branch_9F07           ; 9F10 F0 F5                    ..
        bne     MapSystem_Branch_9F30           ; 9F12 D0 1C                    ..
MapSystem_Branch_9F14:
        ldx     #$05                            ; 9F14 A2 05                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 9F16 20 0C C9                  ..
        lda     SaveCasinoCoins                 ; 9F19 AD AD 62                 ..b
        ora     $62AE                           ; 9F1C 0D AE 62                 ..b
        ora     $62AF                           ; 9F1F 0D AF 62                 ..b
        beq     MapSystem_Branch_9F4C           ; 9F22 F0 28                    .(
MapSystem_Branch_9F24:
        jsr     MapSystem_Entry_8DC4            ; 9F24 20 C4 8D                  ..
        lda     ButtonsPressed                  ; 9F27 A5 14                    ..
        lsr     a                               ; 9F29 4A                       J
        bcs     MapSystem_Branch_9F4C           ; 9F2A B0 20                    .
        and     #$08                            ; 9F2C 29 08                    ).
        beq     MapSystem_Branch_9F24           ; 9F2E F0 F4                    ..
MapSystem_Branch_9F30:
        inc     $36                             ; 9F30 E6 36                    .6
        jsr     MapSystem_Entry_8BCD            ; 9F32 20 CD 8B                  ..
        brk                                     ; 9F35 00                       .
        db   $B4,$FB                         ; 9F36 B4 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9F38:
        jsr     MapSystem_Entry_9FFC            ; 9F38 20 FC 9F                  ..
        jsr     MapSystem_Entry_A022            ; 9F3B 20 22 A0                  ".
        jsr     MapSystem_Entry_9F58            ; 9F3E 20 58 9F                  X.
        ldy     $36                             ; 9F41 A4 36                    .6
        jsr     MapSystem_Entry_9FC5            ; 9F43 20 C5 9F                  ..
        ldx     $36                             ; 9F46 A6 36                    .6
        cpx     #$05                            ; 9F48 E0 05                    ..
        bne     MapSystem_Branch_9F14           ; 9F4A D0 C8                    ..
MapSystem_Branch_9F4C:
        brk                                     ; 9F4C 00                       .
        db   $B7,$FB                         ; 9F4D B7 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_9F4F:
        jmp     WaitForNmi                      ; 9F4F 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapSystem_Entry_9F52:
        ldx     #$FF                            ; 9F52 A2 FF                    ..
        lda     #$A7                            ; 9F54 A9 A7                    ..
        bne     MapSystem_Branch_9F5C           ; 9F56 D0 04                    ..
MapSystem_Entry_9F58:
        ldx     #$01                            ; 9F58 A2 01                    ..
        lda     #$97                            ; 9F5A A9 97                    ..
MapSystem_Branch_9F5C:
        stx     $00                             ; 9F5C 86 00                    ..
        ldy     #$00                            ; 9F5E A0 00                    ..
MapSystem_Branch_9F60:
        sta     $0200,y                         ; 9F60 99 00 02                 ...
        iny                                     ; 9F63 C8                       .
        iny                                     ; 9F64 C8                       .
        iny                                     ; 9F65 C8                       .
        iny                                     ; 9F66 C8                       .
        cpy     #$18                            ; 9F67 C0 18                    ..
        bcc     MapSystem_Branch_9F60           ; 9F69 90 F5                    ..
        lda     #$08                            ; 9F6B A9 08                    ..
        sta     $01                             ; 9F6D 85 01                    ..
MapSystem_Branch_9F6F:
        ldx     #$D0                            ; 9F6F A2 D0                    ..
        ldy     #$00                            ; 9F71 A0 00                    ..
MapSystem_Branch_9F73:
        lda     $0201,x                         ; 9F73 BD 01 02                 ...
        cmp     $0201,y                         ; 9F76 D9 01 02                 ...
        beq     MapSystem_Branch_9F8D           ; 9F79 F0 12                    ..
        lda     $0200,x                         ; 9F7B BD 00 02                 ...
        clc                                     ; 9F7E 18                       .
        adc     $00                             ; 9F7F 65 00                    e.
        sta     $0200,x                         ; 9F81 9D 00 02                 ...
        lda     $0200,y                         ; 9F84 B9 00 02                 ...
        clc                                     ; 9F87 18                       .
        adc     $00                             ; 9F88 65 00                    e.
        sta     $0200,y                         ; 9F8A 99 00 02                 ...
MapSystem_Branch_9F8D:
        inx                                     ; 9F8D E8                       .
        inx                                     ; 9F8E E8                       .
        inx                                     ; 9F8F E8                       .
        inx                                     ; 9F90 E8                       .
        iny                                     ; 9F91 C8                       .
        iny                                     ; 9F92 C8                       .
        iny                                     ; 9F93 C8                       .
        iny                                     ; 9F94 C8                       .
        cpx     #$E8                            ; 9F95 E0 E8                    ..
        bcc     MapSystem_Branch_9F73           ; 9F97 90 DA                    ..
        lda     $00                             ; 9F99 A5 00                    ..
        bpl     MapSystem_Branch_9FA0           ; 9F9B 10 03                    ..
        jsr     MapSystem_Entry_9DA9            ; 9F9D 20 A9 9D                  ..
MapSystem_Branch_9FA0:
        jsr     WaitForNmi                      ; 9FA0 20 74 FF                  t.
        dec     $01                             ; 9FA3 C6 01                    ..
        bne     MapSystem_Branch_9F6F           ; 9FA5 D0 C8                    ..
        ldx     #$D0                            ; 9FA7 A2 D0                    ..
        ldy     #$00                            ; 9FA9 A0 00                    ..
MapSystem_Branch_9FAB:
        lda     #$9F                            ; 9FAB A9 9F                    ..
        sta     $0200,x                         ; 9FAD 9D 00 02                 ...
        lda     $0201,y                         ; 9FB0 B9 01 02                 ...
        sta     $0201,x                         ; 9FB3 9D 01 02                 ...
        inx                                     ; 9FB6 E8                       .
        inx                                     ; 9FB7 E8                       .
        inx                                     ; 9FB8 E8                       .
        inx                                     ; 9FB9 E8                       .
        iny                                     ; 9FBA C8                       .
        iny                                     ; 9FBB C8                       .
        iny                                     ; 9FBC C8                       .
        iny                                     ; 9FBD C8                       .
        cpy     #$18                            ; 9FBE C0 18                    ..
        bne     MapSystem_Branch_9FAB           ; 9FC0 D0 E9                    ..
        jmp     MapSystem_Entry_A57A            ; 9FC2 4C 7A A5                 Lz.
; ----------------------------------------------------------------------------
MapSystem_Entry_9FC5:
        dey                                     ; 9FC5 88                       .
MapSystem_Entry_9FC6:
        tya                                     ; 9FC6 98                       .
        asl     a                               ; 9FC7 0A                       .
        asl     a                               ; 9FC8 0A                       .
        adc     #$E8                            ; 9FC9 69 E8                    i.
        tax                                     ; 9FCB AA                       .
        lda     #$03                            ; 9FCC A9 03                    ..
MapSystem_Entry_9FCE:
        pha                                     ; 9FCE 48                       H
        lda     Bank17_MapOamYPositions,y       ; 9FCF B9 F7 9F                 ...
        sta     $0200,x                         ; 9FD2 9D 00 02                 ...
        lda     #$0C                            ; 9FD5 A9 0C                    ..
        sta     $0201,x                         ; 9FD7 9D 01 02                 ...
        lda     #$18                            ; 9FDA A9 18                    ..
        sta     $0203,x                         ; 9FDC 9D 03 02                 ...
        pla                                     ; 9FDF 68                       h
        sta     $0202,x                         ; 9FE0 9D 02 02                 ...
        rts                                     ; 9FE3 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_9FE4:
        ldx     #$E8                            ; 9FE4 A2 E8                    ..
        ldy     #$00                            ; 9FE6 A0 00                    ..
        lda     #$02                            ; 9FE8 A9 02                    ..
MapSystem_Branch_9FEA:
        jsr     MapSystem_Entry_9FCE            ; 9FEA 20 CE 9F                  ..
        inx                                     ; 9FED E8                       .
        inx                                     ; 9FEE E8                       .
        inx                                     ; 9FEF E8                       .
        inx                                     ; 9FF0 E8                       .
        iny                                     ; 9FF1 C8                       .
        cpy     #$05                            ; 9FF2 C0 05                    ..
        bcc     MapSystem_Branch_9FEA           ; 9FF4 90 F4                    ..
        rts                                     ; 9FF6 60                       `
; ----------------------------------------------------------------------------
Bank17_MapOamYPositions:
        db   $5B,$3B,$7B,$1B,$9B             ; 9FF7 5B 3B 7B 1B 9B           [;{..
; ----------------------------------------------------------------------------
MapSystem_Entry_9FFC:
        jsr     MapSystem_Entry_8BE7            ; 9FFC 20 E7 8B                  ..
        ldx     #$06                            ; 9FFF A2 06                    ..
        lda     #$0B                            ; A001 A9 0B                    ..
MapSystem_Branch_A003:
        sta     $04F3,x                         ; A003 9D F3 04                 ...
        dex                                     ; A006 CA                       .
        bne     MapSystem_Branch_A003           ; A007 D0 FA                    ..
        stx     $01                             ; A009 86 01                    ..
MapSystem_Branch_A00B:
        lda     $02,x                           ; A00B B5 02                    ..
        bne     MapSystem_Branch_A015           ; A00D D0 06                    ..
        lda     $01                             ; A00F A5 01                    ..
        beq     MapSystem_Branch_A01C           ; A011 F0 09                    ..
        lda     #$00                            ; A013 A9 00                    ..
MapSystem_Branch_A015:
        sta     $04F4,x                         ; A015 9D F4 04                 ...
        ora     $01                             ; A018 05 01                    ..
        sta     $01                             ; A01A 85 01                    ..
MapSystem_Branch_A01C:
        inx                                     ; A01C E8                       .
        cpx     #$06                            ; A01D E0 06                    ..
        bcc     MapSystem_Branch_A00B           ; A01F 90 EA                    ..
        rts                                     ; A021 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A022:
        ldy     #$00                            ; A022 A0 00                    ..
        beq     MapSystem_Branch_A028           ; A024 F0 02                    ..
MapSystem_Entry_A026:
        ldy     #$D0                            ; A026 A0 D0                    ..
MapSystem_Branch_A028:
        ldx     #$00                            ; A028 A2 00                    ..
MapSystem_Branch_A02A:
        lda     #$9F                            ; A02A A9 9F                    ..
        sta     $0200,y                         ; A02C 99 00 02                 ...
        lda     $04F4,x                         ; A02F BD F4 04                 ...
        sta     $0201,y                         ; A032 99 01 02                 ...
        lda     #$22                            ; A035 A9 22                    ."
        sta     $0202,y                         ; A037 99 02 02                 ...
        lda     Bank17_MapOamXPositions,x       ; A03A BD 4A A0                 .J.
        sta     $0203,y                         ; A03D 99 03 02                 ...
        iny                                     ; A040 C8                       .
        iny                                     ; A041 C8                       .
        iny                                     ; A042 C8                       .
        iny                                     ; A043 C8                       .
        inx                                     ; A044 E8                       .
        cpx     #$06                            ; A045 E0 06                    ..
        bcc     MapSystem_Branch_A02A           ; A047 90 E1                    ..
        rts                                     ; A049 60                       `
; ----------------------------------------------------------------------------
Bank17_MapOamXPositions:
        db   $58,$60,$68,$70,$78,$80         ; A04A 58 60 68 70 78 80        X`hpx.
; ----------------------------------------------------------------------------
MapSystem_Entry_A050:
        jsr     UpperFixedEngine_Entry_C8EC     ; A050 20 EC C8                  ..
        lda     ButtonsPressed                  ; A053 A5 14                    ..
        and     #$01                            ; A055 29 01                    ).
        bne     MapSystem_Entry_A050            ; A057 D0 F7                    ..
        lda     $C000                           ; A059 AD 00 C0                 ...
        bne     MapSystem_Entry_A064            ; A05C D0 06                    ..
MapSystem_Entry_A05E:
        jsr     MapSystem_Entry_9242            ; A05E 20 42 92                  B.
        brk                                     ; A061 00                       .
        db   $8C,$4B                         ; A062 8C 4B                    .K
; ----------------------------------------------------------------------------
MapSystem_Entry_A064:
        jsr     MapSystem_Entry_A226            ; A064 20 26 A2                  &.
MapSystem_Branch_A067:
        lda     $2F                             ; A067 A5 2F                    ./
        and     $30                             ; A069 25 30                    %0
        and     $31                             ; A06B 25 31                    %1
        bmi     MapSystem_Branch_A0C1           ; A06D 30 52                    0R
        ldy     #$00                            ; A06F A0 00                    ..
        jsr     MapSystem_Entry_A261            ; A071 20 61 A2                  a.
        ldy     #$01                            ; A074 A0 01                    ..
        jsr     MapSystem_Entry_A261            ; A076 20 61 A2                  a.
        ldy     #$02                            ; A079 A0 02                    ..
        jsr     MapSystem_Entry_A261            ; A07B 20 61 A2                  a.
        jsr     WaitForNmi                      ; A07E 20 74 FF                  t.
        jsr     MapSystem_Entry_A1FF            ; A081 20 FF A1                  ..
        jsr     MapSystem_Entry_A206            ; A084 20 06 A2                  ..
        bcs     MapSystem_Branch_A067           ; A087 B0 DE                    ..
        lda     $37                             ; A089 A5 37                    .7
        bpl     MapSystem_Branch_A0C2           ; A08B 10 35                    .5
        lda     $2F                             ; A08D A5 2F                    ./
        beq     MapSystem_Branch_A094           ; A08F F0 03                    ..
        jsr     MapSystem_Entry_A0F3            ; A091 20 F3 A0                  ..
MapSystem_Branch_A094:
        lda     $C000                           ; A094 AD 00 C0                 ...
        bne     MapSystem_Branch_A067           ; A097 D0 CE                    ..
MapSystem_Entry_A099:
        jsr     UpperFixedEngine_Entry_C8EC     ; A099 20 EC C8                  ..
        lda     ButtonsPressed                  ; A09C A5 14                    ..
        eor     $03                             ; A09E 45 03                    E.
        and     #$01                            ; A0A0 29 01                    ).
        bne     MapSystem_Branch_A067           ; A0A2 D0 C3                    ..
        lda     $03                             ; A0A4 A5 03                    ..
        beq     MapSystem_Entry_A0B9            ; A0A6 F0 11                    ..
        ldx     $35                             ; A0A8 A6 35                    .5
        cpx     #$03                            ; A0AA E0 03                    ..
        bcs     MapSystem_Entry_A0B9            ; A0AC B0 0B                    ..
        jsr     MapSystem_Entry_A1B9            ; A0AE 20 B9 A1                  ..
        inc     $2F,x                           ; A0B1 F6 2F                    ./
        inx                                     ; A0B3 E8                       .
        stx     $35                             ; A0B4 86 35                    .5
        brk                                     ; A0B6 00                       .
        db   $85,$FB                         ; A0B7 85 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_A0B9:
        lda     $03                             ; A0B9 A5 03                    ..
        eor     #$01                            ; A0BB 49 01                    I.
        sta     $03                             ; A0BD 85 03                    ..
        bpl     MapSystem_Branch_A067           ; A0BF 10 A6                    ..
MapSystem_Branch_A0C1:
        rts                                     ; A0C1 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A0C2:
        dec     $37                             ; A0C2 C6 37                    .7
        bne     MapSystem_Branch_A0F0           ; A0C4 D0 2A                    .*
        lda     $2C                             ; A0C6 A5 2C                    .,
        cmp     #$04                            ; A0C8 C9 04                    ..
        bcc     MapSystem_Branch_A0EA           ; A0CA 90 1E                    ..
        cmp     #$08                            ; A0CC C9 08                    ..
        bcc     MapSystem_Branch_A0E8           ; A0CE 90 18                    ..
        lda     $2D                             ; A0D0 A5 2D                    .-
        cmp     #$08                            ; A0D2 C9 08                    ..
        bcc     MapSystem_Branch_A0E2           ; A0D4 90 0C                    ..
        lda     $2E                             ; A0D6 A5 2E                    ..
        cmp     #$08                            ; A0D8 C9 08                    ..
        bcc     MapSystem_Branch_A0E4           ; A0DA 90 08                    ..
        lda     #$80                            ; A0DC A9 80                    ..
        sta     $37                             ; A0DE 85 37                    .7
        bne     MapSystem_Branch_A0F0           ; A0E0 D0 0E                    ..
MapSystem_Branch_A0E2:
        inc     $2D                             ; A0E2 E6 2D                    .-
MapSystem_Branch_A0E4:
        inc     $2E                             ; A0E4 E6 2E                    ..
        bne     MapSystem_Branch_A0EC           ; A0E6 D0 04                    ..
MapSystem_Branch_A0E8:
        inc     $2D                             ; A0E8 E6 2D                    .-
MapSystem_Branch_A0EA:
        inc     $2C                             ; A0EA E6 2C                    .,
MapSystem_Branch_A0EC:
        lda     #$05                            ; A0EC A9 05                    ..
        sta     $37                             ; A0EE 85 37                    .7
MapSystem_Branch_A0F0:
        jmp     MapSystem_Branch_A067           ; A0F0 4C 67 A0                 Lg.
; ----------------------------------------------------------------------------
MapSystem_Entry_A0F3:
        ldx     #$00                            ; A0F3 A2 00                    ..
MapSystem_Branch_A0F5:
        lda     $2F,x                           ; A0F5 B5 2F                    ./
        beq     MapSystem_Branch_A145           ; A0F7 F0 4C                    .L
        dec     $32,x                           ; A0F9 D6 32                    .2
        lda     $32,x                           ; A0FB B5 32                    .2
        bpl     MapSystem_Branch_A145           ; A0FD 10 46                    .F
        dec     $2C,x                           ; A0FF D6 2C                    .,
        lda     $C000                           ; A101 AD 00 C0                 ...
        beq     MapSystem_Branch_A10E           ; A104 F0 08                    ..
        lda     $2C,x                           ; A106 B5 2C                    .,
        cmp     #$03                            ; A108 C9 03                    ..
        bcc     MapSystem_Branch_A10E           ; A10A 90 02                    ..
        dec     $2C,x                           ; A10C D6 2C                    .,
MapSystem_Branch_A10E:
        lda     $2C,x                           ; A10E B5 2C                    .,
        beq     MapSystem_Branch_A127           ; A110 F0 15                    ..
        ldy     $C000                           ; A112 AC 00 C0                 ...
        beq     $A119                           ; A115 F0 02                    ..
        ora     #$08                            ; A117 09 08                    ..
        tay                                     ; A119 A8                       .
        lda     Bank17_MapTimingTable,y         ; A11A B9 4A A1                 .J.
        bne     MapSystem_Branch_A122           ; A11D D0 03                    ..
        jsr     MapSystem_Entry_A15B            ; A11F 20 5B A1                  [.
MapSystem_Branch_A122:
        sta     $32,x                           ; A122 95 32                    .2
        jmp     MapSystem_Branch_A145           ; A124 4C 45 A1                 LE.
; ----------------------------------------------------------------------------
MapSystem_Branch_A127:
        lda     #$80                            ; A127 A9 80                    ..
        ora     $2F,x                           ; A129 15 2F                    ./
        sta     $2F,x                           ; A12B 95 2F                    ./
        stx     $00                             ; A12D 86 00                    ..
        txa                                     ; A12F 8A                       .
        pha                                     ; A130 48                       H
        lda     $5D,x                           ; A131 B5 5D                    .]
        bne     MapSystem_Branch_A13D           ; A133 D0 08                    ..
        dec     $0D,x                           ; A135 D6 0D                    ..
        lda     $0D,x                           ; A137 B5 0D                    ..
        and     #$1F                            ; A139 29 1F                    ).
        sta     $0D,x                           ; A13B 95 0D                    ..
MapSystem_Branch_A13D:
        jsr     MapSystem_Entry_A34F            ; A13D 20 4F A3                  O.
        brk                                     ; A140 00                       .
        db   $B5,$FB                         ; A141 B5 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_A143:
        pla                                     ; A143 68                       h
        tax                                     ; A144 AA                       .
MapSystem_Branch_A145:
        inx                                     ; A145 E8                       .
        cpx     #$03                            ; A146 E0 03                    ..
        bcc     MapSystem_Branch_A0F5           ; A148 90 AB                    ..
Bank17_MapTimingTable:
        rts                                     ; A14A 60                       `
; ----------------------------------------------------------------------------
        db   $00,$20,$18,$12,$0C,$08,$06,$00 ; A14B 00 20 18 12 0C 08 06 00  . ......
        db   $00,$10,$18,$00,$20,$00,$30,$00 ; A153 00 10 18 00 20 00 30 00  .... .0.
; ----------------------------------------------------------------------------
MapSystem_Entry_A15B:
        lda     $C000                           ; A15B AD 00 C0                 ...
        bne     MapSystem_Branch_A1B3           ; A15E D0 53                    .S
MapSystem_Entry_A160:
        cpx     #$01                            ; A160 E0 01                    ..
        beq     MapSystem_Branch_A171           ; A162 F0 0D                    ..
        cpx     #$02                            ; A164 E0 02                    ..
        beq     MapSystem_Branch_A17A           ; A166 F0 12                    ..
        ldy     $04FF                           ; A168 AC FF 04                 ...
        lda     $A4F0,y                         ; A16B B9 F0 A4                 ...
        jmp     MapSystem_Branch_A180           ; A16E 4C 80 A1                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_A171:
        ldy     $04FF                           ; A171 AC FF 04                 ...
        lda     $A4FA,y                         ; A174 B9 FA A4                 ...
        jmp     MapSystem_Branch_A180           ; A177 4C 80 A1                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_A17A:
        ldy     $04FF                           ; A17A AC FF 04                 ...
        lda     $A504,y                         ; A17D B9 04 A5                 ...
MapSystem_Branch_A180:
        beq     MapSystem_Branch_A1A8           ; A180 F0 26                    .&
        cmp     #$02                            ; A182 C9 02                    ..
        beq     MapSystem_Branch_A18E           ; A184 F0 08                    ..
        jsr     UpperFixedEngine_Entry_C891     ; A186 20 91 C8                  ..
        lsr     a                               ; A189 4A                       J
        bcs     MapSystem_Branch_A1A8           ; A18A B0 1C                    ..
        bcc     MapSystem_Entry_A15B            ; A18C 90 CD                    ..
MapSystem_Branch_A18E:
        jsr     UpperFixedEngine_Entry_C891     ; A18E 20 91 C8                  ..
        and     #$03                            ; A191 29 03                    ).
        sta     $5D,x                           ; A193 95 5D                    .]
        lsr     a                               ; A195 4A                       J
        bne     MapSystem_Branch_A1A8           ; A196 D0 10                    ..
        lda     $2F,x                           ; A198 B5 2F                    ./
        ora     #$40                            ; A19A 09 40                    .@
        sta     $2F,x                           ; A19C 95 2F                    ./
        lda     #$25                            ; A19E A9 25                    .%
        bcc     MapSystem_Branch_A1A4           ; A1A0 90 02                    ..
        lda     #$60                            ; A1A2 A9 60                    .`
MapSystem_Branch_A1A4:
        clc                                     ; A1A4 18                       .
        sbc     $0D,x                           ; A1A5 F5 0D                    ..
        rts                                     ; A1A7 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A1A8:
        lda     $0D,x                           ; A1A8 B5 0D                    ..
        beq     MapSystem_Branch_A1B0           ; A1AA F0 04                    ..
        lda     #$40                            ; A1AC A9 40                    .@
        bne     MapSystem_Branch_A1A4           ; A1AE D0 F4                    ..
MapSystem_Branch_A1B0:
        lda     #$21                            ; A1B0 A9 21                    .!
        rts                                     ; A1B2 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A1B3:
        lda     #$20                            ; A1B3 A9 20                    .
        clc                                     ; A1B5 18                       .
        sbc     $0D,x                           ; A1B6 F5 0D                    ..
        rts                                     ; A1B8 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A1B9:
        lda     $C000                           ; A1B9 AD 00 C0                 ...
        bne     MapSystem_Branch_A1F7           ; A1BC D0 39                    .9
MapSystem_Entry_A1BE:
        cpx     #$01                            ; A1BE E0 01                    ..
        beq     MapSystem_Branch_A1CF           ; A1C0 F0 0D                    ..
        cpx     #$02                            ; A1C2 E0 02                    ..
        beq     MapSystem_Branch_A1D8           ; A1C4 F0 12                    ..
        ldy     $04FF                           ; A1C6 AC FF 04                 ...
        lda     Bank17_MapBehaviorTables,y      ; A1C9 B9 EB A4                 ...
        jmp     MapSystem_Branch_A1DE           ; A1CC 4C DE A1                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_A1CF:
        ldy     $04FF                           ; A1CF AC FF 04                 ...
        lda     $A4F5,y                         ; A1D2 B9 F5 A4                 ...
        jmp     MapSystem_Branch_A1DE           ; A1D5 4C DE A1                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_A1D8:
        ldy     $04FF                           ; A1D8 AC FF 04                 ...
        lda     $A4FF,y                         ; A1DB B9 FF A4                 ...
MapSystem_Branch_A1DE:
        beq     MapSystem_Branch_A1EC           ; A1DE F0 0C                    ..
        cmp     #$02                            ; A1E0 C9 02                    ..
        beq     MapSystem_Branch_A1F1           ; A1E2 F0 0D                    ..
        jsr     UpperFixedEngine_Entry_C891     ; A1E4 20 91 C8                  ..
        and     #$3F                            ; A1E7 29 3F                    )?
        sta     $32,x                           ; A1E9 95 32                    .2
        rts                                     ; A1EB 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A1EC:
        lda     #$10                            ; A1EC A9 10                    ..
        sta     $32,x                           ; A1EE 95 32                    .2
        rts                                     ; A1F0 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A1F1:
        jsr     UpperFixedEngine_Entry_C891     ; A1F1 20 91 C8                  ..
        sta     $32,x                           ; A1F4 95 32                    .2
        rts                                     ; A1F6 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A1F7:
        jsr     UpperFixedEngine_Entry_C891     ; A1F7 20 91 C8                  ..
        and     #$3F                            ; A1FA 29 3F                    )?
        sta     $32,x                           ; A1FC 95 32                    .2
        rts                                     ; A1FE 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A1FF:
        dec     $5B                             ; A1FF C6 5B                    .[
        bne     MapSystem_Branch_A205           ; A201 D0 02                    ..
        dec     $5C                             ; A203 C6 5C                    .\
MapSystem_Branch_A205:
        rts                                     ; A205 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A206:
        lda     $5B                             ; A206 A5 5B                    .[
        ora     $5C                             ; A208 05 5C                    .\
        bne     MapSystem_Branch_A224           ; A20A D0 18                    ..
        ldx     $35                             ; A20C A6 35                    .5
        cpx     #$03                            ; A20E E0 03                    ..
        bcs     MapSystem_Branch_A224           ; A210 B0 12                    ..
        inc     $2F,x                           ; A212 F6 2F                    ./
        jsr     MapSystem_Entry_A1B9            ; A214 20 B9 A1                  ..
        inx                                     ; A217 E8                       .
        stx     $35                             ; A218 86 35                    .5
        lda     #$3C                            ; A21A A9 3C                    .<
        sta     $5B                             ; A21C 85 5B                    .[
        lda     #$01                            ; A21E A9 01                    ..
        sta     $5C                             ; A220 85 5C                    .\
        sec                                     ; A222 38                       8
        rts                                     ; A223 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A224:
        clc                                     ; A224 18                       .
        rts                                     ; A225 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A226:
        lda     #$00                            ; A226 A9 00                    ..
        ldy     #$05                            ; A228 A0 05                    ..
MapSystem_Branch_A22A:
        sta     $0A,y                           ; A22A 99 0A 00                 ...
        sta     $2F,y                           ; A22D 99 2F 00                 ./.
        sta     $04FA,y                         ; A230 99 FA 04                 ...
        dey                                     ; A233 88                       .
        bpl     MapSystem_Branch_A22A           ; A234 10 F4                    ..
        sta     $2D                             ; A236 85 2D                    .-
        sta     $2E                             ; A238 85 2E                    ..
        sta     $35                             ; A23A 85 35                    .5
        sta     $38                             ; A23C 85 38                    .8
        lda     #$01                            ; A23E A9 01                    ..
        sta     $2C                             ; A240 85 2C                    .,
        sta     $03                             ; A242 85 03                    ..
        lda     #$05                            ; A244 A9 05                    ..
        sta     $37                             ; A246 85 37                    .7
        lda     PlayerLocalX                    ; A248 A5 44                    .D
        and     #$0F                            ; A24A 29 0F                    ).
        sta     $04FF                           ; A24C 8D FF 04                 ...
        lda     $C000                           ; A24F AD 00 C0                 ...
        bne     MapSystem_Branch_A258           ; A252 D0 04                    ..
MapSystem_Entry_A254:
        lda     #$0A                            ; A254 A9 0A                    ..
        bne     MapSystem_Branch_A25E           ; A256 D0 06                    ..
MapSystem_Branch_A258:
        lda     #$B4                            ; A258 A9 B4                    ..
        sta     $5B                             ; A25A 85 5B                    .[
        lda     #$01                            ; A25C A9 01                    ..
MapSystem_Branch_A25E:
        sta     $5C                             ; A25E 85 5C                    .\
        rts                                     ; A260 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A261:
        sty     $02                             ; A261 84 02                    ..
        lda     $2F,y                           ; A263 B9 2F 00                 ./.
        bmi     MapSystem_Branch_A2BB           ; A266 30 53                    0S
        lda     $2C,y                           ; A268 B9 2C 00                 .,.
        beq     MapSystem_Branch_A2BB           ; A26B F0 4E                    .N
        sta     $01                             ; A26D 85 01                    ..
MapSystem_Branch_A26F:
        ldx     $02                             ; A26F A6 02                    ..
        jsr     MapSystem_Entry_A315            ; A271 20 15 A3                  ..
        inc     $0D,x                           ; A274 F6 0D                    ..
        lda     $0D,x                           ; A276 B5 0D                    ..
        and     #$1F                            ; A278 29 1F                    ).
        cmp     #$0C                            ; A27A C9 0C                    ..
        beq     MapSystem_Branch_A2C0           ; A27C F0 42                    .B
        cmp     #$14                            ; A27E C9 14                    ..
        beq     MapSystem_Branch_A2BC           ; A280 F0 3A                    .:
        lda     $0D,x                           ; A282 B5 0D                    ..
        and     #$1F                            ; A284 29 1F                    ).
        bne     MapSystem_Branch_A2B7           ; A286 D0 2F                    ./
        lda     #$00                            ; A288 A9 00                    ..
        sta     $0D,x                           ; A28A 95 0D                    ..
        inc     $29,x                           ; A28C F6 29                    .)
        lda     $29,x                           ; A28E B5 29                    .)
        and     $56                             ; A290 25 56                    %V
        sta     $29,x                           ; A292 95 29                    .)
        inc     $0A,x                           ; A294 F6 0A                    ..
        lda     $0A,x                           ; A296 B5 0A                    ..
        cmp     #$03                            ; A298 C9 03                    ..
        bcc     MapSystem_Branch_A2A0           ; A29A 90 04                    ..
        lda     #$00                            ; A29C A9 00                    ..
        sta     $0A,x                           ; A29E 95 0A                    ..
MapSystem_Branch_A2A0:
        lda     $2F,x                           ; A2A0 B5 2F                    ./
        beq     MapSystem_Branch_A2B7           ; A2A2 F0 13                    ..
        lda     $2C,x                           ; A2A4 B5 2C                    .,
        bne     MapSystem_Branch_A2B7           ; A2A6 D0 0F                    ..
        lda     #$81                            ; A2A8 A9 81                    ..
        sta     $2F,x                           ; A2AA 95 2F                    ./
        sty     $00                             ; A2AC 84 00                    ..
        jsr     MapSystem_Entry_A34F            ; A2AE 20 4F A3                  O.
        brk                                     ; A2B1 00                       .
        db   $B5,$FB                         ; A2B2 B5 FB                    ..
; ----------------------------------------------------------------------------
MapSystem_Entry_A2B4:
        jmp     MapSystem_Branch_A2BB           ; A2B4 4C BB A2                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_A2B7:
        dec     $01                             ; A2B7 C6 01                    ..
        bne     MapSystem_Branch_A26F           ; A2B9 D0 B4                    ..
MapSystem_Branch_A2BB:
        rts                                     ; A2BB 60                       `
; ----------------------------------------------------------------------------
MapSystem_Branch_A2BC:
        lda     #$00                            ; A2BC A9 00                    ..
        beq     MapSystem_Branch_A2C2           ; A2BE F0 02                    ..
MapSystem_Branch_A2C0:
        lda     #$02                            ; A2C0 A9 02                    ..
MapSystem_Branch_A2C2:
        sta     $00                             ; A2C2 85 00                    ..
        lda     $0A,x                           ; A2C4 B5 0A                    ..
        asl     a                               ; A2C6 0A                       .
        asl     a                               ; A2C7 0A                       .
        adc     $00                             ; A2C8 65 00                    e.
        asl     a                               ; A2CA 0A                       .
        asl     a                               ; A2CB 0A                       .
        adc     Bank17_MapOamOffsets,x          ; A2CC 7D 39 A3                 }9.
        ldy     $02                             ; A2CF A4 02                    ..
        tax                                     ; A2D1 AA                       .
        lda     #$2B                            ; A2D2 A9 2B                    .+
        sta     $0200,x                         ; A2D4 9D 00 02                 ...
        sta     $0204,x                         ; A2D7 9D 04 02                 ...
        lda     Bank17_MapOamLookups,y          ; A2DA B9 67 A5                 .g.
        sta     $0203,x                         ; A2DD 9D 03 02                 ...
        lda     $A56A,y                         ; A2E0 B9 6A A5                 .j.
        sta     $0207,x                         ; A2E3 9D 07 02                 ...
        jsr     MapSystem_Entry_A38D            ; A2E6 20 8D A3                  ..
        lda     $29,y                           ; A2E9 B9 29 00                 .).
        clc                                     ; A2EC 18                       .
        adc     #$03                            ; A2ED 69 03                    i.
        and     $56                             ; A2EF 25 56                    %V
        ora     $53,y                           ; A2F1 19 53 00                 .S.
        tay                                     ; A2F4 A8                       .
        lda     ($51),y                         ; A2F5 B1 51                    .Q
        pha                                     ; A2F7 48                       H
        tay                                     ; A2F8 A8                       .
        lda     $A572,y                         ; A2F9 B9 72 A5                 .r.
        sta     $0202,x                         ; A2FC 9D 02 02                 ...
        sta     $0206,x                         ; A2FF 9D 06 02                 ...
        pla                                     ; A302 68                       h
        asl     a                               ; A303 0A                       .
        asl     a                               ; A304 0A                       .
        asl     a                               ; A305 0A                       .
        asl     a                               ; A306 0A                       .
        adc     $00                             ; A307 65 00                    e.
        tay                                     ; A309 A8                       .
        sta     $0201,x                         ; A30A 9D 01 02                 ...
        iny                                     ; A30D C8                       .
        tya                                     ; A30E 98                       .
        sta     $0205,x                         ; A30F 9D 05 02                 ...
        jmp     MapSystem_Branch_A2B7           ; A312 4C B7 A2                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_A315:
        txa                                     ; A315 8A                       .
        pha                                     ; A316 48                       H
        lda     Bank17_MapOamOffsets,x          ; A317 BD 39 A3                 .9.
        tax                                     ; A31A AA                       .
        lda     #$0C                            ; A31B A9 0C                    ..
        sta     $00                             ; A31D 85 00                    ..
MapSystem_Branch_A31F:
        inc     $0200,x                         ; A31F FE 00 02                 ...
        lda     $0200,x                         ; A322 BD 00 02                 ...
        cmp     #$8C                            ; A325 C9 8C                    ..
        bcc     MapSystem_Branch_A32E           ; A327 90 05                    ..
        lda     #$F7                            ; A329 A9 F7                    ..
        sta     $0200,x                         ; A32B 9D 00 02                 ...
MapSystem_Branch_A32E:
        inx                                     ; A32E E8                       .
        inx                                     ; A32F E8                       .
        inx                                     ; A330 E8                       .
        inx                                     ; A331 E8                       .
        dec     $00                             ; A332 C6 00                    ..
        bne     MapSystem_Branch_A31F           ; A334 D0 E9                    ..
        pla                                     ; A336 68                       h
        tax                                     ; A337 AA                       .
        rts                                     ; A338 60                       `
; ----------------------------------------------------------------------------
Bank17_MapOamOffsets:
        db   $40,$70,$A0                     ; A339 40 70 A0                 @p.
; ----------------------------------------------------------------------------
MapSystem_Entry_A33C:
        jsr     MapSystem_Entry_A38D            ; A33C 20 8D A3                  ..
        lda     #$00                            ; A33F A9 00                    ..
        sta     $00                             ; A341 85 00                    ..
        jsr     MapSystem_Entry_A34F            ; A343 20 4F A3                  O.
        lda     #$10                            ; A346 A9 10                    ..
        inc     $00                             ; A348 E6 00                    ..
        jsr     MapSystem_Entry_A34F            ; A34A 20 4F A3                  O.
        inc     $00                             ; A34D E6 00                    ..
MapSystem_Entry_A34F:
        lda     #$00                            ; A34F A9 00                    ..
        sta     $01                             ; A351 85 01                    ..
        ldx     $00                             ; A353 A6 00                    ..
        lda     $29,x                           ; A355 B5 29                    .)
        ora     $53,x                           ; A357 15 53                    .S
        tay                                     ; A359 A8                       .
        lda     ($51),y                         ; A35A B1 51                    .Q
        ldy     Bank17_MapPatternMetadata,x     ; A35C BC B8 A3                 ...
        jsr     MapSystem_Entry_A516            ; A35F 20 16 A5                  ..
        inc     $01                             ; A362 E6 01                    ..
        ldx     $00                             ; A364 A6 00                    ..
        ldy     $29,x                           ; A366 B4 29                    .)
        iny                                     ; A368 C8                       .
        tya                                     ; A369 98                       .
        and     $56                             ; A36A 25 56                    %V
        ora     $53,x                           ; A36C 15 53                    .S
        tay                                     ; A36E A8                       .
        lda     ($51),y                         ; A36F B1 51                    .Q
        ldy     $A3BB,x                         ; A371 BC BB A3                 ...
        jsr     MapSystem_Entry_A516            ; A374 20 16 A5                  ..
        inc     $01                             ; A377 E6 01                    ..
        ldx     $00                             ; A379 A6 00                    ..
        ldy     $29,x                           ; A37B B4 29                    .)
        iny                                     ; A37D C8                       .
        iny                                     ; A37E C8                       .
        tya                                     ; A37F 98                       .
        and     $56                             ; A380 25 56                    %V
        ora     $53,x                           ; A382 15 53                    .S
        tay                                     ; A384 A8                       .
        lda     ($51),y                         ; A385 B1 51                    .Q
        ldy     $A3BE,x                         ; A387 BC BE A3                 ...
        jmp     MapSystem_Entry_A516            ; A38A 4C 16 A5                 L..
; ----------------------------------------------------------------------------
MapSystem_Entry_A38D:
        txa                                     ; A38D 8A                       .
        pha                                     ; A38E 48                       H
        tya                                     ; A38F 98                       .
        pha                                     ; A390 48                       H
        ldx     $04FF                           ; A391 AE FF 04                 ...
        ldy     $A511,x                         ; A394 BC 11 A5                 ...
        ldx     #$00                            ; A397 A2 00                    ..
MapSystem_Branch_A399:
        lda     Bank17_MapMasks,y               ; A399 B9 09 A5                 ...
        sta     $53,x                           ; A39C 95 53                    .S
        iny                                     ; A39E C8                       .
        inx                                     ; A39F E8                       .
        cpx     #$04                            ; A3A0 E0 04                    ..
        bcc     MapSystem_Branch_A399           ; A3A2 90 F5                    ..
        lda     $04FF                           ; A3A4 AD FF 04                 ...
        asl     a                               ; A3A7 0A                       .
        tax                                     ; A3A8 AA                       .
        lda     $A3C1,x                         ; A3A9 BD C1 A3                 ...
        sta     $51                             ; A3AC 85 51                    .Q
        lda     $A3C2,x                         ; A3AE BD C2 A3                 ...
        sta     $52                             ; A3B1 85 52                    .R
        pla                                     ; A3B3 68                       h
        tay                                     ; A3B4 A8                       .
        pla                                     ; A3B5 68                       h
        tax                                     ; A3B6 AA                       .
        rts                                     ; A3B7 60                       `
; ----------------------------------------------------------------------------
Bank17_MapPatternMetadata:
        db   $40,$70,$A0                     ; A3B8 40 70 A0                 @p.
        db   $50,$80,$B0                     ; A3BB 50 80 B0                 P..
        db   $60,$90,$C0                     ; A3BE 60 90 C0                 `..
        db   $CB                             ; A3C1 CB                       .
        db   $A3,$FB,$A3,$2B,$A4,$5B,$A4,$8B ; A3C2 A3 FB A3 2B A4 5B A4 8B  ...+.[..
        db   $A4,$07,$06,$04,$02,$01,$06,$04 ; A3CA A4 07 06 04 02 01 06 04  ........
        db   $01,$02,$01,$03,$05,$04,$03,$01 ; A3D2 01 02 01 03 05 04 03 01  ........
        db   $02,$07,$06,$02,$01,$02,$01,$02 ; A3DA 02 07 06 02 01 02 01 02  ........
        db   $05,$03,$05,$01,$03,$02,$05,$04 ; A3E2 05 03 05 01 03 02 05 04  ........
        db   $02,$07,$05,$06,$04,$03,$02,$01 ; A3EA 02 07 05 06 04 03 02 01  ........
        db   $03,$01,$02,$03,$01,$04,$01,$02 ; A3F2 03 01 02 03 01 04 01 02  ........
        db   $03,$05,$07,$06,$01,$04,$02,$01 ; A3FA 03 05 07 06 01 04 02 01  ........
        db   $01,$06,$03,$04,$02,$01,$03,$04 ; A402 01 06 03 04 02 01 03 04  ........
        db   $02,$05,$07,$06,$03,$04,$02,$05 ; A40A 02 05 07 06 03 04 02 05  ........
        db   $01,$03,$02,$04,$02,$01,$02,$05 ; A412 01 03 02 04 02 01 02 05  ........
        db   $02,$05,$07,$06,$01,$04,$03,$02 ; A41A 02 05 07 06 01 04 03 02  ........
        db   $03,$02,$01,$01,$03,$01,$03,$04 ; A422 03 02 01 01 03 01 03 04  ........
        db   $02,$07,$06,$04,$01,$02,$03,$02 ; A42A 02 07 06 04 01 02 03 02  ........
        db   $01,$02,$03,$02,$05,$01,$02,$01 ; A432 01 02 03 02 05 01 02 01  ........
        db   $02,$07,$06,$01,$03,$01,$02,$01 ; A43A 02 07 06 01 03 01 02 01  ........
        db   $05,$02,$01,$02,$03,$01,$02,$04 ; A442 05 02 01 02 03 01 02 04  ........
        db   $02,$07,$05,$06,$04,$01,$03,$01 ; A44A 02 07 05 06 04 01 03 01  ........
        db   $03,$02,$01,$03,$01,$03,$01,$03 ; A452 03 02 01 03 01 03 01 03  ........
        db   $02,$07,$06,$02,$04,$03,$02,$04 ; A45A 02 07 06 02 04 03 02 04  ........
        db   $01,$02,$04,$02,$05,$04,$02,$04 ; A462 01 02 04 02 05 04 02 04  ........
        db   $02,$07,$06,$03,$04,$03,$04,$05 ; A46A 02 07 06 03 04 03 04 05  ........
        db   $03,$01,$03,$04,$03,$04,$03,$01 ; A472 03 01 03 04 03 04 03 01  ........
        db   $02,$07,$05,$06,$03,$05,$01,$05 ; A47A 02 07 05 06 03 05 01 05  ........
        db   $05,$03,$02,$05,$04,$05,$01,$05 ; A482 05 03 02 05 04 05 01 05  ........
        db   $03,$07,$07,$07,$04,$04,$04,$06 ; A48A 03 07 07 07 04 04 04 06  ........
        db   $04,$04,$01,$01,$01,$04,$04,$04 ; A492 04 04 01 01 01 04 04 04  ........
        db   $01,$01,$01,$04,$05,$04,$04,$04 ; A49A 01 01 01 04 05 04 04 04  ........
        db   $02,$04,$04,$03,$04,$04,$01,$01 ; A4A2 02 04 04 03 04 04 01 01  ........
        db   $01,$07,$07,$07,$03,$03,$05,$03 ; A4AA 01 07 07 07 03 03 05 03  ........
        db   $03,$02,$03,$01,$01,$01,$03,$03 ; A4B2 03 02 03 01 01 01 03 03  ........
        db   $03,$04,$03,$01,$01,$01,$01,$03 ; A4BA 03 04 03 01 01 01 01 03  ........
        db   $03,$03,$01,$01,$01,$06,$03,$03 ; A4C2 03 03 01 01 01 06 03 03  ........
        db   $03,$07,$07,$07,$02,$02,$06,$02 ; A4CA 03 07 07 07 02 02 06 02  ........
        db   $02,$04,$02,$02,$02,$01,$01,$01 ; A4D2 02 04 02 02 02 01 01 01  ........
        db   $02,$02,$05,$02,$02,$03,$02,$02 ; A4DA 02 02 05 02 02 03 02 02  ........
        db   $01,$01,$01,$02,$02,$02,$01,$01 ; A4E2 01 01 01 02 02 02 01 01  ........
        db   $01                             ; A4EA 01                       .
Bank17_MapBehaviorTables:
        db   $00,$01,$00,$00,$02             ; A4EB 00 01 00 00 02           .....
        db   $00,$02,$02,$02,$02             ; A4F0 00 02 02 02 02           .....
        db   $00,$01,$00,$00,$02             ; A4F5 00 01 00 00 02           .....
        db   $00,$02,$01,$01,$02             ; A4FA 00 02 01 01 02           .....
        db   $02,$00,$01,$00,$02             ; A4FF 02 00 01 00 02           .....
        db   $00,$00,$02,$02,$02             ; A504 00 00 02 02 02           .....
Bank17_MapMasks:
        db   $00,$10,$20,$0F,$00,$20,$40,$1F ; A509 00 10 20 0F 00 20 40 1F  .. .. @.
        db   $00,$00,$00,$00,$04             ; A511 00 00 00 00 04           .....
; ----------------------------------------------------------------------------
MapSystem_Entry_A516:
        pha                                     ; A516 48                       H
        lda     Bank17_MapOamLookups,x          ; A517 BD 67 A5                 .g.
        sta     $0203,y                         ; A51A 99 03 02                 ...
        sta     $020B,y                         ; A51D 99 0B 02                 ...
        lda     $A56A,x                         ; A520 BD 6A A5                 .j.
        sta     $0207,y                         ; A523 99 07 02                 ...
        sta     $020F,y                         ; A526 99 0F 02                 ...
        ldx     $01                             ; A529 A6 01                    ..
        lda     $A56D,x                         ; A52B BD 6D A5                 .m.
        sta     $0200,y                         ; A52E 99 00 02                 ...
        sta     $0204,y                         ; A531 99 04 02                 ...
        lda     $A570,x                         ; A534 BD 70 A5                 .p.
        sta     $0208,y                         ; A537 99 08 02                 ...
        sta     $020C,y                         ; A53A 99 0C 02                 ...
        pla                                     ; A53D 68                       h
        tax                                     ; A53E AA                       .
        lda     $A572,x                         ; A53F BD 72 A5                 .r.
        sta     $0202,y                         ; A542 99 02 02                 ...
        sta     $0206,y                         ; A545 99 06 02                 ...
        sta     $020A,y                         ; A548 99 0A 02                 ...
        sta     $020E,y                         ; A54B 99 0E 02                 ...
        txa                                     ; A54E 8A                       .
        asl     a                               ; A54F 0A                       .
        asl     a                               ; A550 0A                       .
        asl     a                               ; A551 0A                       .
        asl     a                               ; A552 0A                       .
        tax                                     ; A553 AA                       .
        sta     $0201,y                         ; A554 99 01 02                 ...
        inx                                     ; A557 E8                       .
        txa                                     ; A558 8A                       .
        sta     $0205,y                         ; A559 99 05 02                 ...
        inx                                     ; A55C E8                       .
        txa                                     ; A55D 8A                       .
        sta     $0209,y                         ; A55E 99 09 02                 ...
        inx                                     ; A561 E8                       .
        txa                                     ; A562 8A                       .
        sta     $020D,y                         ; A563 99 0D 02                 ...
        rts                                     ; A566 60                       `
; ----------------------------------------------------------------------------
Bank17_MapOamLookups:
        db   $38,$68,$98                     ; A567 38 68 98                 8h.
        db   $40,$70,$A0                     ; A56A 40 70 A0                 @p.
        db   $77,$57,$37                     ; A56D 77 57 37                 wW7
        db   $7F,$5F                         ; A570 7F 5F                    ._
        db   $3F,$00,$01,$00,$01,$03,$00,$00 ; A572 3F 00 01 00 01 03 00 00  ?.......
; ----------------------------------------------------------------------------
MapSystem_Entry_A57A:
        ldy     #$3F                            ; A57A A0 3F                    .?
        lda     #$00                            ; A57C A9 00                    ..
MapSystem_Branch_A57E:
        sta     $0200,y                         ; A57E 99 00 02                 ...
        dey                                     ; A581 88                       .
        bpl     MapSystem_Branch_A57E           ; A582 10 FA                    ..
        ldy     #$3C                            ; A584 A0 3C                    .<
        lda     #$2B                            ; A586 A9 2B                    .+
        jsr     MapSystem_Entry_A58F            ; A588 20 8F A5                  ..
        ldy     #$1C                            ; A58B A0 1C                    ..
        lda     #$8C                            ; A58D A9 8C                    ..
MapSystem_Entry_A58F:
        sta     $0200,y                         ; A58F 99 00 02                 ...
        dey                                     ; A592 88                       .
        dey                                     ; A593 88                       .
        dey                                     ; A594 88                       .
        dey                                     ; A595 88                       .
        bpl     MapSystem_Entry_A58F            ; A596 10 F7                    ..
        rts                                     ; A598 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A599:
        lda     PPUSTATUS                       ; A599 AD 02 20                 ..
        lda     #$20                            ; A59C A9 20                    .
        sta     PPUADDR                         ; A59E 8D 06 20                 ..
        ldx     #$00                            ; A5A1 A2 00                    ..
        stx     PPUADDR                         ; A5A3 8E 06 20                 ..
MapSystem_Branch_A5A6:
        lda     Bank17_MapTileIndices,x         ; A5A6 BD 50 A6                 .P.
        jsr     MapSystem_Entry_A62E            ; A5A9 20 2E A6                  ..
        inx                                     ; A5AC E8                       .
        cpx     #$1F                            ; A5AD E0 1F                    ..
        bcc     MapSystem_Branch_A5A6           ; A5AF 90 F5                    ..
        lda     #$20                            ; A5B1 A9 20                    .
        sta     $04                             ; A5B3 85 04                    ..
        lda     #$A5                            ; A5B5 A9 A5                    ..
        sta     $03                             ; A5B7 85 03                    ..
        lda     #$00                            ; A5B9 A9 00                    ..
        sta     $05                             ; A5BB 85 05                    ..
MapSystem_Branch_A5BD:
        lda     PPUSTATUS                       ; A5BD AD 02 20                 ..
        lda     $04                             ; A5C0 A5 04                    ..
        sta     PPUADDR                         ; A5C2 8D 06 20                 ..
        lda     $03                             ; A5C5 A5 03                    ..
        sta     PPUADDR                         ; A5C7 8D 06 20                 ..
        ldx     $05                             ; A5CA A6 05                    ..
        lda     Bank17_MapRowTiles,x            ; A5CC BD 03 A7                 ...
        beq     MapSystem_Branch_A5EC           ; A5CF F0 1B                    ..
        tax                                     ; A5D1 AA                       .
        jsr     MapSystem_Entry_A62E            ; A5D2 20 2E A6                  ..
        txa                                     ; A5D5 8A                       .
        jsr     MapSystem_Entry_A62E            ; A5D6 20 2E A6                  ..
        txa                                     ; A5D9 8A                       .
        jsr     MapSystem_Entry_A62E            ; A5DA 20 2E A6                  ..
        inc     $05                             ; A5DD E6 05                    ..
        clc                                     ; A5DF 18                       .
        lda     $03                             ; A5E0 A5 03                    ..
        adc     #$20                            ; A5E2 69 20                    i
        sta     $03                             ; A5E4 85 03                    ..
        bcc     MapSystem_Branch_A5BD           ; A5E6 90 D5                    ..
        inc     $04                             ; A5E8 E6 04                    ..
        bcs     MapSystem_Branch_A5BD           ; A5EA B0 D1                    ..
MapSystem_Branch_A5EC:
        ldy     #$FF                            ; A5EC A0 FF                    ..
MapSystem_Branch_A5EE:
        lda     PPUSTATUS                       ; A5EE AD 02 20                 ..
        iny                                     ; A5F1 C8                       .
        lda     Bank17_MapPpuCommands,y         ; A5F2 B9 12 A7                 ...
        cmp     #$FF                            ; A5F5 C9 FF                    ..
        beq     MapSystem_Branch_A613           ; A5F7 F0 1A                    ..
        pha                                     ; A5F9 48                       H
        iny                                     ; A5FA C8                       .
        lda     Bank17_MapPpuCommands,y         ; A5FB B9 12 A7                 ...
        sta     PPUADDR                         ; A5FE 8D 06 20                 ..
        pla                                     ; A601 68                       h
        sta     PPUADDR                         ; A602 8D 06 20                 ..
MapSystem_Branch_A605:
        iny                                     ; A605 C8                       .
        lda     Bank17_MapPpuCommands,y         ; A606 B9 12 A7                 ...
        cmp     #$FF                            ; A609 C9 FF                    ..
        beq     MapSystem_Branch_A5EE           ; A60B F0 E1                    ..
        sta     PPUDATA                         ; A60D 8D 07 20                 ..
        jmp     MapSystem_Branch_A605           ; A610 4C 05 A6                 L..
; ----------------------------------------------------------------------------
MapSystem_Branch_A613:
        lda     PPUSTATUS                       ; A613 AD 02 20                 ..
        lda     #$23                            ; A616 A9 23                    .#
        sta     PPUADDR                         ; A618 8D 06 20                 ..
        lda     #$C0                            ; A61B A9 C0                    ..
        sta     PPUADDR                         ; A61D 8D 06 20                 ..
        ldy     #$00                            ; A620 A0 00                    ..
MapSystem_Branch_A622:
        lda     Bank17_MapAttributes,y          ; A622 B9 D8 A7                 ...
        sta     PPUDATA                         ; A625 8D 07 20                 ..
        iny                                     ; A628 C8                       .
        cpy     #$26                            ; A629 C0 26                    .&
        bcc     MapSystem_Branch_A622           ; A62B 90 F5                    ..
        rts                                     ; A62D 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A62E:
        asl     a                               ; A62E 0A                       .
        tay                                     ; A62F A8                       .
        lda     Bank17_MapTilePointers,y        ; A630 B9 6F A6                 .o.
        sta     $00                             ; A633 85 00                    ..
        lda     $A670,y                         ; A635 B9 70 A6                 .p.
        sta     $01                             ; A638 85 01                    ..
        ldy     #$00                            ; A63A A0 00                    ..
MapSystem_Branch_A63C:
        lda     ($00),y                         ; A63C B1 00                    ..
        beq     MapSystem_Branch_A64F           ; A63E F0 0F                    ..
        sta     $02                             ; A640 85 02                    ..
        iny                                     ; A642 C8                       .
        lda     ($00),y                         ; A643 B1 00                    ..
        iny                                     ; A645 C8                       .
MapSystem_Branch_A646:
        sta     PPUDATA                         ; A646 8D 07 20                 ..
        dec     $02                             ; A649 C6 02                    ..
        bne     MapSystem_Branch_A646           ; A64B D0 F9                    ..
        beq     MapSystem_Branch_A63C           ; A64D F0 ED                    ..
MapSystem_Branch_A64F:
        rts                                     ; A64F 60                       `
; ----------------------------------------------------------------------------
Bank17_MapTileIndices:
        db   $00,$00,$00,$01,$01,$01,$01,$01 ; A650 00 00 00 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; A658 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$00,$00,$02,$03 ; A660 01 01 01 01 00 00 02 03  ........
        db   $04,$0A,$0A,$0B,$0C,$0C,$0D     ; A668 04 0A 0A 0B 0C 0C 0D     .......
Bank17_MapTilePointers:
        db   $8B                             ; A66F 8B                       .
        db   $A6,$8E,$A6,$99,$A6,$A4,$A6,$AF ; A670 A6 8E A6 99 A6 A4 A6 AF  ........
        db   $A6,$BA,$A6,$C3,$A6,$CC,$A6,$D5 ; A678 A6 BA A6 C3 A6 CC A6 D5  ........
        db   $A6,$DC,$A6,$E3,$A6,$EE,$A6,$F9 ; A680 A6 DC A6 E3 A6 EE A6 F9  ........
        db   $A6,$FC,$A6                     ; A688 A6 FC A6                 ...
Bank17_MapTileRle:
        db   $20,$8E,$00,$17,$8E,$01,$B6,$06 ; A68B 20 8E 00 17 8E 01 B6 06   .......
        db   $8F,$01,$B7,$01,$8E,$00,$03,$BC ; A693 8F 01 B7 01 8E 00 03 BC  ........
        db   $01,$86,$18,$85,$01,$89,$03,$BC ; A69B 01 86 18 85 01 89 03 BC  ........
        db   $00,$03,$BD,$01,$84,$18,$00,$01 ; A6A3 00 03 BD 01 84 18 00 01  ........
        db   $88,$03,$BD,$00,$03,$BE,$01,$84 ; A6AB 88 03 BD 00 03 BE 01 84  ........
        db   $18,$00,$01,$88,$03,$BE,$00,$01 ; A6B3 18 00 01 88 03 BE 00 01  ........
        db   $AB,$03,$8D,$01,$BF,$01,$AC,$00 ; A6BB AB 03 8D 01 BF 01 AC 00  ........
        db   $01,$AB,$03,$C0,$01,$C1,$01,$AC ; A6C3 01 AB 03 C0 01 C1 01 AC  ........
        db   $00,$01,$AB,$03,$C2,$01,$C3,$01 ; A6CB 00 01 AB 03 C2 01 C3 01  ........
        db   $AC,$00,$01,$A8,$04,$A9,$01,$AA ; A6D3 AC 00 01 A8 04 A9 01 AA  ........
        db   $00,$01,$AD,$04,$AE,$01,$AF,$00 ; A6DB 00 01 AD 04 AE 01 AF 00  ........
        db   $03,$8F,$01,$84,$18,$00,$01,$88 ; A6E3 03 8F 01 84 18 00 01 88  ........
        db   $03,$8F,$00,$03,$8F,$01,$87,$18 ; A6EB 03 8F 00 03 8F 01 87 18  ........
        db   $8A,$01,$8B,$03,$8F,$00,$20,$8F ; A6F3 8A 01 8B 03 8F 00 20 8F  ...... .
        db   $00,$28,$FF,$08,$0F,$10,$00,$00 ; A6FB 00 28 FF 08 0F 10 00 00  .(......
Bank17_MapRowTiles:
        db   $08,$06,$05,$05,$05,$05,$05,$05 ; A703 08 06 05 05 05 05 05 05  ........
        db   $05,$05,$05,$05,$07,$09,$00     ; A70B 05 05 05 05 07 09 00     .......
Bank17_MapPpuCommands:
        db   $48,$20,$90,$91,$92,$93,$94,$95 ; A712 48 20 90 91 92 93 94 95  H ......
        db   $96,$97,$98,$99,$9A,$9B,$FF,$68 ; A71A 96 97 98 99 9A 9B FF 68  .......h
        db   $20,$9C,$9D,$9E,$9F,$A0,$A1,$A2 ; A722 20 9C 9D 9E 9F A0 A1 A2   .......
        db   $A3,$A4,$A5,$A6,$A7,$FF,$63,$20 ; A72A A3 A4 A5 A6 A7 FF 63 20  ......c
        db   $B0,$FF,$83,$20,$B1,$B2,$FF,$E3 ; A732 B0 FF 83 20 B1 B2 FF E3  ... ....
        db   $20,$B0,$FF,$03,$21,$B1,$E1,$FF ; A73A 20 B0 FF 03 21 B1 E1 FF   ...!...
        db   $63,$21,$B0,$FF,$83,$21,$B1,$E1 ; A742 63 21 B0 FF 83 21 B1 E1  c!...!..
        db   $FF,$E3,$21,$B0,$FF,$03,$22,$B1 ; A74A FF E3 21 B0 FF 03 22 B1  ..!...".
        db   $E1,$FF,$63,$22,$B0,$B3,$FF,$83 ; A752 E1 FF 63 22 B0 B3 FF 83  ..c"....
        db   $22,$B1,$FF,$6A,$22,$B8,$B5,$B5 ; A75A 22 B1 FF 6A 22 B8 B5 B5  "..j"...
        db   $B5,$B5,$B5,$B5,$B9,$8E,$D7,$D8 ; A762 B5 B5 B5 B5 B9 8E D7 D8  ........
        db   $D9,$FF,$86,$22,$C4,$C5,$C6,$C7 ; A76A D9 FF 86 22 C4 C5 C6 C7  ..."....
        db   $B6,$00,$00,$00,$00,$00,$00,$B7 ; A772 B6 00 00 00 00 00 00 B7  ........
        db   $8E,$DA,$DB,$DC,$FF,$AA,$22,$BA ; A77A 8E DA DB DC FF AA 22 BA  ......".
        db   $B4,$B4,$B4,$B4,$B4,$B4,$BB,$8E ; A782 B4 B4 B4 B4 B4 B4 BB 8E  ........
        db   $DD,$DE,$DF,$E0,$FF             ; A78A DD DE DF E0 FF           .....
        db   $58                             ; A78F 58                       X
        db   $22                             ; A790 22                       "
        db   $CE,$CE,$8F,$CF,$8F,$D5,$FF,$18 ; A791 CE CE 8F CF 8F D5 FF 18  ........
        db   $22,$CE,$CE,$CE,$CF,$8F,$D4,$FF ; A799 22 CE CE CE CF 8F D4 FF  ".......
        db   $D8,$21,$CD,$CD,$CD,$CF,$8F,$D1 ; A7A1 D8 21 CD CD CD CF 8F D1  .!......
        db   $FF,$98,$21,$CC,$CC,$CC,$CF,$8F ; A7A9 FF 98 21 CC CC CC CF 8F  ..!.....
        db   $D3,$FF,$58,$21,$CB,$CB,$CB,$CF ; A7B1 D3 FF 58 21 CB CB CB CF  ..X!....
        db   $D6,$D2,$FF,$18,$21,$CA,$CA,$CA ; A7B9 D6 D2 FF 18 21 CA CA CA  ....!...
        db   $CF,$D0,$D2,$FF,$D8,$20,$C9,$C9 ; A7C1 CF D0 D2 FF D8 20 C9 C9  ..... ..
        db   $C9,$CF,$D5,$D2,$FF,$98,$20,$C8 ; A7C9 C9 CF D5 D2 FF 98 20 C8  ...... .
        db   $C8,$C8,$CF,$D4,$D2,$FF,$FF     ; A7D1 C8 C8 CF D4 D2 FF FF     .......
Bank17_MapAttributes:
        db   $FF,$FF,$0F,$0F,$0F,$FF,$FF,$FF ; A7D8 FF FF 0F 0F 0F FF FF FF  ........
        db   $FF,$3F,$CF,$0F,$3F,$CF,$FF,$FF ; A7E0 FF 3F CF 0F 3F CF FF FF  .?..?...
        db   $FF,$33,$CC,$00,$33,$CC,$FF,$FF ; A7E8 FF 33 CC 00 33 CC FF FF  .3..3...
        db   $FF,$33,$CC,$00,$33,$CC,$FF,$FF ; A7F0 FF 33 CC 00 33 CC FF FF  .3..3...
        db   $FF,$F3,$FC,$F0,$F3,$FC         ; A7F8 FF F3 FC F0 F3 FC        ......
; ----------------------------------------------------------------------------
MapSystem_Entry_A7FE:
        lda     Bank17_GraphicsPointers         ; A7FE AD 99 A8                 ...
        sta     $00                             ; A801 85 00                    ..
        lda     $A89A                           ; A803 AD 9A A8                 ...
        sta     $01                             ; A806 85 01                    ..
        lda     PPUSTATUS                       ; A808 AD 02 20                 ..
        lda     #$18                            ; A80B A9 18                    ..
        sta     PPUADDR                         ; A80D 8D 06 20                 ..
        lda     #$D0                            ; A810 A9 D0                    ..
        sta     PPUADDR                         ; A812 8D 06 20                 ..
        ldx     #$05                            ; A815 A2 05                    ..
        ldy     #$00                            ; A817 A0 00                    ..
MapSystem_Branch_A819:
        lda     ($00),y                         ; A819 B1 00                    ..
        sta     PPUDATA                         ; A81B 8D 07 20                 ..
        iny                                     ; A81E C8                       .
        bne     MapSystem_Branch_A819           ; A81F D0 F8                    ..
        inc     $01                             ; A821 E6 01                    ..
        dex                                     ; A823 CA                       .
        bne     MapSystem_Branch_A819           ; A824 D0 F3                    ..
MapSystem_Branch_A826:
        lda     ($00),y                         ; A826 B1 00                    ..
        sta     PPUDATA                         ; A828 8D 07 20                 ..
        iny                                     ; A82B C8                       .
        cpy     #$50                            ; A82C C0 50                    .P
        bcc     MapSystem_Branch_A826           ; A82E 90 F6                    ..
        lda     $A89B                           ; A830 AD 9B A8                 ...
        sta     $00                             ; A833 85 00                    ..
        lda     $A89C                           ; A835 AD 9C A8                 ...
        sta     $01                             ; A838 85 01                    ..
MapSystem_Branch_A83A:
        lda     PPUSTATUS                       ; A83A AD 02 20                 ..
        inx                                     ; A83D E8                       .
        stx     PPUADDR                         ; A83E 8E 06 20                 ..
        ldy     #$00                            ; A841 A0 00                    ..
        sty     PPUADDR                         ; A843 8C 06 20                 ..
MapSystem_Branch_A846:
        lda     ($00),y                         ; A846 B1 00                    ..
        sta     PPUDATA                         ; A848 8D 07 20                 ..
        iny                                     ; A84B C8                       .
        cpy     #$40                            ; A84C C0 40                    .@
        bcc     MapSystem_Branch_A846           ; A84E 90 F6                    ..
        lda     #$40                            ; A850 A9 40                    .@
        clc                                     ; A852 18                       .
        adc     $00                             ; A853 65 00                    e.
        sta     $00                             ; A855 85 00                    ..
        bcc     MapSystem_Branch_A85B           ; A857 90 02                    ..
        inc     $01                             ; A859 E6 01                    ..
MapSystem_Branch_A85B:
        cpx     #$07                            ; A85B E0 07                    ..
        bcc     MapSystem_Branch_A83A           ; A85D 90 DB                    ..
        lda     PPUSTATUS                       ; A85F AD 02 20                 ..
        ldy     #$00                            ; A862 A0 00                    ..
        sty     PPUADDR                         ; A864 8C 06 20                 ..
        sty     PPUADDR                         ; A867 8C 06 20                 ..
MapSystem_Branch_A86A:
        lda     ($00),y                         ; A86A B1 00                    ..
        sta     PPUDATA                         ; A86C 8D 07 20                 ..
        iny                                     ; A86F C8                       .
        cpy     #$E0                            ; A870 C0 E0                    ..
        bcc     MapSystem_Branch_A86A           ; A872 90 F6                    ..
        rts                                     ; A874 60                       `
; ----------------------------------------------------------------------------
MapSystem_Entry_A875:
        ldx     #$18                            ; A875 A2 18                    ..
MapSystem_Branch_A877:
        lda     $A880,x                         ; A877 BD 80 A8                 ...
        sta     $05FC,x                         ; A87A 9D FC 05                 ...
        dex                                     ; A87D CA                       .
        bne     MapSystem_Branch_A877           ; A87E D0 F7                    ..
        rts                                     ; A880 60                       `
; ----------------------------------------------------------------------------
Bank17_PpuSetupData:
        db   $30,$05,$10,$27,$12,$05,$27,$25 ; A881 30 05 10 27 12 05 27 25  0..'..'%
        db   $05,$27,$37,$05,$27,$0A,$15,$37 ; A889 05 27 37 05 27 0A 15 37  .'7.'..7
        db   $12,$2C,$30,$12,$32,$30,$16,$25 ; A891 12 2C 30 12 32 30 16 25  .,0.20.%
Bank17_GraphicsPointers:
        db   $9D                             ; A899 9D                       .
        db   $A8                             ; A89A A8                       .
        db   $ED                             ; A89B ED                       .
        db   $AD                             ; A89C AD                       .
Bank17_InterfaceGraphics:
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; A89D FF FF FF FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A8A5 00 00 00 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; A8AD FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; A8B5 FF FF FF FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A8BD 00 00 00 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; A8C5 FF FF FF FF FF FF FF FF  ........
        db   $00,$00,$0F,$30,$78,$78,$30,$03 ; A8CD 00 00 0F 30 78 78 30 03  ...0xx0.
        db   $FF,$FF,$F0,$80,$46,$6F,$37,$8C ; A8D5 FF FF F0 80 46 6F 37 8C  ....Fo7.
        db   $00,$00,$00,$C0,$20,$10,$10,$88 ; A8DD 00 00 00 C0 20 10 10 88  .... ...
        db   $FF,$FF,$FF,$3F,$1F,$8F,$CF,$47 ; A8E5 FF FF FF 3F 1F 8F CF 47  ...?...G
        db   $00,$0F,$0F,$03,$03,$03,$03,$07 ; A8ED 00 0F 0F 03 03 03 03 07  ........
        db   $FF,$E0,$EE,$E2,$FA,$FA,$FA,$F0 ; A8F5 FF E0 EE E2 FA FA FA F0  ........
        db   $00,$DE,$DE,$0C,$1E,$1E,$33,$B3 ; A8FD 00 DE DE 0C 1E 1E 33 B3  ......3.
        db   $FF,$01,$D3,$C9,$D1,$DD,$A2,$2A ; A905 FF 01 D3 C9 D1 DD A2 2A  .......*
        db   $00,$0F,$1F,$39,$30,$30,$30,$78 ; A90D 00 0F 1F 39 30 30 30 78  ...9000x
        db   $FF,$E8,$D6,$A9,$A4,$AE,$AE,$07 ; A915 FF E8 D6 A9 A4 AE AE 07  ........
        db   $00,$5E,$CC,$CC,$CC,$CD,$0F,$1F ; A91D 00 5E CC CC CC CD 0F 1F  .^......
        db   $FF,$01,$0B,$2B,$AB,$E9,$2A,$C0 ; A925 FF 01 0B 2B AB E9 2A C0  ...+..*.
        db   $00,$F7,$63,$63,$C3,$C3,$83,$07 ; A92D 00 F7 63 63 C3 C3 83 07  ..cc....
        db   $FF,$00,$42,$5A,$BA,$7A,$FA,$F0 ; A935 FF 00 42 5A BA 7A FA F0  ..BZ.z..
        db   $00,$E0,$F1,$3B,$1B,$1B,$1B,$37 ; A93D 00 E0 F1 3B 1B 1B 1B 37  ...;...7
        db   $FF,$1E,$CD,$22,$92,$D2,$D2,$A0 ; A945 FF 1E CD 22 92 D2 D2 A0  ..."....
        db   $00,$F1,$F9,$9D,$0D,$0C,$0C,$9E ; A94D 00 F1 F9 9D 0D 0C 0C 9E  ........
        db   $FF,$0C,$64,$90,$48,$E8,$EB,$49 ; A955 FF 0C 64 90 48 E8 EB 49  ..d.H..I
        db   $00,$FE,$FE,$32,$32,$30,$30,$78 ; A95D 00 FE FE 32 32 30 30 78  ...2200x
        db   $FF,$01,$ED,$21,$A9,$A9,$AF,$07 ; A965 FF 01 ED 21 A9 A9 AF 07  ...!....
        db   $00,$00,$00,$03,$04,$08,$08,$11 ; A96D 00 00 00 03 04 08 08 11  ........
        db   $FF,$FF,$FE,$F8,$F0,$E3,$E7,$C6 ; A975 FF FF FE F8 F0 E3 E7 C6  ........
        db   $00,$00,$F0,$0C,$1E,$1E,$0C,$C0 ; A97D 00 00 F0 0C 1E 1E 0C C0  ........
        db   $FF,$FF,$0F,$03,$D1,$DB,$CD,$23 ; A985 FF FF 0F 03 D1 DB CD 23  .......#
        db   $04,$08,$08,$18,$3D,$3D,$18,$00 ; A98D 04 08 08 18 3D 3D 18 00  ....==..
        db   $F0,$E3,$E7,$C7,$A0,$B4,$98,$C6 ; A995 F0 E3 E7 C7 A0 B4 98 C6  ........
        db   $68,$1C,$04,$EC,$1E,$1E,$CC,$00 ; A99D 68 1C 04 EC 1E 1E CC 00  h.......
        db   $17,$03,$C3,$03,$13,$DB,$0D,$23 ; A9A5 17 03 C3 03 13 DB 0D 23  .......#
        db   $07,$03,$73,$63,$63,$7F,$3E,$00 ; A9AD 07 03 73 63 63 7F 3E 00  ..scc.>.
        db   $F6,$F2,$4A,$4A,$5A,$41,$BE,$C0 ; A9B5 F6 F2 4A 4A 5A 41 BE C0  ..JJZA..
        db   $B3,$3F,$7F,$61,$61,$61,$F3,$00 ; A9BD B3 3F 7F 61 61 61 F3 00  .?.aaa..
        db   $AA,$22,$5F,$41,$5D,$5D,$08,$08 ; A9C5 AA 22 5F 41 5D 5D 08 08  ."_A]]..
        db   $78,$30,$B0,$B0,$B9,$9F,$CF,$00 ; A9CD 78 30 B0 B0 B9 9F CF 00  x0......
        db   $6F,$27,$2F,$2F,$27,$10,$0F,$20 ; A9D5 6F 27 2F 2F 27 10 0F 20  o'//'..
        db   $1F,$0F,$CD,$CC,$CC,$8C,$1E,$00 ; A9DD 1F 0F CD CC CC 8C 1E 00  ........
        db   $D8,$CA,$A9,$AA,$6B,$AB,$41,$C1 ; A9E5 D8 CA A9 AA 6B AB 41 C1  ....k.A.
        db   $07,$83,$C3,$C3,$63,$63,$F7,$00 ; A9ED 07 83 C3 C3 63 63 F7 00  ....cc..
        db   $F6,$72,$3A,$BA,$5A,$5A,$00,$00 ; A9F5 F6 72 3A BA 5A 5A 00 00  .r:.ZZ..
        db   $F7,$C3,$03,$03,$03,$01,$80,$00 ; A9FD F7 C3 03 03 03 01 80 00  ........
        db   $06,$C2,$3A,$FA,$FA,$F9,$7C,$7E ; AA05 06 C2 3A FA FA F9 7C 7E  ..:...|~
        db   $9E,$0C,$0C,$0C,$9C,$F8,$F0,$00 ; AA0D 9E 0C 0C 0C 9C F8 F0 00  ........
        db   $DB,$49,$EB,$EB,$53,$0B,$F6,$0E ; AA15 DB 49 EB EB 53 0B F6 0E  .I..S...
        db   $78,$30,$30,$30,$30,$30,$FC,$00 ; AA1D 78 30 30 30 30 30 FC 00  x00000..
        db   $6F,$27,$AF,$AF,$AF,$AF,$03,$03 ; AA25 6F 27 AF AF AF AF 03 03  o'......
        db   $16,$38,$20,$37,$78,$78,$33,$00 ; AA2D 16 38 20 37 78 78 33 00  .8 7xx3.
        db   $C8,$81,$87,$80,$40,$6E,$30,$88 ; AA35 C8 81 87 80 40 6E 30 88  ....@n0.
        db   $20,$10,$10,$18,$BC,$BC,$18,$00 ; AA3D 20 10 10 18 BC BC 18 00   .......
        db   $1F,$8F,$CF,$C7,$23,$37,$1B,$C7 ; AA45 1F 8F CF C7 23 37 1B C7  ....#7..
        db   $FE,$FC,$FA,$FB,$F8,$C4,$95,$14 ; AA4D FE FC FA FB F8 C4 95 14  ........
        db   $FE,$FD,$F9,$F8,$F8,$C3,$A2,$62 ; AA55 FE FD F9 F8 F8 C3 A2 62  .......b
        db   $EE,$44,$22,$BB,$00,$00,$FF,$00 ; AA5D EE 44 22 BB 00 00 FF 00  .D".....
        db   $EE,$55,$99,$00,$44,$FF,$00,$00 ; AA65 EE 55 99 00 44 FF 00 00  .U..D...
        db   $FF,$7F,$3F,$3F,$1F,$03,$C9,$49 ; AA6D FF 7F 3F 3F 1F 03 C9 49  ..??...I
        db   $FF,$7F,$BF,$BF,$1F,$E3,$25,$27 ; AA75 FF 7F BF BF 1F E3 25 27  ......%'
        db   $B4,$CC,$94,$14,$B4,$CC,$94,$14 ; AA7D B4 CC 94 14 B4 CC 94 14  ........
        db   $82,$C2,$A2,$62,$82,$C2,$A2,$62 ; AA85 82 C2 A2 62 82 C2 A2 62  ...b...b
        db   $4D,$43,$49,$48,$4D,$43,$49,$48 ; AA8D 4D 43 49 48 4D 43 49 48  MCIHMCIH
        db   $21,$33,$25,$26,$21,$33,$25,$26 ; AA95 21 33 25 26 21 33 25 26  !3%&!3%&
        db   $B4,$C4,$F7,$F8,$FB,$FA,$FC,$FE ; AA9D B4 C4 F7 F8 FB FA FC FE  ........
        db   $82,$C3,$F0,$F8,$F8,$F9,$FD,$FE ; AAA5 82 C3 F0 F8 F8 F9 FD FE  ........
        db   $00,$00,$FF,$44,$BB,$22,$44,$EE ; AAAD 00 00 FF 44 BB 22 44 EE  ...D."D.
        db   $00,$FF,$00,$00,$00,$99,$55,$EE ; AAB5 00 FF 00 00 00 99 55 EE  ......U.
        db   $4F,$03,$EF,$1F,$BF,$3F,$7F,$FF ; AABD 4F 03 EF 1F BF 3F 7F FF  O....?..
        db   $23,$E3,$0F,$1F,$3F,$BF,$7F,$FF ; AAC5 23 E3 0F 1F 3F BF 7F FF  #...?...
        db   $FF,$FF,$81,$00,$00,$00,$00,$00 ; AACD FF FF 81 00 00 00 00 00  ........
        db   $FF,$FF,$BF,$41,$41,$41,$41,$41 ; AAD5 FF FF BF 41 41 41 41 41  ...AAAAA
        db   $00,$00,$00,$00,$00,$80,$C1,$FF ; AADD 00 00 00 00 00 80 C1 FF  ........
        db   $41,$41,$41,$41,$41,$BE,$C1,$FF ; AAE5 41 41 41 41 41 BE C1 FF  AAAAA...
        db   $3F,$1F,$0F,$87,$C3,$E1,$F0,$F8 ; AAED 3F 1F 0F 87 C3 E1 F0 F8  ?.......
        db   $FF,$FF,$7F,$BF,$DF,$EF,$F7,$FB ; AAF5 FF FF 7F BF DF EF F7 FB  ........
        db   $FC,$F8,$F0,$E1,$C3,$87,$0F,$1F ; AAFD FC F8 F0 E1 C3 87 0F 1F  ........
        db   $FF,$FF,$FE,$FD,$FB,$F7,$EF,$DF ; AB05 FF FF FE FD FB F7 EF DF  ........
        db   $00,$00,$FF,$FF,$FF,$FF,$FF,$FF ; AB0D 00 00 FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB15 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$00,$00 ; AB1D FF FF FF FF FF FF 00 00  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB25 FF FF FF FF FF FF FF FF  ........
        db   $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC ; AB2D FC FC FC FC FC FC FC FC  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB35 FF FF FF FF FF FF FF FF  ........
        db   $3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F ; AB3D 3F 3F 3F 3F 3F 3F 3F 3F  ????????
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB45 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FE,$FC ; AB4D FF FF FF FF FF FF FE FC  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB55 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$7F,$3F ; AB5D FF FF FF FF FF FF 7F 3F  .......?
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB65 FF FF FF FF FF FF FF FF  ........
        db   $FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF ; AB6D FC FE FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB75 FF FF FF FF FF FF FF FF  ........
        db   $3F,$7F,$FF,$FF,$FF,$FF,$FF,$FF ; AB7D 3F 7F FF FF FF FF FF FF  ?.......
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AB85 FF FF FF FF FF FF FF FF  ........
        db   $00,$FF,$FF,$FF,$FF,$FF,$FF,$00 ; AB8D 00 FF FF FF FF FF FF 00  ........
        db   $00,$00,$00,$00,$AA,$FF,$FF,$00 ; AB95 00 00 00 00 AA FF FF 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AB9D 00 00 00 00 00 00 00 00  ........
        db   $00,$AA,$55,$AA,$55,$AA,$55,$AA ; ABA5 00 AA 55 AA 55 AA 55 AA  ..U.U.U.
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ABAD 00 00 00 00 00 00 00 00  ........
        db   $FF,$55,$FF,$AA,$FF,$55,$FF,$AA ; ABB5 FF 55 FF AA FF 55 FF AA  .U...U..
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; ABBD FE FE FE FE FE FE FE FE  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ABC5 00 00 00 00 00 00 00 00  ........
        db   $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; ABCD 00 FF FF FF FF FF FF FF  ........
        db   $00,$FF,$FF,$FF,$55,$AA,$55,$00 ; ABD5 00 FF FF FF 55 AA 55 00  ....U.U.
        db   $00,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; ABDD 00 FE FE FE FE FE FE FE  ........
        db   $00,$FE,$FE,$FE,$54,$AA,$54,$00 ; ABE5 00 FE FE FE 54 AA 54 00  ....T.T.
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; ABED FF FF FF FF FF FF FF FF  ........
        db   $00,$00,$AA,$55,$AA,$FF,$FF,$FF ; ABF5 00 00 AA 55 AA FF FF FF  ...U....
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; ABFD FE FE FE FE FE FE FE FE  ........
        db   $00,$00,$AA,$54,$AA,$FE,$FE,$FE ; AC05 00 00 AA 54 AA FE FE FE  ...T....
        db   $FF,$FC,$F8,$F8,$F8,$F8,$F8,$FC ; AC0D FF FC F8 F8 F8 F8 F8 FC  ........
        db   $FF,$FD,$FB,$FB,$FB,$FB,$F9,$FC ; AC15 FF FD FB FB FB FB F9 FC  ........
        db   $FF,$18,$00,$81,$F1,$81,$00,$18 ; AC1D FF 18 00 81 F1 81 00 18  ........
        db   $FF,$FB,$36,$87,$F7,$B7,$E3,$18 ; AC25 FF FB 36 87 F7 B7 E3 18  ..6.....
        db   $FF,$20,$00,$11,$11,$11,$00,$20 ; AC2D FF 20 00 11 11 11 00 20  . .....
        db   $FF,$EF,$66,$77,$77,$77,$CF,$20 ; AC35 FF EF 66 77 77 77 CF 20  ..fwww.
        db   $FF,$08,$08,$00,$00,$10,$10,$10 ; AC3D FF 08 08 00 00 10 10 10  ........
        db   $FF,$7B,$7B,$6B,$6B,$77,$77,$10 ; AC45 FF 7B 7B 6B 6B 77 77 10  .{{kkww.
        db   $FE,$C6,$C6,$1C,$30,$30,$30,$00 ; AC4D FE C6 C6 1C 30 30 30 00  ....000.
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; AC55 FF FF FF FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AC5D 00 00 00 00 00 00 00 00  ........
        db   $01,$FF,$01,$01,$01,$FF,$01,$FF ; AC65 01 FF 01 01 01 FF 01 FF  ........
        db   $BA,$74,$FA,$FA,$FE,$7C,$BA,$00 ; AC6D BA 74 FA FA FE 7C BA 00  .t...|..
        db   $FF,$CF,$87,$87,$83,$C7,$FF,$FF ; AC75 FF CF 87 87 83 C7 FF FF  ........
        db   $00,$08,$04,$08,$58,$30,$00,$00 ; AC7D 00 08 04 08 58 30 00 00  ....X0..
        db   $83,$01,$01,$05,$05,$09,$83,$FF ; AC85 83 01 01 05 05 09 83 FF  ........
        db   $10,$38,$FE,$FE,$7C,$7C,$EE,$C6 ; AC8D 10 38 FE FE 7C 7C EE C6  .8..||..
        db   $FF,$EF,$EF,$83,$C7,$D7,$BB,$FF ; AC95 FF EF EF 83 C7 D7 BB FF  ........
        db   $10,$10,$38,$38,$7C,$74,$6C,$38 ; AC9D 10 10 38 38 7C 74 6C 38  ..88|tl8
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; ACA5 FF FF FF FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$03,$03,$0C,$0C ; ACAD 00 00 00 00 03 03 0C 0C  ........
        db   $21,$80,$D2,$AF,$97,$9B,$9F,$DF ; ACB5 21 80 D2 AF 97 9B 9F DF  !.......
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ACBD 00 00 00 00 00 00 00 00  ........
        db   $FF,$FF,$FF,$AF,$DF,$AF,$FF,$FF ; ACC5 FF FF FF AF DF AF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ACCD 00 00 00 00 00 00 00 00  ........
        db   $FF,$FD,$FA,$FE,$FD,$FB,$F8,$FF ; ACD5 FF FD FA FE FD FB F8 FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ACDD 00 00 00 00 00 00 00 00  ........
        db   $FF,$DD,$AA,$EA,$DA,$BA,$8D,$FF ; ACE5 FF DD AA EA DA BA 8D FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ACED 00 00 00 00 00 00 00 00  ........
        db   $FF,$DD,$AA,$AA,$AA,$AA,$DD,$FF ; ACF5 FF DD AA AA AA AA DD FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ACFD 00 00 00 00 00 00 00 00  ........
        db   $FF,$9D,$BA,$9A,$EA,$EA,$9D,$FF ; AD05 FF 9D BA 9A EA EA 9D FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AD0D 00 00 00 00 00 00 00 00  ........
        db   $FF,$DD,$9A,$DA,$DA,$DA,$8D,$FF ; AD15 FF DD 9A DA DA DA 8D FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AD1D 00 00 00 00 00 00 00 00  ........
        db   $FF,$F9,$FB,$F9,$FE,$FE,$F9,$FF ; AD25 FF F9 FB F9 FE FE F9 FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AD2D 00 00 00 00 00 00 00 00  ........
        db   $FF,$FD,$F9,$FD,$FD,$FD,$F8,$FF ; AD35 FF FD F9 FD FD FD F8 FF  ........
        db   $FF,$FF,$FF,$FE,$FC,$F8,$F1,$F1 ; AD3D FF FF FF FE FC F8 F1 F1  ........
        db   $FF,$FF,$FF,$FE,$FD,$FA,$F4,$F4 ; AD45 FF FF FF FE FD FA F4 F4  ........
        db   $FF,$FF,$83,$00,$00,$7C,$83,$01 ; AD4D FF FF 83 00 00 7C 83 01  .....|..
        db   $FF,$FF,$83,$7C,$83,$00,$7C,$FE ; AD55 FF FF 83 7C 83 00 7C FE  ...|..|.
        db   $FF,$FF,$FF,$FF,$7F,$3F,$1F,$1F ; AD5D FF FF FF FF 7F 3F 1F 1F  .....?..
        db   $FF,$FF,$FF,$FF,$7F,$BF,$5F,$5F ; AD65 FF FF FF FF 7F BF 5F 5F  ......__
        db   $E2,$E2,$E2,$E2,$C3,$93,$93,$91 ; AD6D E2 E2 E2 E2 C3 93 93 91  ........
        db   $E9,$E9,$E9,$E1,$DA,$8A,$8A,$8D ; AD75 E9 E9 E9 E1 DA 8A 8A 8D  ........
        db   $00,$00,$00,$00,$01,$01,$01,$83 ; AD7D 00 00 00 00 01 01 01 83  ........
        db   $FF,$FF,$FF,$FF,$FE,$FE,$FE,$7D ; AD85 FF FF FF FF FE FE FE 7D  .......}
        db   $8F,$8F,$8F,$87,$87,$A7,$A7,$47 ; AD8D 8F 8F 8F 87 87 A7 A7 47  .......G
        db   $2F,$2F,$2F,$07,$B7,$97,$97,$37 ; AD95 2F 2F 2F 07 B7 97 97 37  ///....7
        db   $91,$90,$90,$90,$98,$1C,$1F,$00 ; AD9D 91 90 90 90 98 1C 1F 00  ........
        db   $8D,$8E,$8F,$8F,$87,$03,$1F,$7F ; ADA5 8D 8E 8F 8F 87 03 1F 7F  ........
        db   $FF,$FE,$01,$00,$00,$00,$FF,$00 ; ADAD FF FE 01 00 00 00 FF 00  ........
        db   $01,$FE,$00,$FF,$FF,$FF,$FF,$FF ; ADB5 01 FE 00 FF FF FF FF FF  ........
        db   $47,$86,$06,$06,$14,$35,$F4,$00 ; ADBD 47 86 06 06 14 35 F4 00  G....5..
        db   $37,$76,$F6,$F6,$E4,$C4,$F5,$FB ; ADC5 37 76 F6 F6 E4 C4 F5 FB  7v......
        db   $07,$47,$47,$63,$71,$01,$F9,$00 ; ADCD 07 47 47 63 71 01 F9 00  .GGcq...
        db   $77,$37,$37,$13,$71,$05,$05,$FE ; ADD5 77 37 37 13 71 05 05 FE  w77.q...
        db   $00,$00,$00,$FF,$FF,$FF,$FF,$FF ; ADDD 00 00 00 FF FF FF FF FF  ........
        db   $FF,$FF,$00,$FF,$FF,$FF,$FF,$FF ; ADE5 FF FF 00 FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; ADED 00 00 00 00 00 00 00 00  ........
        db   $C0,$E1,$73,$1B,$0E,$3E,$7B,$F9 ; ADF5 C0 E1 73 1B 0E 3E 7B F9  ..s..>{.
        db   $00,$00,$00,$00,$00,$00,$00,$1E ; ADFD 00 00 00 00 00 00 00 1E  ........
        db   $F0,$FC,$FE,$FF,$F9,$00,$00,$1E ; AE05 F0 FC FE FF F9 00 00 1E  ........
        db   $00,$00,$03,$07,$07,$07,$07,$03 ; AE0D 00 00 03 07 07 07 07 03  ........
        db   $F8,$F0,$F3,$E6,$66,$27,$07,$03 ; AE15 F8 F0 F3 E6 66 27 07 03  ....f'..
        db   $3B,$3D,$DF,$7F,$AE,$E0,$E0,$C0 ; AE1D 3B 3D DF 7F AE E0 E0 C0  ;=......
        db   $B3,$71,$FD,$7F,$3E,$A0,$E0,$C0 ; AE25 B3 71 FD 7F 3E A0 E0 C0  .q..>...
        db   $00,$00,$00,$20,$20,$31,$01,$03 ; AE2D 00 00 00 20 20 31 01 03  ...  1..
        db   $00,$00,$00,$21,$21,$73,$73,$27 ; AE35 00 00 00 21 21 73 73 27  ...!!ss'
        db   $00,$42,$42,$E3,$E0,$F0,$E0,$F0 ; AE3D 00 42 42 E3 E0 F0 E0 F0  .BB.....
        db   $40,$E2,$E2,$F7,$F7,$FA,$E8,$F4 ; AE45 40 E2 E2 F7 F7 FA E8 F4  @.......
        db   $02,$06,$47,$45,$E6,$63,$00,$00 ; AE4D 02 06 47 45 E6 63 00 00  ..GE.c..
        db   $07,$0F,$4F,$4F,$EF,$E7,$E3,$40 ; AE55 07 0F 4F 4F EF E7 E3 40  ..OO...@
        db   $D8,$D8,$F8,$EC,$18,$F0,$E0,$00 ; AE5D D8 D8 F8 EC 18 F0 E0 00  ........
        db   $FC,$FA,$FA,$FE,$FA,$F4,$F8,$E0 ; AE65 FC FA FA FE FA F4 F8 E0  ........
        db   $01,$03,$03,$07,$07,$FF,$FF,$7F ; AE6D 01 03 03 07 07 FF FF 7F  ........
        db   $01,$02,$02,$04,$04,$F8,$82,$42 ; AE75 01 02 02 04 04 F8 82 42  .......B
        db   $80,$C0,$C0,$E0,$E0,$FF,$FF,$FE ; AE7D 80 C0 C0 E0 E0 FF FF FE  ........
        db   $80,$40,$40,$20,$20,$1F,$41,$42 ; AE85 80 40 40 20 20 1F 41 42  .@@  .AB
        db   $3F,$1F,$1F,$3F,$3F,$7E,$78,$E0 ; AE8D 3F 1F 1F 3F 3F 7E 78 E0  ?..??~x.
        db   $20,$12,$11,$20,$21,$66,$58,$E0 ; AE95 20 12 11 20 21 66 58 E0   .. !fX.
        db   $FC,$F8,$F8,$FC,$FC,$7E,$1E,$07 ; AE9D FC F8 F8 FC FC 7E 1E 07  .....~..
        db   $04,$48,$88,$04,$84,$66,$1A,$07 ; AEA5 04 48 88 04 84 66 1A 07  .H...f..
        db   $00,$00,$00,$00,$00,$00,$03,$03 ; AEAD 00 00 00 00 00 00 03 03  ........
        db   $7F,$FD,$F8,$FD,$EF,$C7,$EC,$FC ; AEB5 7F FD F8 FD EF C7 EC FC  ........
        db   $00,$30,$18,$1C,$1C,$36,$76,$DE ; AEBD 00 30 18 1C 1C 36 76 DE  .0...6v.
        db   $FE,$CF,$E7,$E3,$E3,$C9,$89,$21 ; AEC5 FE CF E7 E3 E3 C9 89 21  .......!
        db   $01,$03,$45,$7E,$3F,$1F,$07,$00 ; AECD 01 03 45 7E 3F 1F 07 00  ..E~?...
        db   $FE,$FC,$BA,$81,$C0,$E0,$F8,$7F ; AED5 FE FC BA 81 C0 E0 F8 7F  ........
        db   $BE,$FE,$BC,$7C,$F8,$F0,$C0,$00 ; AEDD BE FE BC 7C F8 F0 C0 00  ...|....
        db   $41,$01,$43,$83,$07,$0F,$3F,$FE ; AEE5 41 01 43 83 07 0F 3F FE  A.C...?.
        db   $00,$00,$10,$0B,$07,$0E,$0E,$6F ; AEED 00 00 10 0B 07 0E 0E 6F  .......o
        db   $01,$11,$3B,$1F,$0F,$1F,$7F,$7F ; AEF5 01 11 3B 1F 0F 1F 7F 7F  ..;.....
        db   $80,$80,$04,$E8,$F0,$B8,$B8,$FB ; AEFD 80 80 04 E8 F0 B8 B8 FB  ........
        db   $C0,$C4,$EE,$FC,$F8,$FC,$FF,$FF ; AF05 C0 C4 EE FC F8 FC FF FF  ........
        db   $0D,$0E,$07,$0B,$10,$00,$00,$00 ; AF0D 0D 0E 07 0B 10 00 00 00  ........
        db   $7F,$1F,$0F,$1F,$3B,$11,$01,$00 ; AF15 7F 1F 0F 1F 3B 11 01 00  ....;...
        db   $D8,$38,$F0,$E8,$04,$80,$80,$00 ; AF1D D8 38 F0 E8 04 80 80 00  .8......
        db   $FF,$FC,$F8,$FC,$EE,$C4,$C0,$00 ; AF25 FF FC F8 FC EE C4 C0 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AF2D 00 00 00 00 00 00 00 00  ........
        db   $FF,$FF,$00,$00,$FF,$8E,$B5,$8D ; AF35 FF FF 00 00 FF 8E B5 8D  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AF3D 00 00 00 00 00 00 00 00  ........
        db   $FF,$FF,$00,$00,$FF,$63,$AD,$AD ; AF45 FF FF 00 00 FF 63 AD AD  .....c..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AF4D 00 00 00 00 00 00 00 00  ........
        db   $B4,$B5,$8D,$FF,$00,$00,$FF,$FF ; AF55 B4 B5 8D FF 00 00 FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AF5D 00 00 00 00 00 00 00 00  ........
        db   $23,$AD,$AD,$FF,$01,$00,$FF,$FF ; AF65 23 AD AD FF 01 00 FF FF  #.......
        db   $1F,$1F,$1F,$18,$18,$18,$00,$00 ; AF6D 1F 1F 1F 18 18 18 00 00  ........
        db   $1F,$1F,$1F,$18,$18,$18,$00,$00 ; AF75 1F 1F 1F 18 18 18 00 00  ........
        db   $FC,$FC,$FC,$1C,$1C,$38,$70,$E0 ; AF7D FC FC FC 1C 1C 38 70 E0  .....8p.
        db   $FC,$FC,$FC,$1C,$1C,$38,$70,$E0 ; AF85 FC FC FC 1C 1C 38 70 E0  .....8p.
        db   $00,$01,$01,$03,$03,$03,$03,$01 ; AF8D 00 01 01 03 03 03 03 01  ........
        db   $00,$01,$01,$03,$03,$03,$03,$01 ; AF95 00 01 01 03 03 03 03 01  ........
        db   $C0,$C0,$C0,$C0,$C0,$C0,$C0,$80 ; AF9D C0 C0 C0 C0 C0 C0 C0 80  ........
        db   $C0,$C0,$C0,$C0,$C0,$C0,$C0,$80 ; AFA5 C0 C0 C0 C0 C0 C0 C0 80  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AFAD 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AFB5 00 00 00 00 00 00 00 00  ........
        db   $FF,$C3,$99,$99,$99,$99,$C3,$FF ; AFBD FF C3 99 99 99 99 C3 FF  ........
        db   $00,$3C,$66,$66,$66,$66,$3C,$00 ; AFC5 00 3C 66 66 66 66 3C 00  .<ffff<.
        db   $FF,$E7,$C7,$E7,$E7,$E7,$C3,$FF ; AFCD FF E7 C7 E7 E7 E7 C3 FF  ........
        db   $00,$18,$38,$18,$18,$18,$3C,$00 ; AFD5 00 18 38 18 18 18 3C 00  ..8...<.
        db   $FF,$C3,$99,$99,$F3,$CF,$81,$FF ; AFDD FF C3 99 99 F3 CF 81 FF  ........
        db   $00,$3C,$66,$66,$0C,$30,$7E,$00 ; AFE5 00 3C 66 66 0C 30 7E 00  .<ff.0~.
        db   $FF,$83,$F9,$C3,$F9,$F9,$83,$FF ; AFED FF 83 F9 C3 F9 F9 83 FF  ........
        db   $00,$7C,$06,$3C,$06,$06,$7C,$00 ; AFF5 00 7C 06 3C 06 06 7C 00  .|.<..|.
        db   $FF,$93,$93,$93,$93,$81,$F3,$FF ; AFFD FF 93 93 93 93 81 F3 FF  ........
        db   $00,$6C,$6C,$6C,$6C,$7E,$0C,$00 ; B005 00 6C 6C 6C 6C 7E 0C 00  .llll~..
        db   $FF,$83,$9F,$83,$F9,$F9,$83,$FF ; B00D FF 83 9F 83 F9 F9 83 FF  ........
        db   $00,$7C,$60,$7C,$06,$06,$7C,$00 ; B015 00 7C 60 7C 06 06 7C 00  .|`|..|.
        db   $FF,$C3,$9F,$83,$99,$99,$C3,$FF ; B01D FF C3 9F 83 99 99 C3 FF  ........
        db   $00,$3C,$60,$7C,$66,$66,$3C,$00 ; B025 00 3C 60 7C 66 66 3C 00  .<`|ff<.
        db   $FF,$81,$99,$F3,$E7,$E7,$E7,$FF ; B02D FF 81 99 F3 E7 E7 E7 FF  ........
        db   $00,$7E,$66,$0C,$18,$18,$18,$00 ; B035 00 7E 66 0C 18 18 18 00  .~f.....
        db   $FF,$C3,$99,$C3,$99,$99,$C3,$FF ; B03D FF C3 99 C3 99 99 C3 FF  ........
        db   $00,$3C,$66,$3C,$66,$66,$3C,$00 ; B045 00 3C 66 3C 66 66 3C 00  .<f<ff<.
        db   $FF,$C3,$99,$99,$C1,$F9,$C3,$FF ; B04D FF C3 99 99 C1 F9 C3 FF  ........
        db   $00,$3C,$66,$66,$3E,$06,$3C,$00 ; B055 00 3C 66 66 3E 06 3C 00  .<ff>.<.
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; B05D FF FF FF FF FF FF FF FF  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; B065 00 00 00 00 00 00 00 00  ........
        db   $08,$04,$04,$00,$04,$00,$00,$00 ; B06D 08 04 04 00 04 00 00 00  ........
        db   $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; B075 1C 1C 1C 1C 1C 1C 1C 1C  ........
        db   $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; B07D 1C 1C 1C 1C 1C 1C 1C 1C  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; B085 00 00 00 00 00 00 00 00  ........
Bank17_MapInfoPointers:
        db   $21,$B1,$31,$B1,$3B,$B1,$48,$B1 ; B08D 21 B1 31 B1 3B B1 48 B1  !.1.;.H.
        db   $55,$B1,$83,$B1,$8A,$B1,$97,$B1 ; B095 55 B1 83 B1 8A B1 97 B1  U.......
        db   $9E,$B1,$AE,$B1,$C7,$B1,$CB,$B1 ; B09D 9E B1 AE B1 C7 B1 CB B1  ........
        db   $D2,$B1,$D6,$B1,$E0,$B1,$E4,$B1 ; B0A5 D2 B1 D6 B1 E0 B1 E4 B1  ........
        db   $EB,$B1,$F8,$B1,$0B,$B2,$15,$B2 ; B0AD EB B1 F8 B1 0B B2 15 B2  ........
        db   $25,$B2,$2F,$B2,$3C,$B2,$46,$B2 ; B0B5 25 B2 2F B2 3C B2 46 B2  %./.<.F.
        db   $4D,$B2,$54,$B2,$5E,$B2,$65,$B2 ; B0BD 4D B2 54 B2 5E B2 65 B2  M.T.^.e.
        db   $75,$B2,$7C,$B2,$80,$B2,$84,$B2 ; B0C5 75 B2 7C B2 80 B2 84 B2  u.|.....
        db   $88,$B2,$8C,$B2,$90,$B2,$97,$B2 ; B0CD 88 B2 8C B2 90 B2 97 B2  ........
        db   $9B,$B2,$9F,$B2,$A6,$B2,$AA,$B2 ; B0D5 9B B2 9F B2 A6 B2 AA B2  ........
        db   $B4,$B2,$BE,$B2,$C5,$B2,$C9,$B2 ; B0DD B4 B2 BE B2 C5 B2 C9 B2  ........
        db   $CD,$B2,$D1,$B2,$F0,$B2,$F7,$B2 ; B0E5 CD B2 D1 B2 F0 B2 F7 B2  ........
        db   $01,$B3,$0B,$B3,$1B,$B3,$22,$B3 ; B0ED 01 B3 0B B3 1B B3 22 B3  ......".
        db   $38,$B3,$48,$B3,$67,$B3,$7D,$B3 ; B0F5 38 B3 48 B3 67 B3 7D B3  8.H.g.}.
        db   $87,$B3,$9A,$B3,$9E,$B3,$A5,$B3 ; B0FD 87 B3 9A B3 9E B3 A5 B3  ........
        db   $AF,$B3,$B3,$B3,$E7,$B3,$EB,$B3 ; B105 AF B3 B3 B3 E7 B3 EB B3  ........
        db   $FE,$B3,$11,$B4,$24,$B4,$34,$B4 ; B10D FE B3 11 B4 24 B4 34 B4  ....$.4.
        db   $56,$B4,$63,$B4,$7C,$B4,$89,$B4 ; B115 56 B4 63 B4 7C B4 89 B4  V.c.|...
        db   $90,$B4,$FF,$FF                 ; B11D 90 B4 FF FF              ....
Bank17_MapInfo:
        db   $0B,$00,$80,$09,$85,$80,$09,$2B ; B121 0B 00 80 09 85 80 09 2B  .......+
        db   $81,$09,$AE,$81,$08,$C1,$81,$FF ; B129 81 09 AE 81 08 C1 81 FF  ........
        db   $0D,$06,$82,$09,$DD,$82,$09,$44 ; B131 0D 06 82 09 DD 82 09 44  .......D
        db   $83,$FF,$0A,$98,$83,$0D,$0C,$85 ; B139 83 FF 0A 98 83 0D 0C 85  ........
        db   $09,$DE,$85,$03,$5D,$86,$FF,$0D ; B141 09 DE 85 03 5D 86 FF 0D  ....]...
        db   $9B,$86,$09,$B5,$87,$03,$34,$88 ; B149 9B 86 09 B5 87 03 34 88  ......4.
        db   $87,$CF,$88,$FF,$0B,$E7,$88,$0C ; B151 87 CF 88 FF 0B E7 88 0C  ........
        db   $45,$8A,$0D,$AB,$8A,$03,$7D,$8B ; B159 45 8A 0D AB 8A 03 7D 8B  E.....}.
        db   $03,$96,$8B,$08,$B5,$8B,$09,$04 ; B161 03 96 8B 08 B5 8B 09 04  ........
        db   $8C,$6D,$77,$8C,$03,$D6,$8D,$03 ; B169 8C 6D 77 8C 03 D6 8D 03  .mw.....
        db   $F4,$8D,$03,$0F,$8E,$03,$2C,$8E ; B171 F4 8D 03 0F 8E 03 2C 8E  ......,.
        db   $03,$5A,$8E,$03,$92,$8E,$08,$C9 ; B179 03 5A 8E 03 92 8E 08 C9  .Z......
        db   $8E,$FF,$08,$28,$8F,$0C,$62,$8F ; B181 8E FF 08 28 8F 0C 62 8F  ...(..b.
        db   $FF,$06,$63,$90,$09,$71,$91,$03 ; B189 FF 06 63 90 09 71 91 03  ..c..q..
        db   $C3,$91,$03,$D5,$91,$FF,$07,$ED ; B191 C3 91 03 D5 91 FF 07 ED  ........
        db   $91,$09,$CB,$92,$FF,$0A,$13,$93 ; B199 91 09 CB 92 FF 0A 13 93  ........
        db   $45,$C9,$93,$09,$92,$94,$4C,$06 ; B1A1 45 C9 93 09 92 94 4C 06  E.....L.
        db   $95,$4C,$44,$95,$FF,$0A,$63,$95 ; B1A9 95 4C 44 95 FF 0A 63 95  .LD...c.
        db   $0B,$3A,$96,$09,$28,$97,$0A,$A8 ; B1B1 0B 3A 96 09 28 97 0A A8  .:..(...
        db   $97,$09,$4B,$98,$06,$B4,$98,$0A ; B1B9 97 09 4B 98 06 B4 98 0A  ..K.....
        db   $D8,$98,$03,$31,$99,$FF,$08,$7D ; B1C1 D8 98 03 31 99 FF 08 7D  ...1...}
        db   $99,$FF,$04,$67,$9A,$04,$5B,$9B ; B1C9 99 FF 04 67 9A 04 5B 9B  ...g..[.
        db   $FF,$04,$A8,$9B,$FF,$0A,$47,$9C ; B1D1 FF 04 A8 9B FF 0A 47 9C  ......G.
        db   $43,$2A,$9D,$43,$86,$9D,$FF,$82 ; B1D9 43 2A 9D 43 86 9D FF 82  C*.C....
        db   $D2,$9D,$FF,$07,$E9,$9E,$03,$EA ; B1E1 D2 9D FF 07 E9 9E 03 EA  ........
        db   $9F,$FF,$05,$2F,$A0,$03,$13,$A1 ; B1E9 9F FF 05 2F A0 03 13 A1  .../....
        db   $06,$36,$A1,$03,$54,$A1,$FF,$01 ; B1F1 06 36 A1 03 54 A1 FF 01  .6..T...
        db   $79,$A1,$03,$CB,$A2,$03,$21,$A3 ; B1F9 79 A1 03 CB A2 03 21 A3  y.....!.
        db   $2F,$48,$A3,$2E,$EA,$A3,$2E,$3A ; B201 2F 48 A3 2E EA A3 2E 3A  /H.....:
        db   $A4,$FF,$0E,$5E,$A4,$03,$48,$A5 ; B209 A4 FF 0E 5E A4 03 48 A5  ...^..H.
        db   $03,$97,$A5,$FF,$0B,$BB,$A5,$03 ; B211 03 97 A5 FF 0B BB A5 03  ........
        db   $E6,$A6,$0B,$3A,$A7,$0D,$74,$A7 ; B219 E6 A6 0B 3A A7 0D 74 A7  ...:..t.
        db   $0A,$B3,$A7,$FF,$85,$D1,$A7,$03 ; B221 0A B3 A7 FF 85 D1 A7 03  ........
        db   $73,$A8,$88,$9C,$A8,$FF,$06,$7F ; B229 73 A8 88 9C A8 FF 06 7F  s.......
        db   $A9,$03,$95,$AA,$2C,$E2,$AA,$2C ; B231 A9 03 95 AA 2C E2 AA 2C  ....,..,
        db   $8A,$AB,$FF,$06,$9D,$AC,$03,$C1 ; B239 8A AB FF 06 9D AC 03 C1  ........
        db   $AD,$06,$03,$AE,$FF,$04,$2E,$AE ; B241 AD 06 03 AE FF 04 2E AE  ........
        db   $08,$1C,$AF,$FF,$C5,$51,$AF,$84 ; B249 08 1C AF FF C5 51 AF 84  .....Q..
        db   $E8,$AF,$FF,$0E,$13,$B0,$0E,$DA ; B251 E8 AF FF 0E 13 B0 0E DA  ........
        db   $B0,$03,$94,$B1,$FF,$81,$B6,$B1 ; B259 B0 03 94 B1 FF 81 B6 B1  ........
        db   $03,$69,$B3,$FF,$8A,$AA,$B3,$0A ; B261 03 69 B3 FF 8A AA B3 0A  .i......
        db   $A4,$B4,$09,$05,$B5,$09,$28,$B5 ; B269 A4 B4 09 05 B5 09 28 B5  ......(.
        db   $01,$6B,$B5,$FF,$08,$70,$B5,$43 ; B271 01 6B B5 FF 08 70 B5 43  .k...p.C
        db   $CD,$B5,$FF,$0B,$E6,$B5,$FF,$08 ; B279 CD B5 FF 0B E6 B5 FF 08  ........
        db   $04,$B6,$FF,$08,$2F,$B6,$FF,$84 ; B281 04 B6 FF 08 2F B6 FF 84  ..../...
        db   $72,$B6,$FF,$08,$BE,$B6,$FF,$0C ; B289 72 B6 FF 08 BE B6 FF 0C  r.......
        db   $38,$B7,$01,$8D,$B7,$FF,$01,$CA ; B291 38 B7 01 8D B7 FF 01 CA  8.......
        db   $B7,$FF,$84,$1F,$B8,$FF,$08,$54 ; B299 B7 FF 84 1F B8 FF 08 54  .......T
        db   $B8,$0B,$8C,$B8,$FF,$0C,$D3,$B8 ; B2A1 B8 0B 8C B8 FF 0C D3 B8  ........
        db   $FF,$48,$47,$B9,$4C,$AB,$B9,$49 ; B2A9 FF 48 47 B9 4C AB B9 49  .HG.L..I
        db   $E5,$B9,$FF,$46,$1D,$BA,$4D,$34 ; B2B1 E5 B9 FF 46 1D BA 4D 34  ...F..M4
        db   $BA,$4C,$4C,$BA,$FF,$CB,$AA,$BA ; B2B9 BA 4C 4C BA FF CB AA BA  .LL.....
        db   $49,$DA,$BA,$FF,$0A,$11,$BB,$FF ; B2C1 49 DA BA FF 0A 11 BB FF  I.......
        db   $08,$41,$BB,$FF,$06,$4D,$BB,$FF ; B2C9 08 41 BB FF 06 4D BB FF  .A...M..
        db   $50,$25,$BC,$50,$BF,$BC,$50,$80 ; B2D1 50 25 BC 50 BF BC 50 80  P%.P..P.
        db   $BD,$50,$A1,$BD,$50,$5E,$BE,$4E ; B2D9 BD 50 A1 BD 50 5E BE 4E  .P..P^.N
        db   $F7,$BE,$4F,$68,$BF,$4E,$BB,$BF ; B2E1 F7 BE 4F 68 BF 4E BB BF  ..Oh.N..
        db   $5F,$3E,$80,$45,$EF,$82,$FF,$52 ; B2E9 5F 3E 80 45 EF 82 FF 52  _>.E...R
        db   $0C,$83,$52,$7D,$84,$FF,$59,$B9 ; B2F1 0C 83 52 7D 84 FF 59 B9  ..R}..Y.
        db   $84,$59,$F1,$84,$59,$16,$86,$FF ; B2F9 84 59 F1 84 59 16 86 FF  .Y..Y...
        db   $5D,$C8,$86,$51,$F0,$86,$51,$D4 ; B301 5D C8 86 51 F0 86 51 D4  ]..Q..Q.
        db   $88,$FF,$D6,$0C,$8B,$56,$7E,$8B ; B309 88 FF D6 0C 8B 56 7E 8B  .....V~.
        db   $56,$06,$8C,$56,$39,$8C,$43,$B7 ; B311 56 06 8C 56 39 8C 43 B7  V..V9.C.
        db   $8C,$FF,$57,$F0,$8C,$57,$BB,$8D ; B319 8C FF 57 F0 8C 57 BB 8D  ..W..W..
        db   $FF,$69,$5C,$8E,$69,$E9,$8E,$69 ; B321 FF 69 5C 8E 69 E9 8E 69  .i\.i..i
        db   $33,$8F,$69,$53,$8F,$69,$BF,$8F ; B329 33 8F 69 53 8F 69 BF 8F  3.iS.i..
        db   $69,$0C,$90,$69,$2A,$90,$FF,$58 ; B331 69 0C 90 69 2A 90 FF 58  i..i*..X
        db   $44,$90,$58,$33,$91,$58,$11,$93 ; B339 44 90 58 33 91 58 11 93  D.X3.X..
        db   $43,$EB,$93,$58,$0C,$94,$FF,$54 ; B341 43 EB 93 58 0C 94 FF 54  C..X...T
        db   $05,$97,$5A,$8D,$97,$5A,$4E,$98 ; B349 05 97 5A 8D 97 5A 4E 98  ..Z..ZN.
        db   $5A,$FB,$98,$5A,$88,$99,$6B,$CE ; B351 5A FB 98 5A 88 99 6B CE  Z..Z..k.
        db   $99,$6B,$E9,$99,$6B,$0B,$9A,$5A ; B359 99 6B E9 99 6B 0B 9A 5A  .k..k..Z
        db   $59,$9A,$0C,$80,$9A,$FF,$6A,$A0 ; B361 59 9A 0C 80 9A FF 6A A0  Y.....j.
        db   $9A,$6A,$D2,$9A,$6A,$2D,$9B,$6A ; B369 9A 6A D2 9A 6A 2D 9B 6A  .j..j-.j
        db   $86,$9B,$6A,$B0,$9B,$6A,$4B,$9C ; B371 86 9B 6A B0 9B 6A 4B 9C  ..j..jK.
        db   $6A,$6A,$9C,$FF,$55,$9D,$9C,$55 ; B379 6A 6A 9C FF 55 9D 9C 55  jj..U..U
        db   $02,$9D,$55,$59,$9D,$FF,$54,$AB ; B381 02 9D 55 59 9D FF 54 AB  ..UY..T.
        db   $9D,$54,$E1,$9D,$54,$5C,$9E,$53 ; B389 9D 54 E1 9D 54 5C 9E 53  .T..T\.S
        db   $C0,$9E,$53,$95,$9F,$53,$26,$A0 ; B391 C0 9E 53 95 9F 53 26 A0  ..S..S&.
        db   $FF,$5D,$70,$A0,$FF,$5D,$DF,$A0 ; B399 FF 5D 70 A0 FF 5D DF A0  .]p..]..
        db   $5D,$11,$A1,$FF,$50,$5A,$A1,$50 ; B3A1 5D 11 A1 FF 50 5A A1 50  ]...PZ.P
        db   $E1,$A1,$50,$69,$A2,$FF,$1E,$F4 ; B3A9 E1 A1 50 69 A2 FF 1E F4  ..Pi....
        db   $A2,$FF,$20,$07,$A5,$61,$EA,$A6 ; B3B1 A2 FF 20 07 A5 61 EA A6  .. ..a..
        db   $61,$9C,$A7,$61,$C6,$A7,$61,$F6 ; B3B9 61 9C A7 61 C6 A7 61 F6  a..a..a.
        db   $A7,$61,$14,$A8,$61,$3D,$A8,$61 ; B3C1 A7 61 14 A8 61 3D A8 61  .a..a=.a
        db   $56,$A8,$61,$8D,$A8,$61,$D5,$A8 ; B3C9 56 A8 61 8D A8 61 D5 A8  V.a..a..
        db   $61,$04,$A9,$61,$4A,$A9,$61,$79 ; B3D1 61 04 A9 61 4A A9 61 79  a..aJ.ay
        db   $A9,$61,$A6,$A9,$61,$CC,$A9,$61 ; B3D9 A9 61 A6 A9 61 CC A9 61  .a..a..a
        db   $F2,$A9,$61,$EB,$AA,$FF,$22,$0F ; B3E1 F2 A9 61 EB AA FF 22 0F  ..a...".
        db   $AB,$FF,$27,$E1,$AB,$65,$2D,$AC ; B3E9 AB FF 27 E1 AB 65 2D AC  ..'..e-.
        db   $65,$99,$AC,$65,$EA,$AC,$67,$52 ; B3F1 65 99 AC 65 EA AC 67 52  e..e..gR
        db   $AD,$65,$6C,$AD,$FF,$23,$92,$AD ; B3F9 AD 65 6C AD FF 23 92 AD  .el..#..
        db   $23,$4E,$AE,$23,$97,$AF,$23,$D8 ; B401 23 4E AE 23 97 AF 23 D8  #N.#..#.
        db   $B0,$63,$12,$B2,$24,$27,$B3,$FF ; B409 B0 63 12 B2 24 27 B3 FF  .c..$'..
        db   $2B,$0A,$B4,$6B,$39,$B4,$6B,$97 ; B411 2B 0A B4 6B 39 B4 6B 97  +..k9.k.
        db   $B4,$6B,$F7,$B4,$66,$77,$B5,$66 ; B419 B4 6B F7 B4 66 77 B5 66  .k..fw.f
        db   $CF,$B5,$FF,$28,$11,$B6,$68,$81 ; B421 CF B5 FF 28 11 B6 68 81  ...(..h.
        db   $B6,$68,$B2,$B6,$68,$1B,$B7,$68 ; B429 B6 68 B2 B6 68 1B B7 68  .h..h..h
        db   $84,$B7,$FF,$2F,$D6,$B7,$2E,$98 ; B431 84 B7 FF 2F D6 B7 2E 98  .../....
        db   $B8,$2E,$DD,$B8,$03,$04,$B9,$03 ; B439 B8 2E DD B8 03 04 B9 03  ........
        db   $1C,$B9,$03,$53,$B9,$0E,$6A,$B9 ; B441 1C B9 03 53 B9 0E 6A B9  ...S..j.
        db   $2F,$A7,$BA,$2E,$3A,$BB,$2E,$8A ; B449 2F A7 BA 2E 3A BB 2E 8A  /...:...
        db   $BB,$2F,$AE,$BB,$FF,$2B,$E4,$BB ; B451 BB 2F AE BB FF 2B E4 BB  ./...+..
        db   $2B,$FB,$BB,$2B,$1B,$BC,$4F,$59 ; B459 2B FB BB 2B 1B BC 4F 59  +..+..OY
        db   $BC,$FF,$31,$A5,$BC,$30,$6C,$BE ; B461 BC FF 31 A5 BC 30 6C BE  ..1..0l.
        db   $30,$10,$BF,$30,$6A,$BF,$30,$A1 ; B469 30 10 BF 30 6A BF 30 A1  0..0j.0.
        db   $BF,$30,$75,$80,$30,$C1,$80,$30 ; B471 BF 30 75 80 30 C1 80 30  .0u.0..0
        db   $58,$81,$FF,$32,$A8,$81,$05,$13 ; B479 58 81 FF 32 A8 81 05 13  X..2....
        db   $83,$09,$4D,$83,$09,$B9,$83,$FF ; B481 83 09 4D 83 09 B9 83 FF  ..M.....
        db   $30,$C1,$84,$0C,$7A,$85,$FF,$1B ; B489 30 C1 84 0C 7A 85 FF 1B  0...z...
        db   $A8,$85,$5C,$18,$86,$5C,$5B,$87 ; B491 A8 85 5C 18 86 5C 5B 87  ..\..\[.
        db   $5C,$48,$88,$5C,$45,$89,$5C,$AF ; B499 5C 48 88 5C 45 89 5C AF  \H.\E.\.
        db   $89,$5C,$5B,$8A,$1C,$46,$8B,$5C ; B4A1 89 5C 5B 8A 1C 46 8B 5C  .\[..F.\
        db   $DC,$8B,$5B,$49,$8C,$FF         ; B4A9 DC 8B 5B 49 8C FF        ..[I..
Bank17_MapAnimationSetup:
        db   $0C,$00,$0C,$80,$0C,$FF,$3C,$FF ; B4AF 0C 00 0C 80 0C FF 3C FF  ......<.
        db   $00,$0C,$00,$0C,$80,$0C,$FF,$0C ; B4B7 00 0C 00 0C 80 0C FF 0C  ........
        db   $FF,$00                         ; B4BF FF 00                    ..
Bank17_MapAnimationCommands:
        db   $4B,$F0,$04,$E1,$5C,$EE,$E0,$57 ; B4C1 4B F0 04 E1 5C EE E0 57  K...\..W
        db   $E0,$00,$0C,$EE,$C0,$E1,$5E,$F3 ; B4C9 E0 00 0C EE C0 E1 5E F3  ......^.
        db   $AF,$B4,$0C,$13,$1A,$18,$09,$13 ; B4D1 AF B4 0C 13 1A 18 09 13  ........
        db   $1A,$18,$11,$18,$1A,$18,$06,$15 ; B4D9 1A 18 11 18 1A 18 06 15  ........
        db   $1A,$EC,$63,$0C,$68,$18,$1B,$52 ; B4E1 1A EC 63 0C 68 18 1B 52  ..c.h..R
        db   $8C,$00,$A9,$80,$16,$14,$62,$30 ; B4E9 8C 00 A9 80 16 14 62 30  ......b0
        db   $F3,$AF,$B4,$0C,$13,$1A,$18,$08 ; B4F1 F3 AF B4 0C 13 1A 18 08  ........
        db   $13,$1A,$18,$EC,$5E,$B0,$00,$A9 ; B4F9 13 1A 18 EC 5E B0 00 A9  ....^...
        db   $80,$57,$8C,$00,$A9,$80,$1A,$63 ; B501 80 57 8C 00 A9 80 1A 63  .W.....c
        db   $3C,$F9,$F6,$57,$B0,$00,$0E,$0F ; B509 3C F9 F6 57 B0 00 0E 0F  <..W....
        db   $10,$11,$0F,$12,$13,$0C,$0A,$09 ; B511 10 11 0F 12 13 0C 0A 09  ........
        db   $08,$07,$13,$57,$8C,$00,$A9,$80 ; B519 08 07 13 57 8C 00 A9 80  ...W....
        db   $1A,$63,$3C,$57,$60,$FE,$CC,$B4 ; B521 1A 63 3C 57 60 FE CC B4  .c<W`...
        db   $E1,$5E,$EE,$B0,$F0,$0A,$94,$8C ; B529 E1 5E EE B0 F0 0A 94 8C  .^......
        db   $00,$A9,$80,$1A,$18,$5E,$30,$F9 ; B531 00 A9 80 1A 18 5E 30 F9  .....^0.
        db   $F5,$EE,$A0,$94,$98,$00,$B1,$80 ; B539 F5 EE A0 94 98 00 B1 80  ........
        db   $1D,$1B,$FA,$03,$F4,$DF,$00,$69 ; B541 1D 1B FA 03 F4 DF 00 69  .......i
        db   $48,$94,$18,$AD,$80,$20,$1F,$DF ; B549 48 94 18 AD 80 20 1F DF  H.... ..
        db   $00,$B1,$80,$1D,$1B,$F9,$F8,$94 ; B551 00 B1 80 1D 1B F9 F8 94  ........
        db   $8C,$00,$B3,$80,$1B,$1A,$1D,$1F ; B559 8C 00 B3 80 1B 1A 1D 1F  ........
        db   $68,$18,$94,$98,$00,$B1,$80,$1D ; B561 68 18 94 98 00 B1 80 1D  h.......
        db   $1B,$F9,$F7,$EE,$B0,$E1,$5C,$F3 ; B569 1B F9 F7 EE B0 E1 5C F3  ......\.
        db   $B8,$B4,$18,$1B,$1F,$24,$1A,$1D ; B571 B8 B4 18 1B 1F 24 1A 1D  .....$..
        db   $22,$26,$1B,$1F,$22,$1F,$1C,$1F ; B579 22 26 1B 1F 22 1F 1C 1F  "&.."...
        db   $22,$1F,$EE,$A0,$49,$14,$18,$1D ; B581 22 1F EE A0 49 14 18 1D  "...I...
        db   $49,$18,$1D,$20,$49,$18,$1A,$21 ; B589 49 18 1D 20 49 18 1A 21  I.. I..!
        db   $49,$1A,$1D,$23,$EC,$49,$EE,$C0 ; B591 49 1A 1D 23 EC 49 EE C0  I..#.I..
        db   $A9,$00,$B1,$80,$1F,$16,$1B,$1F ; B599 A9 00 B1 80 1F 16 1B 1F  ........
        db   $24,$AB,$00,$B1,$80,$1F,$24,$AA ; B5A1 24 AB 00 B1 80 1F 24 AA  $.....$.
        db   $00,$B1,$80,$1F,$1B,$DF,$00,$B0 ; B5A9 00 B1 80 1F 1B DF 00 B0  ........
        db   $80,$1D,$1A,$1D,$1F,$68,$18,$E1 ; B5B1 80 1D 1A 1D 1F 68 18 E1  .....h..
        db   $5E,$68,$8C,$00,$B5,$80,$66,$18 ; B5B9 5E 68 8C 00 B5 80 66 18  ^h....f.
        db   $1D,$1B,$94,$8C,$00,$A9,$80,$1A ; B5C1 1D 1B 94 8C 00 A9 80 1A  ........
        db   $18,$5E,$30,$FE,$3A,$B5,$F0,$06 ; B5C9 18 5E 30 FE 3A B5 F0 06  .^0.:...
        db   $94,$98,$00,$27,$29,$27,$49,$27 ; B5D1 94 98 00 27 29 27 49 27  ...')'I'
        db   $29,$27,$82,$E0,$00,$95,$18,$80 ; B5D9 29 27 82 E0 00 95 18 80  )'......
        db   $0C,$33,$7D,$18,$30,$2E,$77,$A4 ; B5E1 0C 33 7D 18 30 2E 77 A4  .3}.0.w.
        db   $22,$77,$8C,$00,$2E,$30,$7D,$E0 ; B5E9 22 77 8C 00 2E 30 7D E0  "w...0}.
        db   $00,$7D,$E0,$5A,$7D,$8C,$00,$33 ; B5F1 00 7D E0 5A 7D 8C 00 33  .}.Z}..3
        db   $7B,$30,$F0,$0C,$3C,$F0,$06,$82 ; B5F9 7B 30 F0 0C 3C F0 06 82  {0..<...
        db   $0C,$33,$7D,$18,$30,$79,$30,$7D ; B601 0C 33 7D 18 30 79 30 7D  .3}.0y0}
        db   $0C,$33,$7D,$98,$16,$7D,$8C,$00 ; B609 0C 33 7D 98 16 7D 8C 00  .3}..}..
        db   $33,$7B,$48,$4A,$7B,$06,$32,$33 ; B611 33 7B 48 4A 7B 06 32 33  3{HJ{.23
        db   $35,$82,$60,$95,$18,$80,$0C,$33 ; B619 35 82 60 95 18 80 0C 33  5.`....3
        db   $7D,$18,$30,$2E,$77,$A4,$22,$77 ; B621 7D 18 30 2E 77 A4 22 77  }.0.w."w
        db   $8C,$00,$2E,$30,$7D,$E0,$5A,$7D ; B629 8C 00 2E 30 7D E0 5A 7D  ...0}.Z}
        db   $8C,$00,$33,$7B,$30,$F0,$0C,$3C ; B631 8C 00 33 7B 30 F0 0C 3C  ..3{0..<
        db   $F0,$06,$82,$0C,$33,$7D,$18,$30 ; B639 F0 06 82 0C 33 7D 18 30  ....3}.0
        db   $79,$30,$7D,$0C,$33,$7D,$98,$16 ; B641 79 30 7D 0C 33 7D 98 16  y0}.3}..
        db   $7D,$8C,$00,$33,$7B,$60,$72,$18 ; B649 7D 8C 00 33 7B 60 72 18  }..3{`r.
        db   $29,$27,$FE,$DB,$B5,$73,$E1,$4C ; B651 29 27 FE DB B5 73 E1 4C  )'...s.L
        db   $EE,$C0,$6C,$92,$08,$6C,$86,$04 ; B659 EE C0 6C 92 08 6C 86 04  ..l..l..
        db   $73,$C8,$38,$71,$98,$12,$BA,$12 ; B661 73 C8 38 71 98 12 BA 12  s.8q....
        db   $23,$1F,$1D,$6C,$C8,$38,$6C,$92 ; B669 23 1F 1D 6C C8 38 6C 92  #..l.8l.
        db   $08,$6C,$86,$04,$73,$98,$12,$2B ; B671 08 6C 86 04 73 98 12 2B  .l..s..+
        db   $2A,$26,$24,$23,$1F,$1D,$FF,$68 ; B679 2A 26 24 23 1F 1D FF 68  *&$#...h
        db   $6C,$E0,$00,$95,$18,$94,$48,$EE ; B681 6C E0 00 95 18 94 48 EE  l.....H.
        db   $A0,$E1,$3C,$FE,$9B,$B6,$68,$E1 ; B689 A0 E1 3C FE 9B B6 68 E1  ..<...h.
        db   $3C,$EE,$80,$63,$84,$00,$1A,$FA ; B691 3C EE 80 63 84 00 1A FA  <..c....
        db   $18,$F9,$63,$84,$00,$1A,$FA,$18 ; B699 18 F9 63 84 00 1A FA 18  ..c.....
        db   $F9,$1D,$1F,$FA,$0C,$FB,$68,$04 ; B6A1 F9 1D 1F FA 0C FB 68 04  ......h.
        db   $1F,$FA,$0C,$FA,$18,$1A,$FA,$0C ; B6A9 1F FA 0C FA 18 1A FA 0C  ........
        db   $FB,$1D,$1F,$FA,$18,$FB,$18,$1A ; B6B1 FB 1D 1F FA 18 FB 18 1A  ........
        db   $FA,$0C,$FB,$19,$1B,$FA,$24,$FB ; B6B9 FA 0C FB 19 1B FA 24 FB  ......$.
        db   $16,$19,$FA,$3C,$FB,$19,$1B,$FA ; B6C1 16 19 FA 3C FB 19 1B FA  ...<....
        db   $24,$FB,$FE,$9B,$B6,$EE,$C0,$E1 ; B6C9 24 FB FE 9B B6 EE C0 E1  $.......
        db   $4C,$94,$98,$00,$F7,$24,$1E,$21 ; B6D1 4C 94 98 00 F7 24 1E 21  L....$.!
        db   $1F,$17,$15,$18,$18,$18,$24,$28 ; B6D9 1F 17 15 18 18 18 24 28  ......$(
        db   $26,$21,$21,$1F,$17,$15,$F8,$EE ; B6E1 26 21 21 1F 17 15 F8 EE  &!!.....
        db   $C0,$E1,$3C,$94,$02,$63,$84,$00 ; B6E9 C0 E1 3C 94 02 63 84 00  ..<..c..
        db   $1A,$FA,$18,$F9,$FE,$05,$B7,$E1 ; B6F1 1A FA 18 F9 FE 05 B7 E1  ........
        db   $3C,$EE,$80,$94,$02,$60,$84,$00 ; B6F9 3C EE 80 94 02 60 84 00  <....`..
        db   $13,$FA,$18,$F9,$15,$13,$FA,$18 ; B701 13 FA 18 F9 15 13 FA 18  ........
        db   $FB,$65,$04,$18,$FA,$18,$FA,$15 ; B709 FB 65 04 18 FA 18 FA 15  .e......
        db   $13,$FA,$0C,$FB,$1A,$18,$FA,$18 ; B711 13 FA 0C FB 1A 18 FA 18  ........
        db   $FB,$15,$13,$FA,$0C,$FB,$16,$14 ; B719 FB 15 13 FA 0C FB 16 14  ........
        db   $FA,$24,$FB,$12,$14,$FA,$3C,$FB ; B721 FA 24 FB 12 14 FA 3C FB  .$....<.
        db   $16,$14,$FA,$24,$FB,$FE,$05,$B7 ; B729 16 14 FA 24 FB FE 05 B7  ...$....
        db   $94,$18,$15,$17,$18,$1A,$67,$30 ; B731 94 18 15 17 18 1A 67 30  ......g0
        db   $67,$18,$1A,$15,$17,$18,$1C,$6C ; B739 67 18 1A 15 17 18 1C 6C  g......l
        db   $B0,$2E,$21,$1C,$67,$18,$1A,$6C ; B741 B0 2E 21 1C 67 18 1A 6C  ..!.g..l
        db   $04,$1F,$FA,$18,$FA,$FE,$55,$B7 ; B749 04 1F FA 18 FA FE 55 B7  ......U.
        db   $94,$60,$94,$60,$87,$8C,$04,$3E ; B751 94 60 94 60 87 8C 04 3E  .`.`...>
        db   $39,$3C,$37,$39,$32,$37,$39,$3C ; B759 39 3C 37 39 32 37 39 3C  9<79279<
        db   $86,$88,$06,$39,$37,$84,$B0,$28 ; B761 86 88 06 39 37 84 B0 28  ...97..(
        db   $86,$88,$06,$39,$37,$84,$C8,$38 ; B769 86 88 06 39 37 84 C8 38  ...97..8
        db   $94,$18,$8B,$88,$06,$3C,$39,$82 ; B771 94 18 8B 88 06 3C 39 82  .....<9.
        db   $B0,$28,$7F,$88,$06,$30,$2D,$76 ; B779 B0 28 7F 88 06 30 2D 76  .(...0-v
        db   $B0,$28,$74,$03,$76,$95,$14,$78 ; B781 B0 28 74 03 76 95 14 78  .(t.v..x
        db   $98,$14,$30,$7A,$90,$0C,$34,$39 ; B789 98 14 30 7A 90 0C 34 39  ..0z..49
        db   $94,$15,$80,$03,$82,$98,$14,$7B ; B791 94 15 80 03 82 98 14 7B  .......{
        db   $03,$7D,$AD,$27,$80,$86,$04,$37 ; B799 03 7D AD 27 80 86 04 37  .}.'...7
        db   $30,$C8,$00,$95,$48,$80,$88,$06 ; B7A1 30 C8 00 95 48 80 88 06  0...H...
        db   $31,$2E,$77,$C8,$54,$79,$8C,$08 ; B7A9 31 2E 77 C8 54 79 8C 08  1.w.Ty..
        db   $31,$7B,$88,$06,$2E,$2C,$79,$90 ; B7B1 31 7B 88 06 2E 2C 79 90  1{...,y.
        db   $0C,$35,$38,$3C,$38,$35,$7E,$A4 ; B7B9 0C 35 38 3C 38 35 7E A4  .58<85~.
        db   $23,$7C,$8C,$0B,$7B,$88,$06,$2C ; B7C1 23 7C 8C 0B 7B 88 06 2C  #|..{..,
        db   $29,$72,$B0,$2A,$74,$8C,$08,$2C ; B7C9 29 72 B0 2A 74 8C 08 2C  )r.*t..,
        db   $2E,$31,$7B,$88,$08,$2E,$2C,$79 ; B7D1 2E 31 7B 88 08 2E 2C 79  .1{...,y
        db   $95,$00,$80,$03,$7E,$18,$95,$48 ; B7D9 95 00 80 03 7E 18 95 48  ....~..H
        db   $7C,$98,$12,$7B,$86,$04,$31,$33 ; B7E1 7C 98 12 7B 86 04 31 33  |..{..13
        db   $31,$7B,$C5,$3F,$79,$83,$00,$7B ; B7E9 31 7B C5 3F 79 83 00 7B  1{.?y..{
        db   $C5,$3F,$75,$83,$00,$7B,$18,$7B ; B7F1 C5 3F 75 83 00 7B 18 7B  .?u..{.{
        db   $86,$04,$31,$33,$35,$33,$31,$7B ; B7F9 86 04 31 33 35 33 31 7B  ..13531{
        db   $B9,$33,$79,$83,$00,$7B,$15,$75 ; B801 B9 33 79 83 00 7B 15 75  .3y..{.u
        db   $03,$7B,$54,$94,$0C,$87,$98,$14 ; B809 03 7B 54 94 0C 87 98 14  .{T.....
        db   $87,$90,$0C,$3C,$3C,$FE,$55,$B7 ; B811 87 90 0C 3C 3C FE 55 B7  ...<<.U.
        db   $68,$E1,$3C,$EE,$50,$FE,$6E,$B8 ; B819 68 E1 3C EE 50 FE 6E B8  h.<.P.n.
        db   $FE,$6E,$B8,$FE,$6E,$B8,$FE,$6E ; B821 FE 6E B8 FE 6E B8 FE 6E  .n..n..n
        db   $B8,$FE,$78,$B8,$FE,$78,$B8,$FE ; B829 B8 FE 78 B8 FE 78 B8 FE  ..x..x..
        db   $6E,$B8,$FE,$78,$B8,$FE,$78,$B8 ; B831 6E B8 FE 78 B8 FE 78 B8  n..x..x.
        db   $FE,$6E,$B8,$FB,$01,$FE,$6E,$B8 ; B839 FE 6E B8 FB 01 FE 6E B8  .n....n.
        db   $FE,$6E,$B8,$FE,$6E,$B8,$FB,$00 ; B841 FE 6E B8 FE 6E B8 FB 00  .n..n...
        db   $12,$16,$19,$14,$FA,$1E,$F9,$FB ; B849 12 16 19 14 FA 1E F9 FB  ........
        db   $01,$FE,$6E,$B8,$FE,$6E,$B8,$FE ; B851 01 FE 6E B8 FE 6E B8 FE  ..n..n..
        db   $6E,$B8,$FB,$00,$FE,$24,$B8,$E1 ; B859 6E B8 FB 00 FE 24 B8 E1  n....$..
        db   $58,$EE,$50,$FB,$F4,$FE,$51,$B7 ; B861 58 EE 50 FB F4 FE 51 B7  X.P...Q.
        db   $94,$01,$FE,$69,$B8,$60,$84,$00 ; B869 94 01 FE 69 B8 60 84 00  ...i.`..
        db   $18,$1A,$1F,$FA,$06,$F7,$FD,$1A ; B871 18 1A 1F FA 06 F7 FD 1A  ........
        db   $1D,$18,$1F,$FA,$06,$F9,$FD,$91 ; B879 1D 18 1F FA 06 F9 FD 91  ........
        db   $E1,$24,$EE,$C0,$FE,$BA,$B8,$FE ; B881 E1 24 EE C0 FE BA B8 FE  .$......
        db   $D1,$B8,$FE,$BA,$B8,$1F,$1F,$1F ; B889 D1 B8 FE BA B8 1F 1F 1F  ........
        db   $1F,$1F,$1F,$1F,$1F,$1F,$2B,$29 ; B891 1F 1F 1F 1F 1F 1F 2B 29  ......+)
        db   $23,$1F,$19,$4A,$4A,$FE,$BA,$B8 ; B899 23 1F 19 4A 4A FE BA B8  #..JJ...
        db   $FE,$D1,$B8,$FE,$BA,$B8,$2B,$4A ; B8A1 FE D1 B8 FE BA B8 2B 4A  ......+J
        db   $4A,$2C,$4A,$4A,$2D,$4A,$4A,$2F ; B8A9 4A 2C 4A 4A 2D 4A 4A 2F  J,JJ-JJ/
        db   $4A,$4A,$30,$4A,$4A,$4A,$FE,$85 ; B8B1 4A 4A 30 4A 4A 4A FE 85  JJ0JJJ..
        db   $B8,$7F,$8C,$00,$32,$4A,$30,$4A ; B8B9 B8 7F 8C 00 32 4A 30 4A  ....2J0J
        db   $2F,$2D,$2B,$29,$EE,$80,$1D,$21 ; B8C1 2F 2D 2B 29 EE 80 1D 21  /-+)...!
        db   $24,$28,$24,$21,$1D,$EE,$C0,$FD ; B8C9 24 28 24 21 1D EE C0 FD  $($!....
        db   $32,$30,$4A,$2F,$4A,$2D,$2B,$29 ; B8D1 32 30 4A 2F 4A 2D 2B 29  20J/J-+)
        db   $28,$1C,$4A,$1F,$26,$23,$1F,$1C ; B8D9 28 1C 4A 1F 26 23 1F 1C  (.J.&#..
        db   $FD,$E1,$24,$EE,$C0,$FE,$1B,$B9 ; B8E1 FD E1 24 EE C0 FE 1B B9  ..$.....
        db   $FE,$32,$B9,$FE,$1B,$B9,$1F,$4A ; B8E9 FE 32 B9 FE 1B B9 1F 4A  .2.....J
        db   $4A,$1D,$4A,$4A,$1C,$4A,$1A,$23 ; B8F1 4A 1D 4A 4A 1C 4A 1A 23  J.JJ.J.#
        db   $4A,$4A,$4A,$4A,$4A,$4A,$FE,$1B ; B8F9 4A 4A 4A 4A 4A 4A FE 1B  JJJJJJ..
        db   $B9,$FE,$32,$B9,$FE,$1B,$B9,$1D ; B901 B9 FE 32 B9 FE 1B B9 1D  ..2.....
        db   $4A,$4A,$1A,$4A,$4A,$1B,$4A,$4A ; B909 4A 4A 1A 4A 4A 1B 4A 4A  JJ.JJ.JJ
        db   $1D,$4A,$4A,$28,$4A,$4A,$4A,$FE ; B911 1D 4A 4A 28 4A 4A 4A FE  .JJ(JJJ.
        db   $E6,$B8,$7B,$8C,$00,$2F,$4A,$2D ; B919 E6 B8 7B 8C 00 2F 4A 2D  ..{../J-
        db   $4A,$2B,$29,$28,$26,$EE,$80,$1A ; B921 4A 2B 29 28 26 EE 80 1A  J+)(&...
        db   $1D,$21,$24,$21,$1D,$1A,$EE,$C0 ; B929 1D 21 24 21 1D 1A EE C0  .!$!....
        db   $FD,$2F,$2D,$4A,$2B,$4A,$29,$28 ; B931 FD 2F 2D 4A 2B 4A 29 28  ./-J+J)(
        db   $26,$24,$18,$4A,$1C,$23,$1F,$1C ; B939 26 24 18 4A 1C 23 1F 1C  &$.J.#..
        db   $17,$FD,$FE,$78,$B9,$FE,$8B,$B9 ; B941 17 FD FE 78 B9 FE 8B B9  ...x....
        db   $FE,$78,$B9,$13,$49,$49,$23,$49 ; B949 FE 78 B9 13 49 49 23 49  .x..II#I
        db   $49,$23,$49,$23,$49,$49,$49,$49 ; B951 49 23 49 23 49 49 49 49  I#I#IIII
        db   $49,$1F,$13,$FE,$78,$B9,$FE,$8B ; B959 49 1F 13 FE 78 B9 FE 8B  I...x...
        db   $B9,$FE,$78,$B9,$23,$1F,$13,$22 ; B961 B9 FE 78 B9 23 1F 13 22  ..x.#.."
        db   $1E,$12,$24,$1D,$11,$25,$1F,$1B ; B969 1E 12 24 1D 11 25 1F 1B  ..$..%..
        db   $18,$49,$49,$49,$FE,$43,$B9,$63 ; B971 18 49 49 49 FE 43 B9 63  .III.C.c
        db   $8C,$06,$1F,$28,$49,$18,$1F,$24 ; B979 8C 06 1F 28 49 18 1F 24  ...(I..$
        db   $49,$1A,$24,$26,$29,$2D,$29,$26 ; B981 49 1A 24 26 29 2D 29 26  I.$&)-)&
        db   $24,$FD,$13,$1A,$23,$49,$13,$1A ; B989 24 FD 13 1A 23 49 13 1A  $...#I..
        db   $23,$49,$18,$1F,$24,$49,$0C,$1F ; B991 23 49 18 1F 24 49 0C 1F  #I..$I..
        db   $24,$1F,$FD,$F0,$16,$76,$18,$7D ; B999 24 1F FD F0 16 76 18 7D  $....v.}
        db   $18,$95,$60,$7F,$18,$37,$F0,$01 ; B9A1 18 95 60 7F 18 37 F0 01  ..`..7..
        db   $86,$60,$4A,$F0,$16,$76,$18,$7D ; B9A9 86 60 4A F0 16 76 18 7D  .`J..v.}
        db   $18,$95,$60,$7F,$18,$37,$86,$06 ; B9B1 18 95 60 7F 18 37 86 06  ..`..7..
        db   $3C,$F0,$01,$89,$54,$95,$30,$F0 ; B9B9 3C F0 01 89 54 95 30 F0  <...T.0.
        db   $16,$81,$0C,$34,$32,$30,$86,$06 ; B9C1 16 81 0C 34 32 30 86 06  ...420..
        db   $3C,$89,$8C,$06,$82,$06,$39,$86 ; B9C9 3C 89 8C 06 82 06 39 86  <.....9.
        db   $8C,$06,$7F,$B0,$00,$81,$06,$37 ; B9D1 8C 06 7F B0 00 81 06 37  .......7
        db   $84,$8C,$06,$7D,$06,$34,$81,$8C ; B9D9 84 8C 06 7D 06 34 81 8C  ...}.4..
        db   $06,$7A,$B0,$00,$94,$0C,$2F,$2D ; B9E1 06 7A B0 00 94 0C 2F 2D  .z..../-
        db   $32,$2F,$2D,$32,$2D,$2F,$30,$32 ; B9E9 32 2F 2D 32 2D 2F 30 32  2/-2-/02
        db   $80,$18,$7F,$0C,$32,$30,$7A,$30 ; B9F1 80 18 7F 0C 32 30 7A 30  ....20z0
        db   $76,$18,$2F,$78,$60,$FE,$9E,$B9 ; B9F9 76 18 2F 78 60 FE 9E B9  v./x`...
        db   $72,$ED,$FF,$FB,$F4,$E1,$08,$EE ; BA01 72 ED FF FB F4 E1 08 EE  r.......
        db   $B0,$5E,$8C,$00,$B9,$03,$23,$23 ; BA09 B0 5E 8C 00 B9 03 23 23  .^....##
        db   $B5,$00,$BA,$03,$24,$24,$B5,$00 ; BA11 B5 00 BA 03 24 24 B5 00  ....$$..
        db   $BC,$03,$26,$26,$B5,$00,$BA,$03 ; BA19 BC 03 26 26 B5 00 BA 03  ..&&....
        db   $24,$24,$FA,$05,$E0,$B5,$00,$B9 ; BA21 24 24 FA 05 E0 B5 00 B9  $$......
        db   $03,$23,$23,$B3,$00,$B7,$03,$29 ; BA29 03 23 23 B3 00 B7 03 29  .##....)
        db   $21,$B2,$00,$B6,$03,$20,$20,$F9 ; BA31 21 B2 00 B6 03 20 20 F9  !....  .
        db   $F8,$AB,$00,$BB,$03,$25,$25,$F9 ; BA39 F8 AB 00 BB 03 25 25 F9  .....%%.
        db   $F8,$EE,$80,$E1,$40,$B4,$00,$1F ; BA41 F8 EE 80 E1 40 B4 00 1F  ....@...
        db   $1C,$1E,$1A,$E9,$1C,$E9,$18,$E9 ; BA49 1C 1E 1A E9 1C E9 18 E9  ........
        db   $1A,$FE,$06,$BA,$EE,$90,$ED,$FF ; BA51 1A FE 06 BA EE 90 ED FF  ........
        db   $E1,$08,$94,$8C,$03,$1A,$1A,$1A ; BA59 E1 08 94 8C 03 1A 1A 1A  ........
        db   $49,$1C,$1C,$1C,$49,$1E,$1E,$1E ; BA61 49 1C 1C 1C 49 1E 1E 1E  I...I...
        db   $49,$1C,$1C,$1C,$FA,$05,$E5,$49 ; BA69 49 1C 1C 1C FA 05 E5 49  I......I
        db   $1A,$1A,$1A,$FA,$04,$F9,$49,$1C ; BA71 1A 1A 1A FA 04 F9 49 1C  ......I.
        db   $1C,$1C,$F9,$FA,$E1,$40,$EE,$80 ; BA79 1C 1C F9 FA E1 40 EE 80  .....@..
        db   $B0,$00,$1C,$18,$1A,$17,$E9,$18 ; BA81 B0 00 1C 18 1A 17 E9 18  ........
        db   $E9,$15,$E9,$17,$FE,$55,$BA,$68 ; BA89 E9 15 E9 17 FE 55 BA 68  .....U.h
        db   $EE,$D0,$E1,$5A,$52,$88,$00,$0E ; BA91 EE D0 E1 5A 52 88 00 0E  ...ZR...
        db   $13,$17,$1A,$1D,$1A,$1D,$1A,$17 ; BA99 13 17 1A 1D 1A 1D 1A 17  ........
        db   $15,$11,$0E,$11,$15,$18,$1A,$1D ; BAA1 15 11 0E 11 15 18 1A 1D  ........
        db   $21,$1D,$1A,$1D,$1A,$1D,$09,$10 ; BAA9 21 1D 1A 1D 1A 1D 09 10  !.......
        db   $15,$18,$1C,$21,$1C,$18,$21,$1C ; BAB1 15 18 1C 21 1C 18 21 1C  ...!..!.
        db   $18,$15,$10,$13,$17,$1A,$1C,$1F ; BAB9 18 15 10 13 17 1A 1C 1F  ........
        db   $1C,$1F,$1C,$1A,$17,$13,$0E,$11 ; BAC1 1C 1F 1C 1A 17 13 0E 11  ........
        db   $15,$18,$1A,$1D,$10,$13,$17,$1A ; BAC9 15 18 1A 1D 10 13 17 1A  ........
        db   $1C,$1F,$11,$15,$18,$1D,$18,$15 ; BAD1 1C 1F 11 15 18 1D 18 15  ........
        db   $5C,$18,$0B,$4F,$08,$10,$14,$17 ; BAD9 5C 18 0B 4F 08 10 14 17  \..O....
        db   $1A,$1C,$23,$1C,$1A,$17,$14,$17 ; BAE1 1A 1C 23 1C 1A 17 14 17  ..#.....
        db   $34,$2F,$2C,$23,$1C,$1A,$1C,$1A ; BAE9 34 2F 2C 23 1C 1A 1C 1A  4/,#....
        db   $17,$14,$10,$04,$EE,$D0,$0E,$1A ; BAF1 17 14 10 04 EE D0 0E 1A  ........
        db   $1D,$21,$1D,$21,$26,$21,$1D,$21 ; BAF9 1D 21 1D 21 26 21 1D 21  .!.!&!.!
        db   $1D,$1A,$07,$13,$1A,$17,$1A,$1D ; BB01 1D 1A 07 13 1A 17 1A 1D  ........
        db   $1F,$1A,$17,$1A,$17,$13,$0C,$18 ; BB09 1F 1A 17 1A 17 13 0C 18  ........
        db   $1C,$1F,$1C,$1F,$1C,$18,$1C,$18 ; BB11 1C 1F 1C 1F 1C 18 1C 18  ........
        db   $17,$13,$09,$15,$19,$1C,$19,$1C ; BB19 17 13 09 15 19 1C 19 1C  ........
        db   $21,$1C,$21,$1C,$19,$1C,$0E,$1A ; BB21 21 1C 21 1C 19 1C 0E 1A  !.!.....
        db   $1D,$21,$1D,$21,$1D,$1A,$1D,$1A ; BB29 1D 21 1D 21 1D 1A 1D 1A  .!.!....
        db   $15,$11,$07,$13,$1A,$17,$1A,$1D ; BB31 15 11 07 13 1A 17 1A 1D  ........
        db   $1F,$17,$1F,$1D,$1A,$13,$04,$10 ; BB39 1F 17 1F 1D 1A 13 04 10  ........
        db   $14,$17,$1C,$20,$23,$28,$2C,$28 ; BB41 14 17 1C 20 23 28 2C 28  ... #(,(
        db   $2C,$28,$2C,$28,$23,$28,$23,$28 ; BB49 2C 28 2C 28 23 28 23 28  ,(,(#(#(
        db   $23,$20,$1C,$17,$14,$10,$FE,$95 ; BB51 23 20 1C 17 14 10 FE 95  # ......
        db   $BA,$EE,$C0,$E1,$40,$68,$18,$26 ; BB59 BA EE C0 E1 40 68 18 26  ....@h.&
        db   $6E,$48,$6C,$0C,$23,$6F,$18,$6C ; BB61 6E 48 6C 0C 23 6F 18 6C  nHl.#o.l
        db   $0C,$24,$67,$18,$24,$6F,$48,$76 ; BB69 0C 24 67 18 24 6F 48 76  .$g.$oHv
        db   $0C,$2D,$7A,$18,$76,$0C,$26,$6F ; BB71 0C 2D 7A 18 76 0C 26 6F  .-z.v.&o
        db   $10,$21,$24,$6E,$48,$6C,$0C,$24 ; BB79 10 21 24 6E 48 6C 0C 24  .!$nHl.$
        db   $6C,$18,$69,$08,$21,$1E,$6B,$60 ; BB81 6C 18 69 08 21 1E 6B 60  l.i.!.k`
        db   $4A,$F0,$01,$EE,$B0,$E1,$5A,$94 ; BB89 4A F0 01 EE B0 E1 5A 94  J.....Z.
        db   $09,$68,$08,$1F,$24,$21,$24,$29 ; BB91 09 68 08 1F 24 21 24 29  .h..$!$)
        db   $24,$21,$24,$21,$1D,$4A,$1A,$1D ; BB99 24 21 24 21 1D 4A 1A 1D  $!$!.J..
        db   $1F,$1D,$21,$23,$1F,$1D,$1F,$1D ; BBA1 1F 1D 21 23 1F 1D 1F 1D  ..!#....
        db   $1A,$4A,$1C,$1F,$23,$1F,$23,$1F ; BBA9 1A 4A 1C 1F 23 1F 23 1F  .J..#.#.
        db   $1C,$1F,$1C,$1A,$17,$4A,$19,$1C ; BBB1 1C 1F 1C 1A 17 4A 19 1C  .....J..
        db   $21,$1C,$21,$25,$21,$25,$21,$1C ; BBB9 21 1C 21 25 21 25 21 1C  !.!%!%!.
        db   $21,$4A,$1D,$21,$24,$21,$24,$21 ; BBC1 21 4A 1D 21 24 21 24 21  !J.!$!$!
        db   $1D,$21,$1D,$18,$15,$4A,$1A,$1D ; BBC9 1D 21 1D 18 15 4A 1A 1D  .!...J..
        db   $1F,$1D,$21,$23,$1F,$23,$21,$1D ; BBD1 1F 1D 21 23 1F 23 21 1D  ..!#.#!.
        db   $17,$4A,$14,$17,$1C,$20,$23,$28 ; BBD9 17 4A 14 17 1C 20 23 28  .J... #(
        db   $2C,$2F,$2C,$2F,$2C,$2F,$2C,$28 ; BBE1 2C 2F 2C 2F 2C 2F 2C 28  ,/,/,/,(
        db   $2C,$28,$2C,$28,$23,$20,$1C,$17 ; BBE9 2C 28 2C 28 23 20 1C 17  ,(,(# ..
        db   $5F,$07,$F8,$FE,$5A,$BB,$F0,$10 ; BBF1 5F 07 F8 FE 5A BB F0 10  _...Z...
        db   $7D,$18,$39,$82,$48,$80,$0C,$37 ; BBF9 7D 18 39 82 48 80 0C 37  }.9.H..7
        db   $7F,$18,$7D,$0C,$34,$7B,$18,$3B ; BC01 7F 18 7D 0C 34 7B 18 3B  ..}.4{.;
        db   $84,$48,$86,$0C,$3C,$89,$18,$86 ; BC09 84 48 86 0C 3C 89 18 86  .H..<...
        db   $0C,$39,$82,$10,$35,$37,$7F,$48 ; BC11 0C 39 82 10 35 37 7F 48  .9..57.H
        db   $7D,$0C,$34,$7B,$18,$32,$7F,$60 ; BC19 7D 0C 34 7B 18 32 7F 60  }.4{.2.`
        db   $95,$60,$80,$98,$17,$35,$87,$C8 ; BC21 95 60 80 98 17 35 87 C8  .`...5..
        db   $00,$86,$0C,$3C,$89,$18,$86,$0C ; BC29 00 86 0C 3C 89 18 86 0C  ...<....
        db   $39,$3B,$37,$7F,$48,$95,$60,$80 ; BC31 39 3B 37 7F 48 95 60 80  9;7.H.`.
        db   $98,$17,$35,$87,$C8,$00,$86,$0C ; BC39 98 17 35 87 C8 00 86 0C  ..5.....
        db   $3C,$89,$18,$87,$0C,$3E,$8B,$60 ; BC41 3C 89 18 87 0C 3E 8B 60  <....>.`
        db   $F0,$0C,$4A,$FE,$F7,$BB,$53,$EE ; BC49 F0 0C 4A FE F7 BB 53 EE  ..J...S.
        db   $F0,$E1,$1A,$ED,$FF,$57,$86,$00 ; BC51 F0 E1 1A ED FF 57 86 00  .....W..
        db   $0E,$10,$11,$5E,$8C,$04,$0C,$AE ; BC59 0E 10 11 5E 8C 04 0C AE  ...^....
        db   $00,$62,$06,$AB,$04,$5E,$0C,$11 ; BC61 00 62 06 AB 04 5E 0C 11  .b...^..
        db   $5B,$8C,$00,$59,$86,$04,$0C,$56 ; BC69 5B 8C 00 59 86 04 0C 56  [..Y...V
        db   $03,$0C,$56,$8C,$00,$57,$86,$03 ; BC71 03 0C 56 8C 00 57 86 03  ..V..W..
        db   $57,$B0,$24,$59,$86,$00,$10,$12 ; BC79 57 B0 24 59 86 00 10 12  W.$Y....
        db   $13,$60,$8C,$04,$0E,$B0,$00,$63 ; BC81 13 60 8C 04 0E B0 00 63  .`.....c
        db   $06,$AD,$04,$60,$0C,$13,$5D,$8C ; BC89 06 AD 04 60 0C 13 5D 8C  ...`..].
        db   $04,$5D,$86,$00,$13,$60,$8C,$04 ; BC91 04 5D 86 00 13 60 8C 04  .]...`..
        db   $0E,$62,$B0,$24,$63,$8C,$00,$61 ; BC99 0E 62 B0 24 63 8C 00 61  .b.$c..a
        db   $06,$14,$5E,$8C,$04,$11,$5A,$86 ; BCA1 06 14 5E 8C 04 11 5A 86  ..^...Z.
        db   $00,$0D,$0C,$0A,$53,$8C,$00,$A5 ; BCA9 00 0D 0C 0A 53 8C 00 A5  ....S...
        db   $04,$63,$8C,$00,$62,$06,$15,$5E ; BCB1 04 63 8C 00 62 06 15 5E  .c..b..^
        db   $8C,$04,$11,$A6,$00,$A7,$04,$A8 ; BCB9 8C 04 11 A6 00 A7 04 A8  ........
        db   $00,$A9,$04,$57,$86,$00,$0E,$10 ; BCC1 00 A9 04 57 86 00 0E 10  ...W....
        db   $11,$5E,$8C,$04,$0C,$AE,$00,$62 ; BCC9 11 5E 8C 04 0C AE 00 62  .^.....b
        db   $86,$00,$15,$13,$15,$11,$13,$5B ; BCD1 86 00 15 13 15 11 13 5B  .......[
        db   $03,$11,$5B,$86,$00,$A4,$04,$0C ; BCD9 03 11 5B 86 00 A4 04 0C  ..[.....
        db   $5E,$8C,$04,$07,$57,$B0,$24,$EE ; BCE1 5E 8C 04 07 57 B0 24 EE  ^...W.$.
        db   $90,$73,$BC,$36,$EE,$C0,$5B,$86 ; BCE9 90 73 BC 36 EE C0 5B 86  .s.6..[.
        db   $04,$12,$5F,$0C,$10,$54,$98,$14 ; BCF1 04 12 5F 0C 10 54 98 14  .._..T..
        db   $EE,$90,$73,$A4,$1E,$EE,$C0,$54 ; BCF9 EE 90 73 A4 1E EE C0 54  ..s....T
        db   $86,$00,$0B,$58,$8C,$04,$09,$59 ; BD01 86 00 0B 58 8C 04 09 59  ...X...Y
        db   $B0,$00,$5A,$18,$10,$15,$0E,$5E ; BD09 B0 00 5A 18 10 15 0E 5E  ..Z....^
        db   $86,$04,$15,$13,$15,$13,$11,$10 ; BD11 86 04 15 13 15 13 11 10  ........
        db   $0E,$FE,$50,$BC,$EE,$80,$E1,$58 ; BD19 0E FE 50 BC EE 80 E1 58  ..P....X
        db   $73,$86,$03,$28,$2B,$2B,$F9,$F8 ; BD21 73 86 03 28 2B 2B F9 F8  s..(++..
        db   $29,$29,$2D,$2D,$F9,$FA,$28,$28 ; BD29 29 29 2D 2D F9 FA 28 28  ))--..((
        db   $2B,$2B,$29,$29,$2B,$2B,$F9,$FA ; BD31 2B 2B 29 29 2B 2B F9 FA  ++))++..
        db   $28,$28,$2B,$2B,$2A,$2A,$2D,$2D ; BD39 28 28 2B 2B 2A 2A 2D 2D  ((++**--
        db   $2A,$2A,$2D,$2D,$29,$29,$2B,$2B ; BD41 2A 2A 2D 2D 29 29 2B 2B  **--))++
        db   $26,$26,$29,$29,$24,$24,$26,$26 ; BD49 26 26 29 29 24 24 26 26  &&))$$&&
        db   $F9,$FA,$26,$26,$29,$29,$F9,$FA ; BD51 F9 FA 26 26 29 29 F9 FA  ..&&))..
        db   $72,$98,$06,$25,$25,$24,$1F,$24 ; BD59 72 98 06 25 25 24 1F 24  r..%%$.$
        db   $6F,$8C,$00,$BA,$06,$BB,$00,$BC ; BD61 6F 8C 00 BA 06 BB 00 BC  o.......
        db   $06,$73,$86,$03,$28,$2B,$2B,$F9 ; BD69 06 73 86 03 28 2B 2B F9  .s..(++.
        db   $F8,$29,$29,$2D,$2D,$F9,$FA,$28 ; BD71 F8 29 29 2D 2D F9 FA 28  .))--..(
        db   $28,$2B,$2B,$29,$29,$26,$26,$29 ; BD79 28 2B 2B 29 29 26 26 29  (++))&&)
        db   $29,$2B,$2B,$28,$28,$2B,$2B,$EE ; BD81 29 2B 2B 28 28 2B 2B EE  )++((++.
        db   $C0,$C5,$00,$30,$2F,$30,$7A,$8C ; BD89 C0 C5 00 30 2F 30 7A 8C  ...0/0z.
        db   $06,$30,$7D,$98,$0C,$49,$7C,$86 ; BD91 06 30 7D 98 0C 49 7C 86  .0}..I|.
        db   $00,$32,$31,$32,$7C,$8C,$06,$32 ; BD99 00 32 31 32 7C 8C 06 32  .212|..2
        db   $7F,$98,$0C,$49,$75,$86,$00,$2B ; BDA1 7F 98 0C 49 75 86 00 2B  ...Iu..+
        db   $2A,$2B,$75,$8C,$06,$76,$86,$00 ; BDA9 2A 2B 75 8C 06 76 86 00  *+u..v..
        db   $78,$8C,$06,$C3,$08,$78,$86,$03 ; BDB1 78 8C 06 C3 08 78 86 03  x....x..
        db   $76,$8C,$06,$2B,$70,$86,$03,$25 ; BDB9 76 8C 06 2B 70 86 03 25  v..+p..%
        db   $70,$8C,$06,$71,$86,$03,$71,$8C ; BDC1 70 8C 06 71 86 03 71 8C  p..q..q.
        db   $08,$71,$9E,$00,$6E,$18,$FE,$1D ; BDC9 08 71 9E 00 6E 18 FE 1D  .q..n...
        db   $BD,$F7,$30,$30,$34,$34,$F9,$FA ; BDD1 BD F7 30 30 34 34 F9 FA  ..0044..
        db   $2D,$2D,$30,$30,$F9,$FA,$30,$30 ; BDD9 2D 2D 30 30 F9 FA 30 30  --00..00
        db   $34,$34,$32,$32,$35,$35,$32,$32 ; BDE1 34 34 32 32 35 35 32 32  44225522
        db   $35,$35,$30,$30,$34,$34,$32,$32 ; BDE9 35 35 30 30 34 34 32 32  55004422
        db   $36,$36,$30,$30,$36,$36,$2F,$2F ; BDF1 36 36 30 30 36 36 2F 2F  660066//
        db   $32,$32,$2F,$2F,$2F,$2F,$2D,$2D ; BDF9 32 32 2F 2F 2F 2F 2D 2D  22////--
        db   $30,$30,$2A,$2A,$2A,$2A,$2B,$2B ; BE01 30 30 2A 2A 2A 2A 2B 2B  00****++
        db   $32,$32,$F9,$FA,$2C,$2C,$2B,$2C ; BE09 32 32 F9 FA 2C 2C 2B 2C  22..,,+,
        db   $28,$2D,$2B,$2D,$28,$29,$30,$30 ; BE11 28 2D 2B 2D 28 29 30 30  (-+-()00
        db   $34,$34,$F9,$FA,$2D,$2D,$30,$30 ; BE19 34 34 F9 FA 2D 2D 30 30  44..--00
        db   $F9,$FA,$30,$30,$34,$34,$32,$32 ; BE21 F9 FA 30 30 34 34 32 32  ..004422
        db   $2F,$2F,$32,$32,$37,$37,$30,$30 ; BE29 2F 2F 32 32 37 37 30 30  //227700
        db   $34,$34,$38,$39,$38,$39,$38,$39 ; BE31 34 34 38 39 38 39 38 39  44898989
        db   $3B,$49,$39,$3B,$39,$3B,$39,$3B ; BE39 3B 49 39 3B 39 3B 39 3B  ;I9;9;9;
        db   $3D,$49,$30,$2F,$30,$2F,$30,$2F ; BE41 3D 49 30 2F 30 2F 30 2F  =I0/0/0/
        db   $30,$30,$30,$2F,$2F,$2B,$2B,$2B ; BE49 30 30 30 2F 2F 2B 2B 2B  000//+++
        db   $2A,$2A,$F8,$74,$B6,$00,$FE,$D2 ; BE51 2A 2A F8 74 B6 00 FE D2  **.t....
        db   $BD,$64,$94,$00,$F0,$12,$80,$83 ; BE59 BD 64 94 00 F0 12 80 83  .d......
        db   $00,$36,$80,$33,$83,$03,$3B,$40 ; BE61 00 36 80 33 83 03 3B 40  .6.3..;@
        db   $41,$40,$3B,$38,$FB,$0C,$74,$2D ; BE69 41 40 3B 38 FB 0C 74 2D  A@;8..t-
        db   $7F,$03,$74,$30,$69,$04,$21,$24 ; BE71 7F 03 74 30 69 04 21 24  ..t0i.!$
        db   $74,$54,$94,$00,$96,$E1,$06,$6F ; BE79 74 54 94 00 96 E1 06 6F  tT.....o
        db   $88,$03,$23,$26,$24,$23,$26,$6F ; BE81 88 03 23 26 24 23 26 6F  ..#&$#&o
        db   $98,$00,$78,$88,$03,$2E,$2F,$E1 ; BE89 98 00 78 88 03 2E 2F E1  ..x.../.
        db   $24,$7B,$B0,$00,$94,$00,$E1,$06 ; BE91 24 7B B0 00 94 00 E1 06  ${......
        db   $F7,$21,$20,$22,$21,$20,$22,$21 ; BE99 F7 21 20 22 21 20 22 21  .! "! "!
        db   $29,$2B,$2C,$E1,$24,$2D,$94,$00 ; BEA1 29 2B 2C E1 24 2D 94 00  )+,.$-..
        db   $78,$E1,$06,$F0,$08,$73,$8C,$00 ; BEA9 78 E1 06 F0 08 73 8C 00  x....s..
        db   $C3,$06,$2B,$24,$73,$98,$00,$6F ; BEB1 C3 06 2B 24 73 98 00 6F  ..+$s..o
        db   $8C,$06,$21,$ED,$FF,$71,$BC,$34 ; BEB9 8C 06 21 ED FF 71 BC 34  ..!..q.4
        db   $94,$00,$E1,$06,$F0,$08,$6F,$98 ; BEC1 94 00 E1 06 F0 08 6F 98  ......o.
        db   $06,$24,$6C,$98,$00,$49,$F7,$ED ; BEC9 06 24 6C 98 00 49 F7 ED  .$l..I..
        db   $FF,$23,$94,$00,$F7,$2D,$28,$2A ; BED1 FF 23 94 00 F7 2D 28 2A  .#...-(*
        db   $49,$F8,$94,$0C,$B5,$07,$23,$26 ; BED9 49 F8 94 0C B5 07 23 26  I.....#&
        db   $2B,$94,$00,$FF                 ; BEE1 2B 94 00 FF              +...
Bank17_AnimationPadding:
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEE5 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEED FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEF5 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEFD FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF05 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF0D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF15 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF1D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF25 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF2D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF35 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF3D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF45 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF4D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF55 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF5D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF65 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF6D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF75 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF7D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF85 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF8D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF95 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF9D FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA5 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFAD FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB5 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFBD FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC5 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCD FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF                     ; BFD5 FF FF FF                 ...
Bank17_CompatibilityFooter:
        db   $78,$EE,$DF,$BF,$4C,$8E,$FF,$80 ; BFD8 78 EE DF BF 4C 8E FF 80  x...L...
        db   $44,$52,$41,$47,$4F,$4E,$20,$51 ; BFE0 44 52 41 47 4F 4E 20 51  DRAGON Q
        db   $55,$45,$53,$54,$20,$49,$56,$20 ; BFE8 55 45 53 54 20 49 56 20  UEST IV
        db   $FF,$FF,$00,$00,$48,$04,$01,$0F ; BFF0 FF FF 00 00 48 04 01 0F  ....H...
        db   $07,$9E,$D8,$BF,$D8,$BF,$D8,$BF ; BFF8 07 9E D8 BF D8 BF D8 BF  ........
Bank17_End:
