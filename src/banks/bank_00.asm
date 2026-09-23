; PRG bank $00: ROM file $000010-$00400F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank00_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
; Huffman-compressed text group(s): $00
; Text $0000: The wagon isn't here.
; Text $0001: Not enough MP.
; Text $0002: <49> doesn't have an item.
; Text $0003: <49> is cursed and can't change equipment.
; Text $0004: But there's no escape!
; Text $0005: <49> appears.
; Text $0006: A miss!<43>No damage to <49>.
; Text $0007: A miss!<43>No damage to <49>.<43><40>
; Text $0008: <49> was defeated.
; Text $0009: The foes were defeated.
; Text $000A: <49> disappeared.
; Text $000B: The foes disappeared.
; Text $000C: <49> gains <47> Experience Point<4C>.
; Text $000D: Each gains <47> Experience Point<4C>.
; Text $000E: Spells don't reach <49>!
; Text $000F: The spell bounces off the wall of lights!
; Text $0010: But spells are contained.
; Text $0011: <49> is paralyzed.
; Text $0012: <49> wakes up.
; Text $0013: <49> is asleep.
; Text $0014: <49> is confused.
; Text $0015: <49> expires from exhaustion.<43><40>
; Text $0016: <47> Damage Point<4C> to <49>!
; Text $0017: <49> gets <47> Damage Point<4C>!
; Text $0018: Doesn't work on <49>!
; Text $0019: <49> doesn't pass away!
; Text $001A: But nothing happens!
; Text $001B: <49> passes away!
; Text $001C: <49> explodes into bits!
; Text $001D: <49> runs away!
; Text $001E: <49>'s Party runs away!
; Text $001F: But <49> is asleep!<4B>
Bank00_TextGroup_00:
        db   $F1,$B8,$CD,$2D,$12,$7B,$84,$7D ; 8000 F1 B8 CD 2D 12 7B 84 7D  ...-.{.}
        db   $9F,$5C,$7C,$77,$89,$95,$2F,$81 ; 8008 9F 5C 7C 77 89 95 2F 81  .\|w../.
        db   $CA,$68,$BE,$64,$D3,$7B,$C4,$C5 ; 8010 CA 68 BE 64 D3 7B C4 C5  .h.d.{..
        db   $BD,$90,$47,$D9,$F5,$D6,$90,$CA ; 8018 BD 90 47 D9 F5 D6 90 CA  ..G.....
        db   $7B,$8E,$2D,$EF,$13,$16,$E1,$68 ; 8020 7B 8E 2D EF 13 16 E1 68  {.-....h
        db   $D3,$F2,$1E,$E5,$3F,$74,$6A,$7D ; 8028 D3 F2 1E E5 3F 74 6A 7D  ....?tj}
        db   $9F,$47,$75,$3A,$06,$15,$29,$3C ; 8030 9F 47 75 3A 06 15 29 3C  .Gu:..)<
        db   $F3,$68,$37,$EF,$13,$75,$2F,$9E ; 8038 F3 68 37 EF 13 75 2F 9E  .h7..u/.
        db   $E3,$E3,$B1,$63,$9C,$0A,$35,$F2 ; 8040 E3 E3 B1 63 9C 0A 35 F2  ...c..5.
        db   $2A,$C4,$C5,$97,$CF,$90,$BF,$2E ; 8048 2A C4 C5 97 CF 90 BF 2E  *.......
        db   $F1,$53,$35,$BC,$22,$AA,$8D,$B2 ; 8050 F1 53 35 BC 22 AA 8D B2  .S5."...
        db   $A7,$7A,$B6,$AD,$03,$3C,$E6,$2E ; 8058 A7 7A B6 AD 03 3C E6 2E  .z...<..
        db   $F1,$53,$35,$BC,$22,$AA,$8D,$B2 ; 8060 F1 53 35 BC 22 AA 8D B2  .S5."...
        db   $A7,$7A,$B6,$AD,$03,$3C,$E6,$2E ; 8068 A7 7A B6 AD 03 3C E6 2E  .z...<..
        db   $E8,$DD,$4B,$22,$62,$CD,$29,$6F ; 8070 E8 DD 4B 22 62 CD 29 6F  ..K"b.)o
        db   $42,$01,$5C,$7B,$DE,$2F,$1B,$8C ; 8078 42 01 5C 7B DE 2F 1B 8C  B.\{./..
        db   $84,$82,$CD,$0F,$8D,$E8,$40,$2B ; 8080 84 82 CD 0F 8D E8 40 2B  ......@+
        db   $8F,$7B,$C4,$C5,$BD,$E1,$2F,$9F ; 8088 8F 7B C4 C5 BD E1 2F 9F  .{..../.
        db   $21,$7E,$3D,$EF,$17,$8D,$C6,$42 ; 8090 21 7E 3D EF 17 8D C6 42  !~=....B
        db   $41,$6F,$78,$4B,$E7,$C8,$5F,$8F ; 8098 41 6F 78 4B E7 C8 5F 8F  AoxK.._.
        db   $7B,$C4,$C5,$A8,$5E,$19,$66,$59 ; 80A0 7B C4 C5 A8 5E 19 66 59  {...^.fY
        db   $99,$0C,$BF,$91,$FE,$03,$8C,$6A ; 80A8 99 0C BF 91 FE 03 8C 6A  .......j
        db   $6C,$F0,$DD,$1A,$F7,$89,$90,$B1 ; 80B0 6C F0 DD 1A F7 89 90 B1  l.......
        db   $DF,$50,$BC,$32,$CC,$B3,$32,$19 ; 80B8 DF 50 BC 32 CC B3 32 19  .P.2..2.
        db   $7F,$23,$FC,$07,$18,$D4,$D9,$E1 ; 80C0 7F 23 FC 07 18 D4 D9 E1  .#......
        db   $BA,$35,$EF,$17,$5F,$C8,$84,$0B ; 80C8 BA 35 EF 17 5F C8 84 0B  .5.._...
        db   $7B,$27,$D9,$F7,$C2,$C7,$7C,$C5 ; 80D0 7B 27 D9 F7 C2 C7 7C C5  {'....|.
        db   $56,$2F,$1B,$8C,$5E,$44,$21,$AC ; 80D8 56 2F 1B 8C 5E 44 21 AC  V/..^D!.
        db   $CA,$4E,$30,$5A,$50,$43,$3D,$C6 ; 80E0 CA 4E 30 5A 50 43 3D C6  .N0ZPC=.
        db   $69,$61,$0D,$28,$68,$72,$8B,$B9 ; 80E8 69 61 0D 28 68 72 8B B9  ia.(hr..
        db   $55,$89,$BA,$97,$C5,$E4,$42,$05 ; 80F0 55 89 BA 97 C5 E4 42 05  U.....B.
        db   $97,$E3,$47,$26,$EB,$C3,$1E,$F7 ; 80F8 97 E3 47 26 EB C3 1E F7  ..G&....
        db   $89,$8B,$70,$B7,$95,$FA,$C2,$B4 ; 8100 89 8B 70 B7 95 FA C2 B4  ..p.....
        db   $40,$F7,$BC,$4C,$59,$A5,$66,$0B ; 8108 40 F7 BC 4C 59 A5 66 0B  @..LY.f.
        db   $27,$CF,$78,$98,$B7,$0B,$29,$40 ; 8110 27 CF 78 98 B7 0B 29 40  '.x...)@
        db   $0F,$3D,$E2,$62,$DC,$2D,$1C,$9A ; 8118 0F 3D E2 62 DC 2D 1C 9A  .=.b.-..
        db   $09,$21,$EF,$78,$98,$B0,$65,$FC ; 8120 09 21 EF 78 98 B0 65 FC  .!.x..e.
        db   $F3,$E0,$B2,$1F,$9B,$70,$65,$EE ; 8128 F3 E0 B2 1F 9B 70 65 EE  .....pe.
        db   $A9,$27,$E4,$9F,$74,$6E,$A5,$91 ; 8130 A9 27 E4 9F 74 6E A5 91  .'..tn..
        db   $32,$CD,$D2,$AD,$AB,$40,$D4,$D9 ; 8138 32 CD D2 AD AB 40 D4 D9  2....@..
        db   $E1,$BA,$35,$CF,$39,$8A,$AC,$4C ; 8140 E1 BA 35 CF 39 8A AC 4C  ..5.9..L
        db   $5A,$80,$E5,$99,$66,$E9,$56,$D5 ; 8148 5A 80 E5 99 66 E9 56 D5  Z...f.V.
        db   $A0,$6A,$6C,$F0,$DD,$1A,$D5,$8B ; 8150 A0 6A 6C F0 DD 1A D5 8B  .jl.....
        db   $A5,$90,$47,$D9,$F3,$53,$F6,$7A ; 8158 A5 90 47 D9 F3 53 F6 7A  ..G..S.z
        db   $4F,$31,$55,$89,$8B,$7B,$20,$8F ; 8160 4F 31 55 89 8B 7B 20 8F  O1U..{ .
        db   $B3,$EF,$2A,$45,$95,$A5,$AE,$AC ; 8168 B3 EF 2A 45 95 A5 AE AC  ..*E....
        db   $4D,$D4,$BE,$39,$7B,$F0,$E8,$D7 ; 8170 4D D4 BE 39 7B F0 E8 D7  M..9{...
        db   $5F,$3E,$41,$95,$58,$98,$B7,$95 ; 8178 5F 3E 41 95 58 98 B7 95  _>A.X...
        db   $22,$05,$95,$A5,$AE,$AC,$4C,$58 ; 8180 22 05 95 A5 AE AC 4C 58  ".....LX
        db   $32,$FE,$61,$3E,$82,$DC,$37,$9D ; 8188 32 FE 61 3E 82 DC 37 9D  2.a>..7.
        db   $67,$8E,$55,$62,$62,$DF,$49,$96 ; 8190 67 8E 55 62 62 DF 49 96  g.Ubb.I.
        db   $56,$96,$BA,$B1,$31,$76,$2D,$4D ; 8198 56 96 BA B1 31 76 2D 4D  V...1v-M
        db   $5F,$BD,$7B,$E9,$32,$CA,$D2,$D7 ; 81A0 5F BD 7B E9 32 CA D2 D7  _.{.2...
        db   $56,$26,$EA,$5F,$31,$6E,$16,$52 ; 81A8 56 26 EA 5F 31 6E 16 52  V&._1n.R
        db   $80,$1E,$6A,$A2,$62,$00         ; 81B0 80 1E 6A A2 62 00        ..j.b.
; Huffman-compressed text group(s): $01
; Text $0020: But <49> is paralyzed!<4B>
; Text $0021: But <49> is confused.<4B>
; Text $0022: <49>'s body emanates eerie lights!<4B>
; Text $0023: <49> rolls over!
; Text $0024: <49> is shaking with laughter!
; Text $0025: <49> is writhing after tripping.
; Text $0026: <49> can't get out of the hole!<4B>
; Text $0027: <49> freezes in fear!<4B>
; Text $0028: <49>:'Can I have some coins,<49>? Huh? Isn't this a casino?'<43><4B><4B><4B>
; Text $0029: <49> scrambles into the wagon!
; Text $002A: <49> shoves <49>'s ghost into the wagon!<4B>
; Text $002B: <49> jumps out of the wagon!
; Text $002C: <49> drags out <49>'s ghost from the wagon.<4B>
; Text $002D: <49> holds the <48>!
; Text $002E: <49> is on guard!
; Text $002F: <49> comes to help!
; Text $0030: <49> calls for reinforcements!
; Text $0031: But no help arrives!
; Text $0032: <49> is assessing the situation.
; Text $0033: <49> is flustered.
; Text $0034: <49> is building up power.
; Text $0035: <49> takes a deep breath!
; Text $0036: <49> meditates silently.<4B><4B>
; Text $0037: <49>'s wounds heal rapidly!<4B>
; Text $0038: <49>'s expression changes!<4B>
; Text $0039: <49> gets serious!<4B>
; Text $003A: <49> looks scared!<4B>
; Text $003B: <49> uses up its last ounce of power!<4B>
; Text $003C: !? The <49>s...<4B>
; Text $003D: <49> dances a strange dance!
; Text $003E: <49>'s MP is lowered by <47> point<4C>!
; Text $003F: Freezing waves shoot out from <49>'s fingers!<4B>
Bank00_TextGroup_01:
        db   $6E,$A5,$F3,$16,$E1,$6F,$2B,$F5 ; 81B6 6E A5 F3 16 E1 6F 2B F5  n....o+.
        db   $85,$68,$81,$ED,$54,$4C,$4D,$D4 ; 81BE 85 68 81 ED 54 4C 4D D4  .h..TLM.
        db   $BE,$62,$DC,$2D,$1C,$9A,$09,$21 ; 81C6 BE 62 DC 2D 1C 9A 09 21  .b.-...!
        db   $EF,$74,$4C,$4C,$5D,$8B,$59,$9F ; 81CE EF 74 4C 4C 5D 8B 59 9F  .tLL].Y.
        db   $6B,$C2,$D5,$35,$70,$58,$0F,$F0 ; 81D6 6B C2 D5 35 70 58 0F F0  k..5pX..
        db   $68,$72,$8B,$B9,$55,$44,$C4,$C5 ; 81DE 68 72 8B B9 55 44 C4 C5  hr..UD..
        db   $BF,$30,$81,$69,$A4,$3F,$56,$26 ; 81E6 BF 30 81 69 A4 3F 56 26  .0.i.?V&
        db   $2D,$C2,$C5,$75,$67,$C3,$A3,$35 ; 81EE 2D C2 C5 75 67 C3 A3 35  -..ug..5
        db   $C7,$BE,$82,$A6,$8B,$B8,$FD,$58 ; 81F6 C7 BE 82 A6 8B B8 FD 58  .......X
        db   $98,$B7,$0B,$35,$FE,$3D,$F8,$74 ; 81FE 98 B7 0B 35 FE 3D F8 74  ...5.=.t
        db   $65,$41,$C7,$F3,$FF,$9E,$7C,$F0 ; 8206 65 41 C7 F3 FF 9E 7C F0  eA....|.
        db   $E8,$EF,$13,$16,$8D,$4F,$B3,$EA ; 820E E8 EF 13 16 8D 4F B3 EA  .....O..
        db   $03,$E9,$4B,$E9,$43,$3D,$C6,$BC ; 8216 03 E9 4B E9 43 3D C6 BC  ..K.C=..
        db   $C0,$55,$44,$C4,$C5,$90,$F8,$08 ; 821E C0 55 44 C4 C5 90 F8 08  .UD.....
        db   $80,$5B,$87,$90,$0B,$FA,$A8,$98 ; 8226 80 5B 87 90 0B FA A8 98  .[......
        db   $98,$BA,$7E,$0D,$E5,$3D,$63,$5D ; 822E 98 BA 7E 0D E5 3D 63 5D  ..~..=c]
        db   $69,$0C,$53,$68,$D1,$CF,$0C,$9B ; 8236 69 0C 53 68 D1 CF 0C 9B  i.Sh....
        db   $31,$53,$E4,$74,$DE,$9F,$58,$23 ; 823E 31 53 E4 74 DE 9F 58 23  1S.t..X#
        db   $EC,$F9,$EF,$C2,$CB,$A3,$52,$E1 ; 8246 EC F9 EF C2 CB A3 52 E1  ......R.
        db   $CD,$3D,$42,$36,$89,$44,$A2,$62 ; 824E CD 3D 42 36 89 44 A2 62  .=B6.D.b
        db   $62,$C5,$1F,$D6,$DB,$30,$05,$B8 ; 8256 62 C5 1F D6 DB 30 05 B8  b....0..
        db   $6F,$39,$EE,$33,$4B,$44,$9D,$58 ; 825E 6F 39 EE 33 4B 44 9D 58  o9.3KD.X
        db   $98,$B1,$5E,$69,$02,$CC,$5D,$8B ; 8266 98 B1 5E 69 02 CC 5D 8B  ..^i..].
        db   $51,$79,$27,$DC,$37,$9C,$F7,$19 ; 826E 51 79 27 DC 37 9C F7 19  Qy'.7...
        db   $A5,$A2,$4E,$AA,$26,$26,$2C,$DF ; 8276 A5 A2 4E AA 26 26 2C DF  ..N.&&,.
        db   $26,$DF,$25,$A5,$2F,$A5,$0C,$F7 ; 827E 26 DF 25 A5 2F A5 0C F7  &.%./...
        db   $19,$A5,$A2,$4E,$AC,$4C,$5B,$DF ; 8286 19 A5 A2 4E AC 4C 5B DF  ...N.L[.
        db   $AD,$05,$A5,$2F,$98,$BB,$16,$A2 ; 828E AD 05 A5 2F 98 BB 16 A2  .../....
        db   $F2,$4F,$90,$FC,$DB,$9E,$E3,$34 ; 8296 F2 4F 90 FC DB 9E E3 34  .O.....4
        db   $B4,$49,$F7,$44,$C4,$C5,$AF,$30 ; 829E B4 49 F7 44 C4 C5 AF 30  .I.D...0
        db   $F4,$B3,$DC,$66,$E1,$56,$26,$2D ; 82A6 F4 B3 DC 66 E1 56 26 2D  ...f.V&-
        db   $C2,$D2,$7A,$84,$AF,$FD,$AB,$13 ; 82AE C2 D2 7A 84 AF FD AB 13  ..z.....
        db   $16,$8E,$6D,$05,$9E,$75,$C4,$3C ; 82B6 16 8E 6D 05 9E 75 C4 3C  ..m..u.<
        db   $D5,$89,$8B,$46,$B0,$81,$64,$27 ; 82BE D5 89 8B 46 B0 81 64 27  ...F..d'
        db   $FB,$E3,$86,$84,$FE,$31,$68,$37 ; 82C6 FB E3 86 84 FE 31 68 37  .....1h7
        db   $2A,$B1,$37,$52,$F8,$E7,$5C,$43 ; 82CE 2A B1 37 52 F8 E7 5C 43  *.7R..\C
        db   $CE,$5F,$FF,$94,$81,$55,$89,$8B ; 82D6 CE 5F FF 94 81 55 89 8B  ._...U..
        db   $70,$B2,$91,$02,$2E,$1D,$19,$EE ; 82DE 70 B2 91 02 2E 1D 19 EE  p.......
        db   $31,$71,$D2,$AF,$C9,$3E,$F1,$31 ; 82E6 31 71 D2 AF C9 3E F1 31  1q...>.1
        db   $6E,$16,$42,$09,$27,$1F,$1E,$F7 ; 82EE 6E 16 42 09 27 1F 1E F7  n.B.'...
        db   $89,$8B,$70,$B5,$94,$F2,$1E,$F0 ; 82F6 89 8B 70 B5 94 F2 1E F0  ..p.....
        db   $E8,$C9,$F3,$BC,$CB,$43,$FD,$E2 ; 82FE E8 C9 F3 BC CB 43 FD E2  .....C..
        db   $62,$CE,$AC,$C1,$65,$DE,$81,$E7 ; 8306 62 CE AC C1 65 DE 81 E7  b...e...
        db   $59,$F8,$57,$BD,$58,$98,$B5,$A3 ; 830E 59 F8 57 BD 58 98 B5 A3  Y.W.X...
        db   $DE,$3A,$B8,$2C,$5C,$80,$37,$85 ; 8316 DE 3A B8 2C 5C 80 37 85  .:.,\.7.
        db   $7D,$D1,$28,$98,$98,$BB,$16,$6A ; 831E 7D D1 28 98 98 BB 16 6A  }.(....j
        db   $52,$7E,$96,$B8,$58,$6F,$AF,$9E ; 8326 52 7E 96 B8 58 6F AF 9E  R~..Xo..
        db   $7B,$0A,$EA,$A2,$62,$62,$EC,$58 ; 832E 7B 0A EA A2 62 62 EC 58  {...bb.X
        db   $32,$FE,$7E,$08,$B9,$27,$A3,$BA ; 8336 32 FE 7E 08 B9 27 A3 BA  2.~..'..
        db   $9D,$00,$AA,$A2,$62,$62,$D4,$07 ; 833E 9D 00 AA A2 62 62 D4 07  ....bb..
        db   $2C,$43,$FC,$94,$95,$54,$4C,$4C ; 8346 2C 43 FC 94 95 54 4C 4C  ,C...TLL
        db   $5A,$13,$2C,$CB,$14,$6B,$F1,$ED ; 834E 5A 13 2C CB 14 6B F1 ED  Z.,..k..
        db   $54,$4C,$4C,$59,$24,$0B,$27,$CE ; 8356 54 4C 4C 59 24 0B 27 CE  TLLY$.'.
        db   $E3,$96,$82,$93,$E9,$49,$C6,$34 ; 835E E3 96 82 93 E9 49 C6 34  .....I.4
        db   $A1,$BC,$CB,$43,$F5,$51,$31,$55 ; 8366 A1 BC CB 43 F5 51 31 55  ...C.Q1U
        db   $A7,$DE,$37,$19,$88,$BA,$11,$31 ; 836E A7 DE 37 19 88 BA 11 31  ..7....1
        db   $31,$6F,$54,$E3,$05,$97,$13,$FD ; 8376 31 6F 54 E3 05 97 13 FD  1oT.....
        db   $4E,$81,$BD,$53,$8C,$55,$89,$8B ; 837E 4E 81 BD 53 8C 55 89 8B  N..S.U..
        db   $B1,$66,$4D,$37,$70,$B4,$25,$A1 ; 8386 B1 66 4D 37 70 B4 25 A1  .fM7p.%.
        db   $F1,$EE,$B3,$5E,$65,$9B,$CC,$F0 ; 838E F1 EE B3 5E 65 9B CC F0  ...^e...
        db   $DD,$1A,$D5,$89,$96,$FC,$04,$47 ; 8396 DD 1A D5 89 96 FC 04 47  .......G
        db   $0E,$8C,$D2,$D2,$05,$8A,$F3,$2F ; 839E 0E 8C D2 D2 05 8A F3 2F  ......./
        db   $A5,$2F,$90,$FC,$DB,$98,$BB,$16 ; 83A6 A5 2F 90 FC DB 98 BB 16  ./......
        db   $43,$87,$40,$F9,$55,$44,$C4     ; 83AE 43 87 40 F9 55 44 C4     C.@.UD.
; Huffman-compressed text group(s): $02
; Text $0040:
; Text $0041: Turns into <49>!
; Text $0042: <49> is jerked away!
; Text $0043: <49> is defeated!
; Text $0044: <49> tries a body attack!<4B>
; Text $0045: <49> gives a hideous,shrieking roar!<4B>
; Text $0046: It doesn't work on <49>!
; Text $0047: <49> cowers!
; Text $0048: Eerie mists stream out of <49> and engulf the area!<4B><4B>
; Text $0049: <49> is attacked but is saved by <49>!<4B>
; Text $004A: <49> falls unconscious!
; Text $004B: But nothing happens here!
; Text $004C: <49> attacks!
; Text $004D: A terrific blow!
; Text $004E: A terrible blow!
; Text $004F: The Poison Needle penetrates <49>'s vital spot!<4B>
; Text $0050: A hypnotic song is heard from somewhere....
; Text $0051: A bolt of lightning shoots out from the staff!<4B>
; Text $0052: Fireballs gush out from the staff!<4B>
; Text $0053: Eerie mists surround the enemy!<4B>
; Text $0054: A fireball shoots out from the tip of the staff!<4B>
; Text $0055: The sword gives a ghastly groan!<4B>
; Text $0056: Blinding lights shine upon <49>.<4B>
; Text $0057: <49> becomes more confused!
; Text $0058: But the situation hasn't changed at all!
; Text $0059: <49> doesn't revive!
; Text $005A: <49> dodges the breath!
; Text $005B: But pulled back by a strange force!<4B>
; Text $005C: A blizzard roars out of the sword!
; Text $005D: A blaze streams out of the sword!
; Text $005E: Mysterious sounds reverberate!
; Text $005F: Strange smells fill the area!
Bank00_TextGroup_02:
        db   $8B,$C5,$3F,$32,$DC,$37,$9C,$C5 ; 83B5 8B C5 3F 32 DC 37 9C C5  ..?2.7..
        db   $56,$26,$2D,$C2,$CD,$F0,$FB,$31 ; 83BD 56 26 2D C2 CD F0 FB 31  V&-....1
        db   $EE,$56,$96,$BA,$B1,$31,$6E,$16 ; 83C5 EE 56 96 BA B1 31 6E 16  .V...1n.
        db   $F4,$20,$15,$C7,$B5,$62,$62,$CF ; 83CD F4 20 15 C7 B5 62 62 CF  . ...bb.
        db   $FE,$02,$CB,$AC,$CF,$B5,$E5,$77 ; 83D5 FE 02 CB AC CF B5 E5 77  .......w
        db   $58,$D9,$D5,$44,$C4,$C5,$A8,$E5 ; 83DD 58 D9 D5 44 C4 C5 A8 E5  X..D....
        db   $20,$59,$75,$F9,$E8,$94,$93,$62 ; 83E5 20 59 75 F9 E8 94 93 62   Yu....b
        db   $BF,$F8,$19,$F0,$E8,$DF,$95,$FD ; 83ED BF F8 19 F0 E8 DF 95 FD  ........
        db   $54,$4C,$56,$1F,$7B,$20,$8F,$B3 ; 83F5 54 4C 56 1F 7B 20 8F B3  TLV.{ ..
        db   $E6,$A7,$EC,$F4,$9E,$62,$AB,$13 ; 83FD E6 A7 EC F4 9E 62 AB 13  .....b..
        db   $16,$8E,$5A,$1F,$2A,$B1,$32,$07 ; 8405 16 8E 5A 1F 2A B1 32 07  ..Z.*.2.
        db   $F8,$35,$BC,$27,$2C,$4F,$F0,$B6 ; 840D F8 35 BC 27 2C 4F F0 B6  .5.',O..
        db   $E9,$4B,$E9,$43,$31,$65,$3F,$70 ; 8415 E9 4B E9 43 31 65 3F 70  .K.C1e?p
        db   $3A,$13,$04,$33,$DC,$65,$F8,$5A ; 841D 3A 13 04 33 DC 65 F8 5A  :..3.e.Z
        db   $A8,$94,$4C,$4C,$5B,$85,$95,$DD ; 8425 A8 94 4C 4C 5B 85 95 DD  ..LL[...
        db   $63,$66,$3D,$D6,$52,$FB,$85,$89 ; 842D 63 66 3D D6 52 FB 85 89  cf=.R...
        db   $69,$0F,$75,$9A,$F3,$15,$54,$4C ; 8435 69 0F 75 9A F3 15 54 4C  i.u...TL
        db   $4C,$59,$05,$84,$0B,$24,$E3,$93 ; 843D 4C 59 05 84 0B 24 E3 93  LY...$..
        db   $28,$F9,$29,$2A,$B1,$37,$52,$F8 ; 8445 28 F9 29 2A B1 37 52 F8  (.)*.7R.
        db   $E5,$EF,$C3,$A3,$5D,$7C,$F9,$06 ; 844D E5 EF C3 A3 5D 7C F9 06  ....]|..
        db   $5A,$E3,$E2,$AC,$4C,$59,$5D,$D6 ; 8455 5A E3 E2 AC 4C 59 5D D6  Z...LY].
        db   $36,$65,$56,$2A,$66,$71,$FF,$F1 ; 845D 36 65 56 2A 66 71 FF F1  6eV*fq..
        db   $0E,$47,$AC,$C2,$5A,$AB,$15,$33 ; 8465 0E 47 AC C2 5A AB 15 33  .G..Z..3
        db   $38,$FF,$F9,$66,$03,$59,$84,$B5 ; 846D 38 FF F9 66 03 59 84 B5  8..f.Y..
        db   $56,$2F,$1B,$8D,$4D,$9E,$14,$9E ; 8475 56 2F 1B 8D 4D 9E 14 9E  V/..M...
        db   $65,$01,$EC,$06,$F2,$0C,$3F,$D5 ; 847D 65 01 EC 06 F2 0C 3F D5  e.....?.
        db   $C1,$66,$2E,$C5,$A9,$71,$D6,$18 ; 8485 C1 66 2E C5 A9 71 D6 18  .f...q..
        db   $BC,$CB,$D5,$44,$C5,$4C,$D7,$AF ; 848D BC CB D5 44 C5 4C D7 AF  ...D.L..
        db   $C9,$CB,$F2,$3C,$52,$74,$6E,$16 ; 8495 C9 CB F2 3C 52 74 6E 16  ...<Rtn.
        db   $B8,$5F,$FB,$90,$FC,$DB,$8A,$6D ; 849D B8 5F FB 90 FC DB 8A 6D  ._.....m
        db   $0D,$5C,$7C,$74,$77,$8A,$99,$AC ; 84A5 0D 5C 7C 74 77 8A 99 AC  .\|tw...
        db   $CC,$1F,$4A,$1A,$1C,$A2,$EE,$7C ; 84AD CC 1F 4A 1A 1C A2 EE 7C  ..J....|
        db   $3A,$31,$5E,$65,$CB,$4A,$5F,$21 ; 84B5 3A 31 5E 65 CB 4A 5F 21  :1^e.J_!
        db   $F9,$B7,$3D,$C6,$27,$54,$10,$AA ; 84BD F9 B7 3D C6 27 54 10 AA  ..=.'T..
        db   $89,$89,$96,$F3,$E2,$CA,$C2,$05 ; 84C5 89 89 96 F3 E2 CA C2 05  ........
        db   $A8,$49,$5F,$4A,$5F,$21,$F9,$B7 ; 84CD A8 49 5F 4A 5F 21 F9 B7  .I_J_!..
        db   $3D,$C6,$27,$54,$10,$AA,$89,$89 ; 84D5 3D C6 27 54 10 AA 89 89  =.'T....
        db   $90,$3F,$C1,$AD,$E1,$39,$62,$4F ; 84DD 90 3F C1 AD E1 39 62 4F  .?...9bO
        db   $FF,$29,$3F,$73,$DC,$60,$62,$DA ; 84E5 FF 29 3F 73 DC 60 62 DA  .)?s.`b.
        db   $EA,$A2,$62,$A6,$64,$39,$F1,$65 ; 84ED EA A2 62 A6 64 39 F1 65  ..b.d9.e
        db   $61,$0C,$57,$99,$72,$D2,$97,$C8 ; 84F5 61 0C 57 99 72 D2 97 C8  a.W.r...
        db   $7E,$6D,$CF,$71,$9F,$9E,$74,$A1 ; 84FD 7E 6D CF 71 9F 9E 74 A1  ~m.q..t.
        db   $9E,$E3,$13,$AA,$08,$55,$44,$C5 ; 8505 9E E3 13 AA 08 55 44 C5  .....UD.
        db   $E3,$71,$89,$A9,$FF,$BA,$8E,$52 ; 850D E3 71 89 A9 FF BA 8E 52  .q.....R
        db   $05,$97,$51,$75,$27,$85,$7A,$8F ; 8515 05 97 51 75 27 85 7A 8F  ..Qu'.z.
        db   $CA,$9D,$54,$4C,$4D,$D8,$70,$FD ; 851D CA 9D 54 4C 4D D8 70 FD  ..TLM.p.
        db   $E1,$D1,$A1,$CA,$2E,$E5,$8A,$FC ; 8525 E1 D1 A1 CA 2E E5 8A FC  ........
        db   $31,$93,$E6,$4F,$31,$77,$44,$C4 ; 852D 31 93 E6 4F 31 77 44 C4  1..O1wD.
        db   $C5,$AC,$88,$E6,$D0,$5A,$D9,$F8 ; 8535 C5 AC 88 E6 D0 5A D9 F8  .....Z..
        db   $D1,$C9,$A0,$92,$1E,$D5,$89,$BA ; 853D D1 C9 A0 92 1E D5 89 BA  ........
        db   $97,$CF,$71,$8B,$8E,$95,$7E,$49 ; 8545 97 CF 71 8B 8E 95 7E 49  ..q...~I
        db   $EB,$A9,$1F,$67,$D1,$DD,$4E,$81 ; 854D EB A9 1F 67 D1 DD 4E 81  ...g..N.
        db   $EE,$57,$CB,$08,$55,$89,$8B,$7B ; 8555 EE 57 CB 08 55 89 8B 7B  .W..U..{
        db   $20,$8F,$B3,$EF,$8A,$5C,$A4,$2A ; 855D 20 8F B3 EF 8A 5C A4 2A   ....\.*
        db   $C4,$C5,$BD,$9F,$68,$05,$9E,$E3 ; 8565 C4 C5 BD 9F 68 05 9E E3  ....h...
        db   $59,$F8,$57,$BD,$58,$9B,$A9,$7D ; 856D 59 F8 57 BD 58 9B A9 7D  Y.W.X..}
        db   $E5,$30,$80,$F7,$59,$58,$D9,$EB ; 8575 E5 30 80 F7 59 58 D9 EB  .0..YX..
        db   $35,$E5,$C4,$FF,$53,$A0,$64,$27 ; 857D 35 E5 C4 FF 53 A0 64 27  5...S.d'
        db   $F1,$8A,$A8,$98,$A9,$9A,$CC,$38 ; 8585 F1 8A A8 98 A9 9A CC 38  .......8
        db   $88,$44,$2F,$FD,$DF,$95,$F9,$69 ; 858D 88 44 2F FD DF 95 F9 69  .D/....i
        db   $4B,$E9,$43,$3D,$C6,$26,$A7,$FE ; 8595 4B E9 43 3D C6 26 A7 FE  K.C=.&..
        db   $D5,$8A,$99,$AC,$C1,$51,$03,$13 ; 859D D5 8A 99 AC C1 51 03 13  .....Q..
        db   $FC,$2D,$A5,$A5,$2F,$A5,$0C,$F7 ; 85A5 FC 2D A5 A5 2F A5 0C F7  .-../...
        db   $18,$9A,$9F,$FB,$56,$26,$4D,$64 ; 85AD 18 9A 9F FB 56 26 4D 64  ....V&Md
        db   $E3,$FC,$94,$96,$29,$49,$FA,$5B ; 85B5 E3 FC 94 96 29 49 FA 5B  ....)I.[
        db   $E2,$90,$FD,$91,$F5,$71,$56,$2E ; 85BD E2 90 FD 91 F5 71 56 2E  .....qV.
        db   $BB,$FD,$4E,$81,$8A,$D1,$08,$16 ; 85C5 BB FD 4E 81 8A D1 08 16  ..N.....
        db   $43,$90,$86,$7B,$8C,$BF,$0B,$56 ; 85CD 43 90 86 7B 8C BF 0B 56  C..{...V
        db   $20                             ; 85D5 20
; Huffman-compressed text group(s): $03
; Text $0060: <44>
; Text $0061: <49> didn't get it!
; Text $0062: <49> eludes nimbly!
; Text $0063: <49> wasn't watching!
; Text $0064: <49> jumps back!
; Text $0065: But is jumped over!
; Text $0066: <49> shoves <49> into the wagon!
; Text $0067: <49> drags out <49> from the wagon!
; Text $0068: <49> bumps into the ceiling!
; Text $0069: <49>'s Party bumps into the ceiling!
; Text $006A: Alena defeated <49>!
; Text $006B: <49> was defeated.
; Text $006C: <49> is brought down!
; Text $006D: But <49> is in the wagon!
; Text $006E: But <49> isn't alive!
; Text $006F: There's no one in the wagon!
; Text $0070: <49> starts reading Tarot Cards!
; Text $0071: But <49> can't read Tarot Cards!
; Text $0072: Nara draws the Card of <50>!
; Text $0073: The blinding lights of Justice shine upon the enemy!
; Text $0074: <49>'s morale is boosted!
; Text $0075: Evil mists pour from the Card and engulf the area!
; Text $0076: Glittering Thor attacks Nara's group!
; Text $0077: <49> draws the Card of Perfection!
; Text $0078: The moonlight illuminates the enemy!
; Text $0079: The sunlight shines upon the allies!
; Text $007A: A blood-freezing chill attacks Nara!
; Text $007B: The mirror reflects the image of an iron chunk!
; Text $007C: Together,<49>'s Party starts a raging blaze!
; Text $007D: Together,<49>'s Party summons mysterious mists!
; Text $007E: 'Oh,calling it quits? You don't mind losing your wager?'
; Text $007F: 'This battle is terminated.'
Bank00_TextGroup_03:
        db   $63,$89,$8B,$7B,$CF,$4F,$B3,$EA ; 85D6 63 89 8B 7B CF 4F B3 EA  c..{.O..
        db   $03,$EE,$3D,$58,$98,$B0,$82,$7D ; 85DE 03 EE 3D 58 98 B0 82 7D  ..=X...}
        db   $05,$8F,$96,$D9,$85,$75,$62,$62 ; 85E6 05 8F 96 D9 85 75 62 62  .....ubb
        db   $CD,$29,$1F,$67,$CD,$2B,$C7,$7E ; 85EE CD 29 1F 67 CD 2B C7 7E  .).g.+.~
        db   $1D,$15,$62,$62,$CD,$F2,$6D,$F2 ; 85F6 1D 15 62 62 CD F2 6D F2  ..bb..m.
        db   $5A,$CA,$C6,$CE,$AC,$4D,$D4,$BE ; 85FE 5A CA C6 CE AC 4D D4 BE  Z....M..
        db   $E1,$66,$F9,$36,$F9,$1E,$E9,$A4 ; 8606 E1 66 F9 36 F9 1E E9 A4  .f.6....
        db   $3F,$56,$26,$2C,$57,$9A,$40,$B3 ; 860E 3F 56 26 2C 57 9A 40 B3  ?V&,W.@.
        db   $16,$E1,$BC,$E7,$B8,$CD,$2D,$12 ; 8616 16 E1 BC E7 B8 CD 2D 12  ......-.
        db   $75,$62,$62,$DE,$FD,$68,$2D,$29 ; 861E 75 62 62 DE FD 68 2D 29  ubb..h-)
        db   $7C,$C5,$90,$FC,$DB,$9E,$E3,$34 ; 8626 7C C5 90 FC DB 9E E3 34  |......4
        db   $B4,$49,$D5,$89,$8B,$59,$4D,$BE ; 862E B4 49 D5 89 8B 59 4D BE  .I...YM.
        db   $4B,$70,$DE,$73,$DC,$68,$C7,$21 ; 8636 4B 70 DE 73 DC 68 C7 21  Kp.s.h.!
        db   $C3,$A2,$AC,$4C,$5D,$8B,$53,$57 ; 863E C3 A2 AC 4C 5D 8B 53 57  ...L].SW
        db   $EF,$5E,$B2,$9B,$7C,$96,$E1,$BC ; 8646 EF 5E B2 9B 7C 96 E1 BC  .^..|...
        db   $E7,$B8,$D1,$8E,$43,$87,$45,$58 ; 864E E7 B8 D1 8E 43 87 45 58  ....C.EX
        db   $A9,$90,$06,$BB,$D0,$80,$57,$1E ; 8656 A9 90 06 BB D0 80 57 1E  ......W.
        db   $E6,$2A,$B1,$31,$66,$94,$B7,$A1 ; 865E E6 2A B1 31 66 94 B7 A1  .*.1f...
        db   $00,$AE,$3D,$EF,$13,$16,$E1,$6B ; 8666 00 AE 3D EF 13 16 E1 6B  ..=....k
        db   $3F,$94,$D1,$77,$DE,$CB,$47,$56 ; 866E 3F 94 D1 77 DE CB 47 56  ?..w..GV
        db   $26,$EA,$5F,$31,$6E,$16,$E1,$E7 ; 8676 26 EA 5F 31 6E 16 E1 E7  &._1n...
        db   $B8,$CD,$2D,$12,$75,$62,$6E,$A5 ; 867E B8 CD 2D 12 75 62 6E A5  ..-.ubn.
        db   $F3,$16,$E1,$1F,$67,$CB,$0E,$52 ; 8686 F3 16 E1 1F 67 CB 0E 52  ....g..R
        db   $15,$62,$F1,$B8,$F8,$EC,$58,$E7 ; 868E 15 62 F1 B8 F8 EC 58 E7  .b....X.
        db   $49,$8D,$C3,$CF,$71,$9A,$5A,$24 ; 8696 49 8D C3 CF 71 9A 5A 24  I...q.Z$
        db   $EA,$C4,$C5,$89,$D7,$EE,$5B,$E1 ; 869E EA C4 C5 89 D7 EE 5B E1  ......[.
        db   $7D,$E1,$D1,$BC,$57,$F2,$F9,$BC ; 86A6 7D E1 D1 BC 57 F2 F9 BC  }...W...
        db   $BF,$F4,$AA,$C4,$DD,$4B,$E6,$2D ; 86AE BF F4 AA C4 DD 4B E6 2D  .....K.-
        db   $1A,$9F,$67,$DF,$0B,$EE,$F1,$5F ; 86B6 1A 9F 67 DF 0B EE F1 5F  ..g...._
        db   $CB,$E6,$F2,$FF,$D2,$AB,$13,$29 ; 86BE CB E6 F2 FF D2 AB 13 29  .......)
        db   $7E,$BB,$DF,$AB,$45,$9E,$E3,$37 ; 86C6 7E BB DF AB 45 9E E3 37  ~...E..7
        db   $97,$FE,$E9,$43,$54,$BA,$AC,$5E ; 86CE 97 FE E9 43 54 BA AC 5E  ...CT..^
        db   $37,$1A,$CC,$38,$7E,$F0,$E8,$D0 ; 86D6 37 1A CC 38 7E F0 E8 D0  7..8~...
        db   $E5,$17,$72,$D2,$86,$46,$82,$49 ; 86DE E5 17 72 D2 86 46 82 49  ..r..F.I
        db   $F9,$18,$C5,$7E,$18,$C9,$F3,$27 ; 86E6 F9 18 C5 7E 18 C9 F3 27  ...~...'
        db   $9E,$E3,$03,$16,$D7,$56,$26,$2E ; 86EE 9E E3 03 16 D7 56 26 2E  .....V&.
        db   $C5,$AD,$9F,$AC,$06,$E1,$6B,$33 ; 86F6 C5 AD 9F AC 06 E1 6B 33  ......k3
        db   $24,$E3,$DA,$B1,$32,$29,$72,$1A ; 86FE 24 E3 DA B1 32 29 72 1A  $...2)r.
        db   $DE,$13,$96,$F3,$29,$FE,$43,$F3 ; 8706 DE 13 96 F3 29 FE 43 F3  ....).C.
        db   $6E,$7B,$8C,$DE,$5F,$FB,$94,$FD ; 870E 6E 7B 8C DE 5F FB 94 FD  n{.._...
        db   $C0,$E8,$4C,$10,$CF,$71,$97,$E1 ; 8716 C0 E8 4C 10 CF 71 97 E1  ..L..q..
        db   $6A,$C5,$52,$43,$8E,$E3,$FC,$3A ; 871E 6A C5 52 43 8E E3 FC 3A  j.RC...:
        db   $37,$8D,$E7,$F9,$5D,$D6,$36,$65 ; 8726 37 8D E7 F9 5D D6 36 65  7...].6e
        db   $99,$4B,$F5,$EC,$5A,$8F,$CA,$7C ; 872E 99 4B F5 EC 5A 8F CA 7C  .K..Z..|
        db   $D5,$89,$8B,$7B,$F5,$68,$B3,$DC ; 8736 D5 89 8B 7B F5 68 B3 DC  ...{.h..
        db   $66,$F2,$FF,$DD,$28,$6A,$68,$FA ; 873E 66 F2 FF DD 28 6A 68 FA  f...(jh.
        db   $02,$37,$E4,$9D,$58,$BC,$6E,$35 ; 8746 02 37 E4 9D 58 BC 6E 35  .7..X.n5
        db   $B3,$27,$0E,$51,$77,$DC,$84,$13 ; 874E B3 27 0E 51 77 DC 84 13  .'.Qw...
        db   $6F,$0D,$5C,$16,$7B,$8C,$0C,$5B ; 8756 6F 0D 5C 16 7B 8C 0C 5B  o.\.{..[
        db   $5D,$58,$BC,$6E,$31,$24,$E1,$CA ; 875E 5D 58 BC 6E 31 24 E1 CA  ]X.n1$..
        db   $2E,$F8,$AF,$C3,$05,$93,$E6,$4F ; 8766 2E F8 AF C3 05 93 E6 4F  .......O
        db   $3D,$C6,$58,$43,$80,$AA,$C5,$4C ; 876E 3D C6 58 43 80 AA C5 4C  =.XC...L
        db   $D6,$61,$33,$EB,$71,$D0,$F8,$08 ; 8776 D6 61 33 EB 71 D0 F8 08  .a3.q...
        db   $8E,$1D,$1A,$3B,$F2,$10,$CA,$EE ; 877E 8E 1D 1A 3B F2 10 CA EE  ...;....
        db   $B1,$B3,$2C,$CA,$5F,$AD,$58,$BC ; 8786 B1 B3 2C CA 5F AD 58 BC  ..,._.X.
        db   $6E,$35,$BC,$FF,$E7,$FB,$E1,$08 ; 878E 6E 35 BC FF E7 FB E1 08  n5......
        db   $08,$DC,$B3,$DC,$6E,$5A,$B4,$0D ; 8796 08 DC B3 DC 6E 5A B4 0D  ....nZ..
        db   $28,$65,$3D,$CF,$C9,$E8,$EE,$93 ; 879E 28 65 3D CF C9 E8 EE 93  (e=.....
        db   $67,$56,$2F,$19,$A0,$3D,$C7,$DB ; 87A6 67 56 2F 19 A0 3D C7 DB  gV/..=..
        db   $31,$76,$2D,$4D,$5F,$BD,$78,$9D ; 87AE 31 76 2D 4D 5F BD 78 9D  1v-M_.x.
        db   $7E,$E5,$97,$7D,$68,$E1,$D1,$AC ; 87B6 7E E5 97 7D 68 E1 D1 AC  ~..}h...
        db   $C1,$51,$02,$AC,$5E,$33,$40,$7B ; 87BE C1 51 02 AC 5E 33 40 7B  .Q..^3@{
        db   $8F,$B6,$62,$EC,$5A,$9A,$BF,$7A ; 87C6 8F B6 62 EC 5A 9A BF 7A  ..b.Z..z
        db   $F1,$26,$DB,$64,$CB,$5B,$59,$38 ; 87CE F1 26 DB 64 CB 5B 59 38  .&.d.[Y8
        db   $FF,$25,$25,$AD,$E1,$39,$55,$8B ; 87D6 FF 25 25 AD E1 39 55 8B  .%%..9U.
        db   $C3,$AD,$BB,$68,$D6,$10,$E1,$D1 ; 87DE C3 AD BB 68 D6 10 E1 D1  ...h....
        db   $B8,$FA,$A5,$27,$8E,$54,$FA,$A7 ; 87E6 B8 FA A5 27 8E 54 FA A7  ...'.T..
        db   $29,$DE,$C9,$F6,$7D,$6F,$0F,$DD ; 87EE 29 DE C9 F6 7D 6F 0F DD  )...}o..
        db   $09,$2E,$1D,$1A,$B9,$4F,$F3,$4B ; 87F6 09 2E 1D 1A B9 4F F3 4B  .....O.K
        db   $40,$FD,$3D,$44,$5E,$1E,$37,$E1 ; 87FE 40 FD 3D 44 5E 1E 37 E1  @.=D^.7.
        db   $6B,$2A,$EF,$01,$B8,$59,$C7,$ED ; 8806 6B 2A EF 01 B8 59 C7 ED  k*...Y..
        db   $E1,$AB,$8F,$58,$44             ; 880E E1 AB 8F 58 44           ...XD
; Huffman-compressed text group(s): $04
; Text $0080: 'Please enjoy the next battle.'
; Text $0081: 'You're leaving,aren't you?'
; Text $0082: 'Attention please!'<44>'We call this match a draw due to overtime.'<44>'Your wagers will be returned.Enjoy the next match!'
; Text $0083: <49> was a mirage.<4B>
; Text $0084: <49>'s Party was defeated!
; Text $0085: The Linguar splits!<4B>
; Text $0086: Necrosaro's arm disappears!<4B>
; Text $0087: Necrosaro's head disappears!<4B>
; Text $0088: Necrosaro's belly writhes grotesquely....<4B>
; Text $0089: Necrosaro chants Bounce!<4B>
; Text $008A: <49> emerges the winner!<4B>
; Text $008B:
; Text $008C:
; Text $008D:
; Text $008E:
; Text $008F:
; Text $0090:
; Text $0091:
; Text $0092:
; Text $0093:
; Text $0094:
; Text $0095:
; Text $0096:
; Text $0097:
; Text $0098:
; Text $0099:
; Text $009A:
; Text $009B:
; Text $009C:
; Text $009D:
; Text $009E:
; Text $009F:
Bank00_TextGroup_04:
        db   $F0,$A6,$C0,$29,$0C,$0D,$BE,$9A ; 8813 F0 A6 C0 29 0C 0D BE 9A  ...)....
        db   $F3,$DC,$63,$0C,$BB,$EB,$2A,$EF ; 881B F3 DC 63 0C BB EB 2A EF  ..c...*.
        db   $00,$C2,$2F,$0A,$9C,$A7,$B7,$C6 ; 8823 00 C2 2F 0A 9C A7 B7 C6  ../.....
        db   $80,$5A,$5C,$3A,$1B,$2F,$C1,$F6 ; 882B 80 5A 5C 3A 1B 2F C1 F6  .Z\:./..
        db   $7D,$5C,$A6,$9E,$A2,$2F,$0A,$63 ; 8833 7D 5C A6 9E A2 2F 0A 63  }\.../.c
        db   $B8,$37,$E4,$9E,$F3,$00,$A4,$2A ; 883B B8 37 E4 9E F3 00 A4 2A  .7.....*
        db   $D4,$31,$F8,$22,$8D,$1A,$C2,$19 ; 8843 D4 31 F8 22 8D 1A C2 19  .1."....
        db   $EF,$C2,$D6,$AB,$C7,$7C,$BB,$DF ; 884B EF C2 D6 AB C7 7C BB DF  .....|..
        db   $AB,$5B,$D4,$8C,$F3,$A6,$90,$FB ; 8853 AB 5B D4 8C F3 A6 90 FB  .[......
        db   $F2,$D0,$C1,$8F,$C2,$A7,$29,$FE ; 885B F2 D0 C1 8F C2 A7 29 FE  ......).
        db   $69,$68,$1F,$2C,$D7,$21,$0D,$64 ; 8863 69 68 1F 2C D7 21 0D 64  ih.,.!.d
        db   $6F,$87,$4F,$CC,$7B,$DD,$90,$6D ; 886B 6F 87 4F CC 7B DD 90 6D  o.O.{..m
        db   $F4,$D7,$9E,$E3,$18,$65,$DF,$5A ; 8873 F4 D7 9E E3 18 65 DF 5A  .....e.Z
        db   $AF,$1D,$EA,$D4,$44,$C5,$9A,$52 ; 887B AF 1D EA D4 44 C5 9A 52  ....D..R
        db   $CB,$AD,$E7,$D6,$81,$DD,$13,$13 ; 8883 CB AD E7 D6 81 DD 13 13  ........
        db   $17,$62,$D4,$D5,$FB,$D7,$9A,$52 ; 888B 17 62 D4 D5 FB D7 9A 52  .b.....R
        db   $DE,$84,$02,$B8,$F6,$AC,$5E,$37 ; 8893 DE 84 02 B8 F6 AC 5E 37  ......^7
        db   $19,$B9,$E1,$D0,$95,$FE,$2F,$30 ; 889B 19 B9 E1 D0 95 FE 2F 30  ....../0
        db   $E3,$95,$54,$4C,$4C,$A1,$1F,$E4 ; 88A3 E3 95 54 4C 4C A1 1F E4  ..TLL...
        db   $97,$F3,$D8,$B2,$FE,$DD,$EF,$09 ; 88AB 97 F3 D8 B2 FE DD EF 09  ........
        db   $7C,$F9,$0B,$F2,$AA,$89,$89,$94 ; 88B3 7C F9 0B F2 AA 89 89 94  |.......
        db   $23,$FC,$92,$FE,$7B,$16,$B8,$5F ; 88BB 23 FC 92 FE 7B 16 B8 5F  #...{.._
        db   $77,$BC,$25,$F3,$E4,$2F,$CA,$AA ; 88C3 77 BC 25 F3 E4 2F CA AA  w.%../..
        db   $26,$26,$50,$8F,$F2,$4B,$F9,$EC ; 88CB 26 26 50 8F F2 4B F9 EC  &&P..K..
        db   $5A,$C8,$84,$2B,$CD,$7F,$8F,$70 ; 88D3 5A C8 84 2B CD 7F 8F 70  Z..+...p
        db   $5A,$8F,$CB,$82,$A9,$49,$10,$AF ; 88DB 5A 8F CB 82 A9 49 10 AF  Z....I..
        db   $A3,$BA,$26,$26,$50,$8F,$F2,$4B ; 88E3 A3 BA 26 26 50 8F F2 4B  ..&&P..K
        db   $F9,$D1,$DD,$4D,$CB,$37,$65,$27 ; 88EB F9 D1 DD 4D CB 37 65 27  ...M.7e'
        db   $18,$AA,$89,$89,$8B,$0B,$47,$E8 ; 88F3 18 AA 89 89 8B 0B 47 E8  ......G.
        db   $05,$9E,$E3,$35,$C3,$31,$FA,$A8 ; 88FB 05 9E E3 35 C3 31 FA A8  ...5.1..
        db   $98,$A2,$8A,$28,$A2,$8A,$28,$A2 ; 8903 98 A2 8A 28 A2 8A 28 A2  ...(..(.
        db   $8A,$28,$A2,$8A,$28,$A2,$8A,$28 ; 890B 8A 28 A2 8A 28 A2 8A 28  .(..(..(
        db   $A2,$00                         ; 8913 A2 00                    ..
; Huffman-compressed text group(s): $05, $06, $07, $08
; Text $00A0/$00C0/$00E0/$0100: <49> emits a fireball!
; Text $00A1/$00C1/$00E1/$0101: <49> emits scorching gas!
; Text $00A2/$00C2/$00E2/$0102: <49> emits a violent blaze!
; Text $00A3/$00C3/$00E3/$0103: <49> emits a freezing wind!
; Text $00A4/$00C4/$00E4/$0104: <49> emits a blizzard!
; Text $00A5/$00C5/$00E5/$0105: <49> emits a gleaming,icy gust of wind!
; Text $00A6/$00C6/$00E6/$0106: <49> emits gales of sweet breath!
; Text $00A7/$00C7/$00E7/$0107: <49> falls asleep!
; Text $00A8/$00C8/$00E8/$0108: <49> emits poison gas!
; Text $00A9/$00C9/$00E9/$0109: <49> is poisoned!
; Text $00AA/$00CA/$00EA/$010A: <49> emits gales of scorching breath!
; Text $00AB/$00CB/$00EB/$010B: <49> is paralyzed!
; Text $00AC/$00CC/$00EC/$010C: <49> is dazed!<4B>
; Text $00AD/$00CD/$00ED/$010D: <49> slams its body into <49>!<4B>
; Text $00AE/$00CE/$00EE/$010E: <49> trips and falls!<4B>
; Text $00AF/$00CF/$00EF/$010F: Fortunately there's no injury!<4B>
; Text $00B0/$00D0/$00F0/$0110: <49> raises the <48> overhead!
; Text $00B1/$00D1/$00F1/$0111: <49> raises a hand overhead!<4B>
; Text $00B2/$00D2/$00F2/$0112: <49>:'I'm a Slime.He,He,He....'<43><4B><4B>
; Text $00B3/$00D3/$00F3/$0113: <49>:'I'm a Slime.Te,He,He....'<43><4B><4B>
; Text $00B4/$00D4/$00F4/$0114: <49> throws away the <48>!
; Text $00B5/$00D5/$00F5/$0115: <49> brandishes a weapon!
; Text $00B6/$00D6/$00F6/$0116: Loses control and falls!<4B>
; Text $00B7/$00D7/$00F7/$0117: <47> Damage Point<4C>!
; Text $00B8/$00D8/$00F8/$0118: <49> cheers on <49>!<4B>
; Text $00B9/$00D9/$00F9/$0119: <49>:'Hip,Hip,Hurray <49>!'<43><4B>
; Text $00BA/$00DA/$00FA/$011A: <49> starts crying!<4B>
; Text $00BB/$00DB/$00FB/$011B: <49>:'I want to go home! Sob...Sob...'<43><4B>
; Text $00BC/$00DC/$00FC/$011C: <49> grabs and throws away <49>!<4B>
; Text $00BD/$00DD/$00FD/$011D: <49>:'KIEEEE!'
; Text $00BE/$00DE/$00FE/$011E: <49> starts testing strength by breaking the stones nearby!<4B><4B>
; Text $00BF/$00DF/$00FF/$011F: <49> picks up and throws a stone!<4B>
Bank00_TextGroup_05:
        db   $62,$C2,$DE,$39,$65,$C8,$73,$E2 ; 8915 62 C2 DE 39 65 C8 73 E2  b..9e.s.
        db   $CA,$C2,$15,$62,$62,$C2,$DE,$39 ; 891D CA C2 15 62 62 C2 DE 39  ...bb..9
        db   $62,$8E,$7F,$1D,$F8,$74,$6A,$14 ; 8925 62 8E 7F 1D F8 74 6A 14  b....tj.
        db   $AA,$C4,$C5,$85,$BC,$72,$CB,$A9 ; 892D AA C4 C5 85 BC 72 CB A9  .....r..
        db   $72,$60,$0D,$F5,$98,$2A,$20,$55 ; 8935 72 60 0D F5 98 2A 20 55  r`...* U
        db   $89,$8B,$0B,$78,$E5,$97,$21,$F0 ; 893D 89 8B 0B 78 E5 97 21 F0  ...x..!.
        db   $11,$1C,$3A,$33,$5C,$3F,$6A,$C4 ; 8945 11 1C 3A 33 5C 3F 6A C4  ..:3\?j.
        db   $C5,$85,$BC,$72,$CB,$AC,$C3,$88 ; 894D C5 85 BC 72 CB AC C3 88  ...r....
        db   $84,$42,$FF,$DA,$B1,$31,$61,$6F ; 8955 84 42 FF DA B1 31 61 6F  .B...1ao
        db   $1C,$B2,$EA,$20,$16,$DE,$1D,$0D ; 895D 1C B2 EA 20 16 DE 1D 0D  ... ....
        db   $B9,$1D,$7A,$84,$93,$E9,$43,$35 ; 8965 B9 1D 7A 84 93 E9 43 35  ..z...C5
        db   $C3,$F6,$AC,$4C,$58,$5B,$C7,$2D ; 896D C3 F6 AC 4C 58 5B C7 2D  ...LX[.-
        db   $42,$C0,$16,$94,$31,$34,$03,$EB ; 8975 42 C0 16 94 31 34 03 EB  B...14..
        db   $3F,$0A,$F7,$AB,$13,$16,$41,$61 ; 897D 3F 0A F7 AB 13 16 41 61  ?.....Aa
        db   $02,$CA,$50,$03,$CD,$58,$98,$B0 ; 8985 02 CA 50 03 CD 58 98 B0  ..P..X..
        db   $B7,$8E,$5B,$CC,$F0,$A4,$F5,$0A ; 898D B7 8E 5B CC F0 A4 F5 0A  ..[.....
        db   $55,$62,$62,$DC,$2D,$E6,$78,$52 ; 8995 55 62 62 DC 2D E6 78 52  Ubb.-.xR
        db   $63,$DA,$B1,$31,$61,$6F,$1C,$B5 ; 899D 63 DA B1 31 61 6F 1C B5  c..1ao..
        db   $0B,$00,$5A,$50,$C5,$1C,$FE,$3B ; 89A5 0B 00 5A 50 C5 1C FE 3B  ..ZP...;
        db   $F0,$E8,$D6,$7E,$15,$EF,$56,$26 ; 89AD F0 E8 D6 7E 15 EF 56 26  ...~..V&
        db   $2D,$C2,$DE,$57,$EB,$0A,$D1,$03 ; 89B5 2D C2 DE 57 EB 0A D1 03  -..W....
        db   $DA,$B1,$31,$6E,$16,$F5,$51,$03 ; 89BD DA B1 31 6E 16 F5 51 03  ..1n..Q.
        db   $DA,$A8,$98,$98,$B1,$41,$6D,$2D ; 89C5 DA A8 98 98 B1 41 6D 2D  .....Am-
        db   $C7,$2D,$66,$7D,$AF,$70,$DE,$73 ; 89CD C7 2D 66 7D AF 70 DE 73  .-f}.p.s
        db   $15,$54,$4C,$4C,$59,$FF,$CF,$25 ; 89D5 15 54 4C 4C 59 FF CF 25  .TLLY..%
        db   $94,$FD,$C8,$2C,$20,$55,$51,$31 ; 89DD 94 FD C8 2C 20 55 51 31  ..., UQ1
        db   $32,$D9,$FB,$A4,$D5,$C4,$2B,$CF ; 89E5 32 D9 FB A4 D5 C4 2B CF  2.....+.
        db   $71,$F1,$D8,$B1,$CE,$E1,$B7,$C9 ; 89ED 71 F1 D8 B1 CE E1 B7 C9  q.......
        db   $FD,$75,$51,$31,$31,$6F,$AF,$08 ; 89F5 FD 75 51 31 31 6F AF 08  .uQ11o..
        db   $16,$7B,$8C,$DC,$34,$D2,$1F,$B8 ; 89FD 16 7B 8C DC 34 D2 1F B8  .{..4...
        db   $5F,$6A,$C4,$C5,$BE,$BC,$20,$59 ; 8A05 5F 6A C4 C5 BE BC 20 59  _j.... Y
        db   $75,$D4,$FD,$D3,$48,$7E,$E1,$7D ; 8A0D 75 D4 FD D3 48 7E E1 7D  u...H~.}
        db   $AA,$89,$89,$8B,$A7,$E1,$63,$B5 ; 8A15 AA 89 89 8B A7 E1 63 B5  ......c.
        db   $B9,$77,$5E,$1C,$B4,$77,$47,$0D ; 8A1D B9 77 5E 1C B4 77 47 0D  .w^..wG.
        db   $91,$C3,$64,$71,$D0,$C1,$1B,$44 ; 8A25 91 C3 64 71 D0 C1 1B 44  ..dq...D
        db   $A2,$62,$62,$E9,$F8,$58,$ED,$6E ; 8A2D A2 62 62 E9 F8 58 ED 6E  .bb..X.n
        db   $5D,$D7,$87,$2D,$1D,$FC,$43,$64 ; 8A35 5D D7 87 2D 1D FC 43 64  ]..-..Cd
        db   $70,$D9,$1C,$74,$30,$46,$D1,$28 ; 8A3D 70 D9 1C 74 30 46 D1 28  p..t0F.(
        db   $98,$98,$B3,$DF,$F2,$D1,$65,$69 ; 8A45 98 98 B3 DF F2 D1 65 69  ......ei
        db   $6B,$CF,$71,$9B,$85,$58,$98,$B5 ; 8A4D 6B CF 71 9B 85 58 98 B5  k.q..X..
        db   $9F,$A9,$FB,$C2,$B8,$2C,$B9,$A0 ; 8A55 9F A9 FB C2 B8 2C B9 A0  .....,..
        db   $BE,$64,$EA,$C4,$DC,$C9,$02,$D1 ; 8A5D BE 64 EA C4 DC C9 02 D1  .d......
        db   $C9,$BF,$E6,$19,$4F,$DC,$82,$C2 ; 8A65 C9 BF E6 19 4F DC 82 C2  ....O...
        db   $05,$55,$13,$13,$2C,$DD,$2A,$DA ; 8A6D 05 55 13 13 2C DD 2A DA  .U..,.*.
        db   $B4,$0D,$4D,$9E,$1B,$A3,$5A,$B1 ; 8A75 B4 0D 4D 9E 1B A3 5A B1  ..M...Z.
        db   $31,$68,$EE,$07,$CB,$49,$E6,$2A ; 8A7D 31 68 EE 07 CB 49 E6 2A  1h...I.*
        db   $A8,$98,$98,$BA,$7E,$08,$FC,$F2 ; 8A85 A8 98 98 BA 7E 08 FC F2  ....~...
        db   $D9,$1F,$9E,$5B,$23,$A7,$FF,$5A ; 8A8D D9 1F 9E 5B 23 A7 FF 5A  ...[#..Z
        db   $F3,$15,$5A,$84,$6D,$13,$13,$16 ; 8A95 F3 15 5A 84 6D 13 13 16  ..Z.m...
        db   $27,$5F,$B9,$68,$FF,$5F,$0E,$8A ; 8A9D 27 5F B9 68 FF 5F 0E 8A  '_.h._..
        db   $A8,$98,$98,$BA,$7E,$16,$33,$4A ; 8AA5 A8 98 98 BA 7E 16 33 4A  ....~.3J
        db   $6F,$9E,$75,$13,$AF,$36,$8A,$BB ; 8AAD 6F 9E 75 13 AF 36 8A BB  o.u..6..
        db   $AF,$36,$7A,$3A,$F3,$67,$A2,$A1 ; 8AB5 AF 36 7A 3A F3 67 A2 A1  .6z:.g..
        db   $1B,$44,$C4,$C5,$A8,$FA,$D9,$2C ; 8ABD 1B 44 C4 C5 A8 FA D9 2C  .D.....,
        db   $A7,$EE,$7B,$FE,$5A,$2C,$AD,$2D ; 8AC5 A7 EE 7B FE 5A 2C AD 2D  ..{.Z,.-
        db   $79,$8A,$AA,$26,$26,$2E,$9F,$82 ; 8ACD 79 8A AA 26 26 2E 9F 82  y..&&...
        db   $32,$C3,$21,$90,$C8,$64,$55,$A8 ; 8AD5 32 C3 21 90 C8 64 55 A8  2.!..dU.
        db   $89,$8B,$13,$AF,$DC,$B3,$82,$7E ; 8ADD 89 8B 13 AF DC B3 82 7E  .......~
        db   $1D,$18,$9F,$E0,$E8,$7B,$EB,$35 ; 8AE5 1D 18 9F E0 E8 7B EB 35  .....{.5
        db   $EB,$3F,$0A,$CF,$87,$46,$7B,$8C ; 8AED EB 3F 0A CF 87 46 7B 8C  .?...F{.
        db   $4F,$26,$0B,$18,$5F,$D9,$AE,$AA ; 8AF5 4F 26 0B 18 5F D9 AE AA  O&.._...
        db   $25,$13,$13,$16,$F3,$C8,$D9,$96 ; 8AFD 25 13 13 16 F3 C8 D9 96  %.......
        db   $4F,$9C,$A7,$EE,$7B,$FE,$5A,$2C ; 8B05 4F 9C A7 EE 7B FE 5A 2C  O...{.Z,
        db   $B8,$9E,$4C,$55,$44,$C4         ; 8B0D B8 9E 4C 55 44 C4        ..LUD.
; Huffman-compressed text group(s): $09
; Text $0120: It hits <49>!<4B>
; Text $0121: <47> Damage Point<4C>!
; Text $0122: It misses <49>!
; Text $0123: <49> begins a lecture!<4B>
; Text $0124: <49>:'Be good to travelers....'<43><4B><4B>
; Text $0125: <49>:'Can you tell me the way to Aliahan?'<43><4B><4B>
; Text $0126: <49> doesn't respond!<4B>
; Text $0127: <49> takes off the <48>!
; Text $0128: <49> is charmed by <49>!<4B><4B>
; Text $0129: <49> screams!<4B>
; Text $012A: <49>:'Yeek! Stop! Please stop!'<43><4B>
; Text $012B: <49>:'Where am I? Who am I?'<43><4B>
; Text $012C: <49> is predicting who will win!<4B>
; Text $012D: <49> joins the battle!
; Text $012E: <49> grasps at <49>!<4B>
; Text $012F: <49> is bounced off!<4B>
; Text $0130: <49> blows a kiss!<4B>
; Text $0131: <49> is happy!<4B>
; Text $0132: <49> digs a trap!<4B>
; Text $0133: <49> falls into a trap!<4B>
; Text $0134: <49> chants Explo<4B>d<4B>e<4B>...
; Text $0135: ...but can't remember the rest of the spell!<4B>
; Text $0136: <49>:'What was I supposed to do?'<43><4B><4B>
; Text $0137: <49> jumps back into the wagon!
; Text $0138: <49> throws 1 gold piece!
; Text $0139: <49> starts counting money!<4B>
; Text $013A: <49>:'One,Two....The total is <47> gold piece<4C>.That's seems right.'<43><4B><4B>
; Text $013B: <49> starts a business!<4B>
; Text $013C: <49>:'Would you like this <48>? I'll give you a discount.'<43><4B><4B>
; Text $013D: <49> is scared!<4B>
; Text $013E: <49> is barking weirdly!<4B>
; Text $013F: <49> trembles!<4B>
Bank00_TextGroup_09:
        db   $B0,$FA,$FC,$72,$CC,$55,$51,$31 ; 8B13 B0 FA FC 72 CC 55 51 31  ...r.UQ1
        db   $32,$CD,$D2,$AD,$AB,$40,$D4,$D9 ; 8B1B 32 CD D2 AD AB 40 D4 D9  2....@..
        db   $E1,$BA,$35,$AB,$15,$87,$D6,$F0 ; 8B23 E1 BA 35 AB 15 87 D6 F0  ..5.....
        db   $88,$16,$62,$AB,$13,$16,$B2,$28 ; 8B2B 88 16 62 AB 13 16 B2 28  ..b....(
        db   $E1,$96,$5D,$01,$1B,$A7,$E2,$AA ; 8B33 E1 96 5D 01 1B A7 E2 AA  ..].....
        db   $26,$26,$2E,$9F,$83,$74,$6A,$26 ; 8B3B 26 26 2E 9F 83 74 6A 26  &&...tj&
        db   $7D,$CF,$39,$FE,$B4,$84,$07,$CB ; 8B43 7D CF 39 FE B4 84 07 CB  }.9.....
        db   $A1,$82,$36,$89,$44,$C4,$C5,$D3 ; 8B4B A1 82 36 89 44 C4 C5 D3  ..6.D...
        db   $F0,$6F,$29,$EA,$E5,$39,$C4,$21 ; 8B53 F0 6F 29 EA E5 39 C4 21  .o)..9.!
        db   $AD,$19,$EE,$33,$4B,$5E,$79,$D4 ; 8B5B AD 19 EE 33 4B 5E 79 D4  ...3K^y.
        db   $C8,$71,$6E,$A7,$4F,$50,$8D,$A2 ; 8B63 C8 71 6E A7 4F 50 8D A2  .qn.OP..
        db   $51,$31,$31,$6F,$64,$11,$F6,$7D ; 8B6B 51 31 31 6F 64 11 F6 7D  Q11od..}
        db   $F0,$5E,$64,$FD,$AA,$89,$89,$8B ; 8B73 F0 5E 64 FD AA 89 89 8B  .^d.....
        db   $3A,$B3,$05,$A5,$04,$33,$DC,$66 ; 8B7B 3A B3 05 A5 04 33 DC 66  :....3.f
        db   $E1,$56,$26,$2D,$C2,$D1,$DD,$7F ; 8B83 E1 56 26 2D C2 D1 DD 7F  .V&-....
        db   $68,$F7,$59,$AF,$31,$55,$44,$A2 ; 8B8B 68 F7 59 AF 31 55 44 A2  h.Y.1UD.
        db   $62,$62,$C5,$1F,$C2,$DA,$55,$51 ; 8B93 62 62 C5 1F C2 DA 55 51  bb....UQ
        db   $31,$31,$74,$FC,$2A,$60,$33,$AB ; 8B9B 31 31 74 FC 2A 60 33 AB  11t.*`3.
        db   $BA,$EF,$3E,$6A,$EA,$6C,$02,$90 ; 8BA3 BA EF 3E 6A EA 6C 02 90  ..>j.l..
        db   $C4,$F3,$E6,$AD,$42,$36,$89,$89 ; 8BAB C4 F3 E6 AD 42 36 89 89  ....B6..
        db   $8B,$A7,$E0,$8B,$71,$F1,$96,$DD ; 8BB3 8B A7 E0 8B 71 F1 96 DD  ....q...
        db   $62,$9F,$22,$DE,$72,$DB,$AC,$53 ; 8BBB 62 9F 22 DE 72 DB AC 53  b.".r..S
        db   $D4,$23,$68,$98,$98,$B7,$0B,$79 ; 8BC3 D4 23 68 98 98 B7 0B 79  .#h....y
        db   $F8,$F7,$91,$BF,$0E,$8C,$D5,$E7 ; 8BCB F8 F7 91 BF 0E 8C D5 E7  ........
        db   $35,$C8,$43,$35,$C3,$AA,$89,$89 ; 8BD3 35 C8 43 35 C3 AA 89 89  5.C5....
        db   $8B,$37,$D3,$C3,$2C,$F7,$1A,$CA ; 8BDB 8B 37 D3 C3 2C F7 1A CA  .7..,...
        db   $BB,$C0,$55,$89,$8B,$51,$F5,$2F ; 8BE3 BB C0 55 89 8B 51 F5 2F  ..U..Q./
        db   $25,$95,$F3,$15,$54,$4C,$4C,$5B ; 8BEB 25 95 F3 15 54 4C 4C 5B  %...TLL[
        db   $85,$AC,$CA,$4E,$31,$EE,$94,$10 ; 8BF3 85 AC CA 4E 31 EE 94 10  ...N1...
        db   $AA,$89,$89,$8B,$59,$84,$B4,$59 ; 8BFB AA 89 89 8B 59 84 B4 59  ....Y..Y
        db   $73,$3E,$11,$55,$44,$C4,$C5,$B8 ; 8C03 73 3E 11 55 44 C4 C5 B8  s>.UD...
        db   $5A,$EB,$E7,$CD,$75,$51,$31,$31 ; 8C0B 5A EB E7 CD 75 51 31 31  Z...uQ11
        db   $6F,$79,$41,$65,$CF,$F5,$F3,$55 ; 8C13 6F 79 41 65 CF F5 F3 55  oyAe...U
        db   $13,$13,$16,$41,$61,$02,$DC,$37 ; 8C1B 13 13 16 41 61 02 DC 37  ...Aa..7
        db   $9C,$B9,$FE,$BE,$6A,$A2,$62,$62 ; 8C23 9C B9 FE BE 6A A2 62 62  ....j.bb
        db   $D1,$DD,$4D,$CB,$32,$19,$7F,$30 ; 8C2B D1 DD 4D CB 32 19 7F 30  ..M.2..0
        db   $94,$4F,$A8,$90,$89,$E8,$8B,$A2 ; 8C33 94 4F A8 90 89 E8 8B A2  .O......
        db   $CA,$5F,$46,$A7,$D9,$F7,$C5,$A2 ; 8C3B CA 5F 46 A7 D9 F7 C5 A2  ._F.....
        db   $DB,$23,$F9,$EE,$37,$C1,$3E,$94 ; 8C43 DB 23 F9 EE 37 C1 3E 94  .#..7.>.
        db   $33,$DC,$62,$F2,$21,$0A,$A8,$98 ; 8C4B 33 DC 62 F2 21 0A A8 98  3.b.!...
        db   $98,$BA,$7E,$08,$B7,$57,$CD,$29 ; 8C53 98 BA 7E 08 B7 57 CD 29  ..~..W.)
        db   $6B,$18,$93,$E7,$CC,$90,$F7,$3C ; 8C5B 6B 18 93 E7 CC 90 F7 3C  k......<
        db   $EF,$66,$9E,$A1,$1B,$44,$A2,$62 ; 8C63 EF 66 9E A1 1B 44 A2 62  .f...D.b
        db   $62,$CD,$F2,$6D,$F2,$5A,$CA,$C6 ; 8C6B 62 CD F2 6D F2 5A CA C6  b..m.Z..
        db   $CF,$70,$DE,$73,$DC,$66,$96,$89 ; 8C73 CF 70 DE 73 DC 66 96 89  .p.s.f..
        db   $3A,$B1,$31,$67,$BF,$E5,$A2,$C8 ; 8C7B 3A B1 31 67 BF E5 A2 C8  :.1g....
        db   $D3,$D4,$4C,$3D,$DE,$78,$23,$15 ; 8C83 D3 D4 4C 3D DE 78 23 15  ..L=.x#.
        db   $62,$62,$C4,$EB,$F7,$2D,$1C,$A4 ; 8C8B 62 62 C4 EB F7 2D 1C A4  bb...-..
        db   $DF,$87,$46,$B6,$4C,$57,$55,$13 ; 8C93 DF 87 46 B6 4C 57 55 13  ..F.LWU.
        db   $13,$17,$4F,$C3,$AD,$30,$DB,$C5 ; 8C9B 13 17 4F C3 AD 30 DB C5  ..O..0..
        db   $A9,$E8,$EF,$E3,$71,$9E,$5D,$61 ; 8CA3 A9 E8 EF E3 71 9E 5D 61  ....q.]a
        db   $B8,$59,$96,$6A,$26,$1E,$EF,$3C ; 8CAB B8 59 96 6A 26 1E EF 3C  .Y.j&..<
        db   $11,$84,$6B,$DF,$C6,$EA,$FD,$8B ; 8CB3 11 84 6B DF C6 EA FD 8B  ..k.....
        db   $10,$16,$96,$FF,$28,$BB,$B0,$46 ; 8CBB 10 16 96 FF 28 BB B0 46  ....(..F
        db   $D1,$28,$98,$98,$B1,$3A,$FD,$CB ; 8CC3 D1 28 98 98 B1 3A FD CB  .(...:..
        db   $2E,$B2,$92,$E1,$82,$2A,$A8,$98 ; 8CCB 2E B2 92 E1 82 2A A8 98  .....*..
        db   $98,$BA,$7E,$08,$B2,$98,$7B,$AB ; 8CD3 98 BA 7E 08 B2 98 7B AB  ..~...{.
        db   $94,$E8,$71,$98,$CF,$7E,$16,$6E ; 8CDB 94 E8 71 98 CF 7E 16 6E  ..q..~.n
        db   $14,$FA,$C7,$68,$43,$51,$CA,$43 ; 8CE3 14 FA C7 68 43 51 CA 43  ...hCQ.C
        db   $57,$29,$CB,$BD,$E1,$47,$29,$37 ; 8CEB 57 29 CB BD E1 47 29 37  W)...G)7
        db   $60,$8D,$A2,$51,$31,$31,$6E,$16 ; 8CF3 60 8D A2 51 31 31 6E 16  `..Q11n.
        db   $28,$D7,$E3,$DA,$A8,$98,$98,$B7 ; 8CFB 28 D7 E3 DA A8 98 98 B7  (.......
        db   $0B,$59,$5F,$B3,$E1,$D1,$9A,$1C ; 8D03 0B 59 5F B3 E1 D1 9A 1C  .Y_.....
        db   $FF,$B0,$AE,$AA,$26,$26,$2C,$FF ; 8D0B FF B0 AE AA 26 26 2C FF  ....&&,.
        db   $16,$D9,$80,$2A,$A8,$98,$80     ; 8D13 16 D9 80 2A A8 98 80     ...*...
; Huffman-compressed text group(s): $0A
; Text $0140: <49> body slams into <49>!
; Text $0141: <49> passes through it and disappears somewhere!<4B><4B>
; Text $0142: <49> can't move a single muscle!<4B>
; Text $0143: But the body doesn't follow and can't do a thing!<4B><4B>
; Text $0144: <49> suddenly shouts!
; Text $0145: <49> starts singing a lullaby.
; Text $0146: <49> leaps on <49>!
; Text $0147: <49> catches <49> off guard and steals a treasure chest!<4B><40>
; Text $0148: <49>:'Calm down,everybody!'<43><4B><4B>
; Text $0149: Calmed down by <49>,the foes withdraw.<4B><4B>
; Text $014A: Calmed down by <49>,<49> withdraws.<4B><4B>
; Text $014B: The foes become even more infuriated!<4B>
; Text $014C: <49> becomes even more infuriated!<4B>
; Text $014D: <49> makes an awful pun!<4B>
; Text $014E: <49> shakes with laughter!
; Text $014F: <49> chants Upper!
; Text $0150: <49> trips!
; Text $0151: At that instant,a weapon hits <49>!<4B>
; Text $0152: <49> grabs and throws sand on the ground!<4B>
; Text $0153: The sand gets in <49>'s eyes!
; Text $0154: <49> starts slamming with its body!
; Text $0155: Traveling merchants appear out of nowhere!<4B><4B>
; Text $0156: The merchant army attacks!
; Text $0157: The merchants vanish.<4B>
; Text $0158: <49> wiggles a finger in a circle!
; Text $0159: <49> becomes dizzy!
; Text $015A:
; Text $015B: <49> sweeps legs!
; Text $015C: <49> trips!
; Text $015D: The foes turn into a Metal Slime!
; Text $015E: <49> casts <4A>!
; Text $015F: <49>'s Party casts <4A> together!
Bank00_TextGroup_0A:
        db   $62,$D6,$67,$DA,$F1,$41,$6D,$2D ; 8D1A 62 D6 67 DA F1 41 6D 2D  b.g..Am-
        db   $C3,$79,$CC,$55,$62,$62,$DE,$54 ; 8D22 C3 79 CC 55 62 62 DE 54  .y.Ubb.T
        db   $88,$16,$7B,$FE,$53,$45,$F7,$1F ; 8D2A 88 16 7B FE 53 45 F7 1F  ..{.SE..
        db   $29,$FB,$BD,$E1,$2F,$9F,$21,$7E ; 8D32 29 FB BD E1 2F 9F 21 7E  ).../.!~
        db   $58,$A6,$D0,$D5,$C7,$C5,$54,$4A ; 8D3A 58 A6 D0 D5 C7 C5 54 4A  X.....TJ
        db   $26,$26,$2D,$1A,$9F,$67,$D6,$CD ; 8D42 26 26 2D 1A 9F 67 D6 CD  &&-..g..
        db   $21,$97,$17,$0E,$88,$0D,$6A,$4A ; 8D4A 21 97 17 0E 88 0D 6A 4A  !.....jJ
        db   $38,$0A,$A8,$98,$9B,$A9,$7C,$F7 ; 8D52 38 0A A8 98 9B A9 7C F7  8.....|.
        db   $1A,$CC,$FB,$5E,$F6,$41,$1F,$67 ; 8D5A 1A CC FB 5E F6 41 1F 67  ...^.A.g
        db   $C8,$4C,$21,$2D,$65,$3F,$74,$6A ; 8D62 C8 4C 21 2D 65 3F 74 6A  .L!-e?tj
        db   $7D,$9F,$7B,$39,$73,$DF,$87,$45 ; 8D6A 7D 9F 7B 39 73 DF 87 45  }.{9s..E
        db   $54,$4A,$26,$26,$2C,$49,$F7,$D0 ; 8D72 54 4A 26 26 2C 49 F7 D0  TJ&&,I..
        db   $70,$AF,$15,$E5,$2E,$55,$62,$62 ; 8D7A 70 AF 15 E5 2E 55 62 62  p....Ubb
        db   $C4,$EB,$F7,$2C,$5C,$3A,$38,$74 ; 8D82 C4 EB F7 2C 5C 3A 38 74  ...,\:8t
        db   $65,$D0,$4C,$20,$B6,$6B,$EF,$13 ; 8D8A 65 D0 4C 20 B6 6B EF 13  e.L .k..
        db   $16,$80,$5F,$25,$A4,$F3,$15,$58 ; 8D92 16 80 5F 25 A4 F3 15 58  .._%...X
        db   $98,$B4,$6A,$F1,$DC,$16,$62,$D2 ; 8D9A 98 B4 6A F1 DC 16 62 D2  ..j...b.
        db   $82,$1A,$84,$AF,$FD,$CA,$7E,$E2 ; 8DA2 82 1A 84 AF FD CA 7E E2  ......~.
        db   $70,$B0,$2C,$B9,$FE,$14,$93,$F1 ; 8DAA 70 B0 2C B9 FE 14 93 F1  p.,.....
        db   $A3,$B8,$27,$AA,$89,$A9,$64,$4C ; 8DB2 A3 B8 27 AA 89 A9 64 4C  ..'...dL
        db   $5D,$3F,$06,$F2,$C2,$DD,$EC,$B4 ; 8DBA 5D 3F 06 F2 C2 DD EC B4  ]?......
        db   $6D,$85,$21,$FA,$EC,$CF,$B5,$D5 ; 8DC2 6D 85 21 FA EC CF B5 D5  m.!.....
        db   $A8,$46,$D1,$28,$98,$9B,$CB,$0B ; 8DCA A8 46 D1 28 98 9B CB 0B  .F.(....
        db   $47,$BB,$D9,$68,$F5,$9A,$F3,$13 ; 8DD2 47 BB D9 68 F5 9A F3 13  G..h....
        db   $67,$B8,$C8,$48,$2C,$D7,$1E,$FE ; 8DDA 67 B8 C8 48 2C D7 1E FE  g..H,...
        db   $FD,$5A,$EE,$89,$44,$C4,$DE,$58 ; 8DE2 FD 5A EE 89 44 C4 DE 58  .Z..D..X
        db   $5A,$3D,$DE,$CB,$47,$AC,$D7,$98 ; 8DEA 5A 3D DE CB 47 AC D7 98  Z=..G...
        db   $9B,$31,$66,$B8,$F7,$F7,$EA,$D1 ; 8DF2 9B 31 66 B8 F7 F7 EA D1  .1f.....
        db   $77,$44,$A2,$62,$F1,$B8,$C8,$48 ; 8DFA 77 44 A2 62 F1 B8 C8 48  wD.b...H
        db   $2D,$64,$47,$36,$8C,$29,$03,$D6 ; 8E02 2D 64 47 36 8C 29 03 D6  -dG6.)..
        db   $CF,$C6,$E1,$A0,$9F,$F1,$5C,$7B ; 8E0A CF C6 E1 A0 9F F1 5C 7B  ......\{
        db   $55,$13,$13,$16,$B2,$23,$9B,$41 ; 8E12 55 13 13 16 B2 23 9B 41  U....#.A
        db   $61,$48,$1E,$B6,$7E,$37,$0D,$04 ; 8E1A 61 48 1E B6 7E 37 0D 04  aH..~7..
        db   $FF,$8A,$E3,$DA,$A8,$98,$98,$B5 ; 8E22 FF 8A E3 DA A8 98 98 B5  ........
        db   $AA,$CC,$16,$53,$CA,$D2,$09,$86 ; 8E2A AA CC 16 53 CA D2 09 86  ...S....
        db   $F2,$93,$AA,$89,$89,$8B,$15,$D5 ; 8E32 F2 93 AA 89 89 8B 15 D5  ........
        db   $98,$2C,$D7,$1E,$FA,$0A,$9A,$2E ; 8E3A 98 2C D7 1E FA 0A 9A 2E  .,......
        db   $E3,$F5,$62,$62,$D1,$DD,$4D,$CB ; 8E42 E3 F5 62 62 D1 DD 4D CB  ..bb..M.
        db   $75,$97,$9F,$23,$F5,$62,$62,$CF ; 8E4A 75 97 9F 23 F5 62 62 CF  u..#.bb.
        db   $FE,$79,$2A,$B1,$53,$1F,$3D,$D5 ; 8E52 FE 79 2A B1 53 1F 3D D5  .y*.S.=.
        db   $F7,$0C,$9D,$4D,$DB,$2E,$68,$2F ; 8E5A F7 0C 9D 4D DB 2E 68 2F  ...M..h/
        db   $99,$3D,$7E,$39,$66,$2A,$A8,$98 ; 8E62 99 3D 7E 39 66 2A A8 98  .=~9f*..
        db   $98,$B5,$1F,$5B,$25,$94,$FD,$CF ; 8E6A 98 B5 1F 5B 25 94 FD CF  ...[%...
        db   $7F,$CB,$45,$89,$4F,$DD,$27,$9E ; 8E72 7F CB 45 89 4F DD 27 9E  ..E.O.'.
        db   $E3,$51,$F9,$49,$FB,$55,$13,$17 ; 8E7A E3 51 F9 49 FB 55 13 17  .Q.I.U..
        db   $8D,$C6,$25,$3F,$75,$01,$CB,$70 ; 8E82 8D C6 25 3F 75 01 CB 70  ..%?u..p
        db   $F3,$17,$62,$C2,$B0,$55,$62,$62 ; 8E8A F3 17 62 C2 B0 55 62 62  ..b..Ubb
        db   $C4,$EB,$F7,$2C,$50,$5B,$6D,$E1 ; 8E92 C4 EB F7 2C 50 5B 6D E1  ...,P[m.
        db   $D1,$9A,$E3,$DF,$71,$CB,$59,$9F ; 8E9A D1 9A E3 DF 71 CB 59 9F  ....q.Y.
        db   $6B,$AB,$17,$8F,$D6,$90,$87,$0E ; 8EA2 6B AB 17 8F D6 90 87 0E  k.......
        db   $8D,$68,$FC,$77,$53,$72,$CB,$E7 ; 8EAA 8D 68 FC 77 53 72 CB E7  .h.wSr..
        db   $C8,$5F,$E9,$4B,$E9,$43,$1C,$B5 ; 8EB2 C8 5F E9 4B E9 43 1C B5  ._.K.C..
        db   $71,$F1,$55,$12,$89,$8B,$C6,$E3 ; 8EBA 71 F1 55 12 89 8B C6 E3  q.U.....
        db   $5A,$3F,$1D,$D4,$DF,$2F,$ED,$AF ; 8EC2 5A 3F 1D D4 DF 2F ED AF  Z?.../..
        db   $2B,$BA,$C6,$CC,$AA,$C5,$E3,$71 ; 8ECA 2B BA C6 CC AA C5 E3 71  +......q
        db   $AD,$1F,$8E,$EA,$6E,$5A,$92,$9F ; 8ED2 AD 1F 8E EA 6E 5A 92 9F  ....nZ..
        db   $0A,$FD,$D1,$31,$31,$66,$B9,$45 ; 8EDA 0A FD D1 31 31 66 B9 45  ...11f.E
        db   $10,$05,$97,$21,$C3,$A0,$7F,$70 ; 8EE2 10 05 97 21 C3 A0 7F 70  ...!...p
        db   $F2,$E8,$F9,$F8,$E0,$2A,$C4,$C5 ; 8EEA F2 E8 F9 F8 E0 2A C4 C5  .....*..
        db   $AC,$88,$E6,$D0,$5B,$DE,$22,$11 ; 8EF2 AC 88 E6 D0 5B DE 22 11  ....[.".
        db   $15,$D5,$8A,$26,$2C,$4D,$01,$E4 ; 8EFA 15 D5 8A 26 2C 4D 01 E4  ...&,M..
        db   $B4,$05,$05,$56,$26,$2C,$FF,$E7 ; 8F02 B4 05 05 56 26 2C FF E7  ...V&,..
        db   $92,$AB,$17,$8D,$C6,$42,$41,$67 ; 8F0A 92 AB 17 8D C6 42 41 67  .....BAg
        db   $4F,$CF,$70,$DE,$72,$E6,$48,$75 ; 8F12 4F CF 70 DE 72 E6 48 75  O.p.r.Hu
        db   $86,$EB,$C3,$96,$8A,$B1,$31,$68 ; 8F1A 86 EB C3 96 8A B1 31 68  ......1h
        db   $D4,$9C,$B5,$4B,$CA,$B1,$31,$76 ; 8F22 D4 9C B5 4B CA B1 31 76  ...K..1v
        db   $2D,$4D,$5F,$BD,$7A,$35,$27,$2D ; 8F2A 2D 4D 5F BD 7A 35 27 2D  -M_.z5'-
        db   $52,$F3,$3C,$D0,$1E,$E3,$F5,$62 ; 8F32 52 F3 3C D0 1E E3 F5 62  R.<....b
        db   $00                             ; 8F3A 00                       .
; Huffman-compressed text group(s): $0B
; Text $0160: But not all 4 members are here!
; Text $0161: <49>'s MP isn't sufficient!
; Text $0162: The <4A> isn't cast!
; Text $0163: But <49> quickly covers its mouth!<4B>
; Text $0164: <49> fails to cast <4A>!<4B>
; Text $0165: <49> is put to sleep!
; Text $0166: <49> falls asleep!
; Text $0167: <49> is defeated!
; Text $0168: <49>'s Defense Power is lowered by <47> point<4C>!
; Text $0169: <49>'s Defense Power goes down <47> point<4C>!
; Text $016A: <49>'s Defense Power goes up <47> point<4C>!
; Text $016B: <49>'s wounds heal!
; Text $016C: <49> revives!
; Text $016D: But the spell is nullified!
; Text $016E: <49> is sent into the lights.<43><40>
; Text $016F: <49>'s spells are contained!
; Text $0170: <49>'s spells are contained!
; Text $0171: <49> is surrounded by mirages!
; Text $0172: <49> throws a Boomerang at <49>!
; Text $0173: <49> becomes confused!
; Text $0174: <49> turns back into its original form!
; Text $0175: <49> assumes the shape of <49>!
; Text $0176: The area grows even darker!
; Text $0177: <49> turns into a giant dragon!<4B>
; Text $0178: <49> is robbed of <47> MP point<4C>!
; Text $0179: <49> is robbed of <47> MP point<4C>!
; Text $017A: <49> becomes ironized!<4B>
; Text $017B: <49>'s group becomes ironized!<4B>
; Text $017C: A radiant wall of lights appears before <49>!<4B>
; Text $017D: A violet fog surrounds <49>!<4B>
; Text $017E: <49>'s Agility goes up <47> point<4C>!
; Text $017F: A thin cloth of lights encloses <49>'s Party!<4B>
Bank00_TextGroup_0B:
        db   $6E,$A5,$F1,$CB,$E5,$84,$35,$4B ; 8F3B 6E A5 F1 CB E5 84 35 4B  n.....5K
        db   $4D,$68,$B6,$C8,$F9,$65,$F8,$D7 ; 8F43 4D 68 B6 C8 F9 65 F8 D7  Mh...e..
        db   $1F,$15,$62,$62,$EC,$59,$93,$4D ; 8F4B 1F 15 62 62 EC 59 93 4D  ..bb.Y.M
        db   $DC,$23,$EC,$F8,$92,$82,$1C,$8F ; 8F53 DC 23 EC F8 92 82 1C 8F  .#......
        db   $80,$DE,$AC,$5E,$37,$1A,$A5,$E6 ; 8F5B 80 DE AC 5E 37 1A A5 E6  ...^7...
        db   $E1,$1F,$67,$D1,$A9,$3D,$58,$9B ; 8F63 E1 1F 67 D1 A9 3D 58 9B  ..g..=X.
        db   $A9,$7C,$C5,$AA,$52,$79,$1B,$38 ; 8F6B A9 7C C5 AA 52 79 1B 38  .|..Ry.8
        db   $57,$A3,$9A,$43,$E5,$B8,$E5,$AD ; 8F73 57 A3 9A 43 E5 B8 E5 AD  W..C....
        db   $94,$BD,$EA,$A2,$62,$62,$C8,$2F ; 8F7B 94 BD EA A2 62 62 C8 2F  ....bb./
        db   $20,$59,$E7,$46,$A4,$FA,$A5,$E5 ; 8F83 20 59 E7 46 A4 FA A5 E5   Y.F....
        db   $54,$4C,$4C,$5B,$85,$BC,$A5,$F3 ; 8F8B 54 4C 4C 5B 85 BC A5 F3  TLL[....
        db   $CE,$28,$01,$E6,$AC,$4C,$59,$05 ; 8F93 CE 28 01 E6 AC 4C 59 05  .(...LY.
        db   $84,$0B,$29,$40,$0F,$35,$62,$62 ; 8F9B 84 0B 29 40 0F 35 62 62  ..)@.5bb
        db   $DC,$2D,$E8,$40,$2B,$8F,$6A,$C4 ; 8FA3 DC 2D E8 40 2B 8F 6A C4  .-.@+.j.
        db   $C5,$D8,$B7,$4A,$10,$06,$43,$53 ; 8FAB C5 D8 B7 4A 10 06 43 53  ...J..CS
        db   $65,$A1,$FD,$C2,$D0,$96,$87,$C7 ; 8FB3 65 A1 FD C2 D0 96 87 C7  e.......
        db   $BA,$CD,$79,$96,$6F,$33,$C3,$74 ; 8FBB BA CD 79 96 6F 33 C3 74  ..y.o3.t
        db   $6B,$56,$26,$2E,$C5,$BA,$50,$80 ; 8FC3 6B 56 26 2E C5 BA 50 80  kV&...P.
        db   $32,$1A,$9B,$2D,$0F,$EA,$24,$16 ; 8FCB 32 1A 9B 2D 0F EA 24 16  2..-..$.
        db   $F6,$5A,$3C,$CB,$37,$99,$E1,$BA ; 8FD3 F6 5A 3C CB 37 99 E1 BA  .Z<.7...
        db   $35,$AB,$13,$17,$62,$DD,$28,$40 ; 8FDB 35 AB 13 17 62 DD 28 40  5...b.(@
        db   $19,$0D,$4D,$96,$87,$F5,$12,$0B ; 8FE3 19 0D 4D 96 87 F5 12 0B  ..M.....
        db   $27,$CE,$65,$9B,$CC,$F0,$DD,$1A ; 8FEB 27 CE 65 9B CC F0 DD 1A  '.e.....
        db   $D5,$89,$8B,$B1,$66,$A5,$27,$E9 ; 8FF3 D5 89 8B B1 66 A5 27 E9  ....f.'.
        db   $6B,$85,$85,$58,$98,$B7,$C5,$2E ; 8FFB 6B 85 85 58 98 B7 C5 2E  k..X....
        db   $52,$05,$56,$26,$EA,$5F,$3D,$C6 ; 9003 52 05 56 26 EA 5F 3D C6  R.V&._=.
        db   $2F,$22,$10,$DC,$2C,$69,$84,$38 ; 900B 2F 22 10 DC 2C 69 84 38  /"..,i.8
        db   $87,$07,$B5,$62,$62,$DC,$2C,$40 ; 9013 87 07 B5 62 62 DC 2C 40  ...bb.,@
        db   $DF,$70,$DE,$73,$DC,$68,$72,$8B ; 901B DF 70 DE 73 DC 68 72 8B  .p.s.hr.
        db   $B9,$77,$46,$EA,$59,$13,$17,$62 ; 9023 B9 77 46 EA 59 13 17 62  .wF.Y..b
        db   $C5,$E4,$42,$05,$97,$E3,$47,$26 ; 902B C5 E4 42 05 97 E3 47 26  ..B...G&
        db   $EB,$C3,$1E,$D5,$89,$8B,$B1,$62 ; 9033 EB C3 1E D5 89 8B B1 62  .......b
        db   $F2,$21,$02,$CB,$F1,$A3,$93,$75 ; 903B F2 21 02 CB F1 A3 93 75  .!.....u
        db   $E1,$8F,$6A,$C4,$C5,$B8,$58,$93 ; 9043 E1 8F 6A C4 C5 B8 58 93  ..j...X.
        db   $FF,$CA,$4F,$D1,$EE,$B3,$5E,$B7 ; 904B FF CA 4F D1 EE B3 5E B7  ..O...^.
        db   $9F,$5A,$01,$55,$89,$8B,$3D,$FF ; 9053 9F 5A 01 55 89 8B 3D FF  .Z.U..=.
        db   $2D,$16,$5C,$DD,$99,$B4,$7D,$4E ; 905B 2D 16 5C DD 99 B4 7D 4E  -.\...}N
        db   $8C,$AF,$98,$AA,$C4,$C5,$AC,$88 ; 9063 8C AF 98 AA C4 C5 AC 88  ........
        db   $E6,$D0,$5A,$39,$34,$12,$43,$DA ; 906B E6 D0 5A 39 34 12 43 DA  ..Z94.C.
        db   $B1,$31,$67,$4F,$CC,$B5,$95,$8D ; 9073 B1 31 67 4F CC B5 95 8D  .1gO....
        db   $9E,$E1,$BC,$EE,$39,$69,$FF,$28 ; 907B 9E E1 BC EE 39 69 FF 28  ....9i.(
        db   $E1,$AC,$32,$13,$FB,$6A,$C4,$C5 ; 9083 E1 AC 32 13 FB 6A C4 C5  ..2..j..
        db   $94,$89,$36,$82,$CF,$71,$8A,$EB ; 908B 94 89 36 82 CF 71 8A EB  ..6..q..
        db   $E4,$69,$43,$31,$55,$8B,$C6,$E3 ; 9093 E4 69 43 31 55 8B C6 E3  .iC1U...
        db   $2F,$C2,$EA,$3F,$2D,$16,$14,$81 ; 909B 2F C2 EA 3F 2D 16 14 81  /..?-...
        db   $EF,$57,$EC,$C7,$EA,$C4,$C5,$9D ; 90A3 EF 57 EC C7 EA C4 C5 9D  .W......
        db   $3F,$32,$DC,$37,$9C,$BA,$8E,$29 ; 90AB 3F 32 DC 37 9C BA 8E 29  ?2.7...)
        db   $BE,$F7,$EB,$44,$9D,$54,$4C,$4C ; 90B3 BE F7 EB 44 9D 54 4C 4C  ...D.TLL
        db   $5B,$85,$BF,$36,$6C,$8F,$74,$A1 ; 90BB 5B 85 BF 36 6C 8F 74 A1  [..6l.t.
        db   $99,$66,$64,$D3,$77,$99,$E1,$BA ; 90C3 99 66 64 D3 77 99 E1 BA  .fd.w...
        db   $35,$AB,$13,$16,$E1,$6F,$CD,$9B ; 90CB 35 AB 13 16 E1 6F CD 9B  5....o..
        db   $23,$DD,$28,$66,$59,$99,$34,$DD ; 90D3 23 DD 28 66 59 99 34 DD  #.(fY.4.
        db   $E6,$78,$6E,$8D,$6A,$C4,$C5,$AC ; 90DB E6 78 6E 8D 6A C4 C5 AC  .xn.j...
        db   $88,$E6,$D0,$5B,$9F,$93,$E2,$20 ; 90E3 88 E6 D0 5B 9F 93 E2 20  ...[...
        db   $7B,$55,$13,$13,$17,$62,$D4,$7E ; 90EB 7B 55 13 13 17 62 D4 7E  {U...b.~
        db   $53,$E7,$59,$11,$CD,$A0,$B7,$3F ; 90F3 53 E7 59 11 CD A0 B7 3F  S.Y....?
        db   $27,$C4,$40,$F6,$AA,$26,$2A,$66 ; 90FB 27 C4 40 F6 AA 26 2A 66  '.@..&*f
        db   $FA,$FB,$C5,$37,$CD,$2C,$21,$A5 ; 9103 FA FB C5 37 CD 2C 21 A5  ...7.,!.
        db   $0D,$0E,$51,$77,$2C,$BE,$7C,$85 ; 910B 0D 0E 51 77 2C BE 7C 85  ..Qw,.|.
        db   $F9,$6B,$21,$09,$F8,$CC,$55,$51 ; 9113 F9 6B 21 09 F8 CC 55 51  .k!...UQ
        db   $31,$53,$35,$2E,$4C,$03,$E4,$26 ; 911B 31 53 35 2E 4C 03 E4 26  1S5.L..&
        db   $8C,$49,$FF,$E5,$27,$E9,$66,$2A ; 9123 8C 49 FF E5 27 E9 66 2A  .I..'.f*
        db   $A8,$98,$98,$BB,$16,$A6,$51,$C8 ; 912B A8 98 98 BB 16 A6 51 C8  ......Q.
        db   $71,$EB,$D4,$48,$2C,$9F,$39,$96 ; 9133 71 EB D4 48 2C 9F 39 96  q..H,.9.
        db   $6F,$33,$C3,$74,$6B,$56,$2A,$66 ; 913B 6F 33 C3 74 6B 56 2A 66  o3.tkV*f
        db   $7B,$F0,$F4,$70,$97,$BE,$94,$34 ; 9143 7B F0 F4 70 97 BE 94 34  {..p...4
        db   $39,$45,$DC,$B0,$38,$E1,$24,$0B ; 914B 39 45 DC B0 38 E1 24 0B  9E..8.$.
        db   $31,$76,$2D,$4D,$5F,$BD,$75,$51 ; 9153 31 76 2D 4D 5F BD 75 51  1v-M_.uQ
        db   $31,$00                         ; 915B 31 00                    1.
; Huffman-compressed text group(s): $0C
; Text $0180: <49>'s Attack Power doubles!<4B>
; Text $0181: <49>'s numbness wears off!
; Text $0182: <49> wakes up!
; Text $0183: <49> sucks up <47> MP point<4C>!<4B>
; Text $0184: <49> calls the most fearful thing!<4B><4B>
; Text $0185: <49> falls unconscious!
; Text $0186: An eerie fog appears out of nowhere and engulfs the area!<4B><4B>
; Text $0187: The morale of <49>'s Party is boosted!<4B><4B>
; Text $0188: Time stops!
; Text $0189: Time restarts!
; Text $018A: A hideous grumble is heard out of nowhere!<4B><4B>
; Text $018B: <49>'s MP is gone!
; Text $018C: 'Chance! <4B>Chance! <4B>Chance....'
; Text $018D: <49>'s voice echoes through the area in vain.<4B><4B>
; Text $018E: A giant bird appears out of nowhere and carries off <49>'s Party in its big claws!<4B><4B><4B>
; Text $018F: An earthquake hits!
; Text $0190: The tremor makes standing impossible!
; Text $0191: Cracks run through the ground!
; Text $0192: <49> falls into a crack!
; Text $0193: A mountainous giant,laughing hideously,appears!<4B><4B>
; Text $0194: The giant attacks!
; Text $0195: The giant withdraws laughing!
; Text $0196: <49> turns into a Metal Slime!
; Text $0197: Time reverses!
; Text $0198: Blinding lights engulf the area,and a snow white dragon appears!<4B><4B>
; Text $0199: The dragon carries off the foes!<4B>
; Text $019A: The dragon carries off <49>!<4B>
; Text $019B: <49> thinks if the battle is won,twice the usual amount of money can be made!<4B>
; Text $019C: A blinding light shines upon <49>!<4B>
; Text $019D: <49> turns into a glittering dragon!<4B>
; Text $019E: <49> uses the <48>!
; Text $019F: <49> puts on the <48>!
Bank00_TextGroup_0C:
        db   $62,$EC,$5A,$98,$EE,$B1,$B3,$D4 ; 915D 62 EC 5A 98 EE B1 B3 D4  b.Z.....
        db   $D9,$68,$7F,$7B,$29,$B3,$00,$55 ; 9165 D9 68 7F 7B 29 B3 00 55  .h.{)..U
        db   $51,$31,$31,$76,$2C,$69,$B6,$C9 ; 916D 51 31 31 76 2C 69 B6 C9  Q11v,i..
        db   $82,$2C,$D0,$5F,$96,$94,$10,$AB ; 9175 82 2C D0 5F 96 94 10 AB  .,._....
        db   $13,$16,$69,$59,$82,$C9,$F3,$56 ; 917D 13 16 69 59 82 C9 F3 56  ..iY...V
        db   $26,$2C,$49,$8D,$99,$64,$F9,$CC ; 9185 26 2C 49 8D 99 64 F9 CC  &,I..d..
        db   $B3,$32,$69,$BB,$CC,$F0,$DD,$1A ; 918D B3 32 69 BB CC F0 DD 1A  .2i.....
        db   $D5,$44,$C4,$C5,$A3,$58,$40,$B3 ; 9195 D5 44 C4 C5 A3 58 40 B3  .D...X@.
        db   $DC,$6B,$64,$9F,$20,$17,$E8,$26 ; 919D DC 6B 64 9F 20 17 E8 26  .kd. ..&
        db   $19,$EF,$C3,$A2,$AA,$25,$13,$13 ; 91A5 19 EF C3 A2 AA 25 13 13  .....%..
        db   $16,$41,$61,$02,$C9,$38,$E4,$CA ; 91AD 16 41 61 02 C9 38 E4 CA  .Aa..8..
        db   $3E,$4A,$4A,$AC,$54,$C3,$C0,$7F ; 91B5 3E 4A 4A AC 54 C3 C0 7F  >JJ.T...
        db   $83,$21,$34,$65,$F3,$E4,$2F,$CB ; 91BD 83 21 34 65 F3 E4 2F CB  .!4e../.
        db   $4A,$5F,$4A,$18,$E5,$AB,$8F,$8C ; 91C5 4A 5F 4A 18 E5 AB 8F 8C  J_J.....
        db   $A7,$EE,$07,$42,$60,$81,$67,$B8 ; 91CD A7 EE 07 42 60 81 67 B8  ...B`.g.
        db   $CB,$F0,$B5,$51,$28,$98,$BC,$6E ; 91D5 CB F0 B5 51 28 98 BC 6E  ...Q(..n
        db   $35,$B3,$F5,$80,$D2,$86,$62,$EC ; 91DD 35 B3 F5 80 D2 86 62 EC  5.....b.
        db   $5A,$9A,$BF,$7A,$F7,$0B,$59,$99 ; 91E5 5A 9A BF 7A F7 0B 59 99  Z..z..Y.
        db   $27,$1E,$D5,$44,$A2,$62,$F1,$E5 ; 91ED 27 1E D5 44 A2 62 F1 E5  '..D.b..
        db   $A3,$13,$CF,$92,$AB,$17,$8F,$2D ; 91F5 A3 13 CF 92 AB 17 8F 2D  .......-
        db   $1B,$E0,$9D,$7E,$E5,$56,$2A,$66 ; 91FD 1B E0 9D 7E E5 56 2A 66  ...~.V*f
        db   $BF,$3D,$12,$92,$D4,$7D,$36,$D9 ; 9205 BF 3D 12 92 D4 7D 36 D9  .=...}6.
        db   $80,$DC,$2D,$70,$BF,$F7,$4A,$5F ; 920D 80 DC 2D 70 BF F7 4A 5F  ..-p..J_
        db   $4A,$18,$E5,$AB,$8F,$8A,$A8,$94 ; 9215 4A 18 E5 AB 8F 8A A8 94  J.......
        db   $4C,$4C,$5D,$8B,$32,$69,$BB,$85 ; 921D 4C 4C 5D 8B 32 69 BB 85  LL].2i..
        db   $A8,$93,$15,$62,$F0,$6F,$5D,$4E ; 9225 A8 93 15 62 F0 6F 5D 4E  ...b.o]N
        db   $31,$57,$22,$5B,$D7,$53,$8C,$55 ; 922D 31 57 22 5B D7 53 8C 55  1W"[.S.U
        db   $C8,$96,$F5,$D4,$E3,$1D,$0C,$22 ; 9235 C8 96 F5 D4 E3 1D 0C 22  ......."
        db   $62,$EC,$5A,$94,$F2,$31,$84,$77 ; 923D 62 EC 5A 94 F2 31 84 77  b.Z..1.w
        db   $90,$59,$EF,$F9,$4D,$17,$CF,$71 ; 9245 90 59 EF F9 4D 17 CF 71  .Y..M..q
        db   $97,$E1,$77,$0F,$52,$5E,$1F,$74 ; 924D 97 E1 77 0F 52 5E 1F 74  ..w.R^.t
        db   $4A,$26,$2A,$66,$A3,$8A,$6F,$AC ; 9255 4A 26 2A 66 A3 8A 6F AC  J&*f..o.
        db   $F3,$FE,$E5,$F3,$E4,$2F,$CB,$4A ; 925D F3 FE E5 F3 E4 2F CB 4A  ...../.J
        db   $5F,$4A,$18,$E5,$AB,$8F,$8C,$A7 ; 9265 5F 4A 18 E5 AB 8F 8C A7  _J......
        db   $EE,$8D,$7F,$FE,$02,$D2,$82,$19 ; 926D EE 8D 7F FE 02 D2 82 19  ........
        db   $8B,$B1,$6A,$6A,$FD,$EB,$DC,$3D ; 9275 8B B1 6A 6A FD EB DC 3D  ..jj...=
        db   $C7,$2D,$67,$94,$68,$E0,$AD,$15 ; 927D C7 2D 67 94 68 E0 AD 15  .-g.h...
        db   $54,$4A,$25,$13,$15,$30,$F0,$5F ; 9285 54 4A 25 13 15 30 F0 5F  TJ%..0._
        db   $BD,$EA,$52,$55,$98,$D7,$E3,$95 ; 928D BD EA 52 55 98 D7 E3 95  ..RU....
        db   $58,$BC,$6E,$33,$FC,$5B,$3F,$D6 ; 9295 58 BC 6E 33 FC 5B 3F D6  X.n3.[?.
        db   $AB,$30,$58,$9D,$4F,$DE,$1D,$1B ; 929D AB 30 58 9D 4F DE 1D 1B  .0X.O...
        db   $96,$F9,$92,$2E,$59,$80,$AB,$13 ; 92A5 96 F9 92 2E 59 80 AB 13  ....Y...
        db   $7B,$EB,$1B,$32,$DF,$49,$E7,$BF ; 92AD 7B EB 1B 32 DF 49 E7 BF  {..2.I..
        db   $E5,$34,$5F,$3D,$C6,$A3,$F2,$93 ; 92B5 E5 34 5F 3D C6 A3 F2 93  .4_=....
        db   $F6,$AC,$4C,$59,$05,$84,$0B,$70 ; 92BD F6 AC 4C 59 05 84 0B 70  ..LY...p
        db   $DE,$72,$E8,$FE,$B1,$B3,$AB,$15 ; 92C5 DE 72 E8 FE B1 B3 AB 15  .r......
        db   $33,$5B,$29,$37,$5E,$1C,$A4,$B5 ; 92CD 33 5B 29 37 5E 1C A4 B5  3[)7^...
        db   $1C,$53,$76,$D0,$54,$D1,$7E,$1D ; 92D5 1C 53 76 D0 54 D1 7E 1D  .Sv.T.~.
        db   $1A,$FC,$F4,$4A,$4A,$15,$B6,$5F ; 92DD 1A FC F4 4A 4A 15 B6 5F  ...JJ.._
        db   $3E,$42,$FC,$AA,$A2,$51,$31,$78 ; 92E5 3E 42 FC AA A2 51 31 78  >B...Q1x
        db   $DC,$6A,$38,$A6,$F9,$5D,$D6,$36 ; 92ED DC 6A 38 A6 F9 5D D6 36  .j8..].6
        db   $65,$56,$2F,$1B,$8D,$47,$14,$DF ; 92F5 65 56 2F 1B 8D 47 14 DF  eV/..G..
        db   $35,$C7,$BF,$BF,$56,$8B,$41,$53 ; 92FD 35 C7 BF BF 56 8B 41 53  5...V.AS
        db   $45,$F8,$74,$55,$89,$8B,$3A,$7E ; 9305 45 F8 74 55 89 8B 3A 7E  E.tU..:~
        db   $65,$B8,$6F,$39,$73,$24,$3A,$C3 ; 930D 65 B8 6F 39 73 24 3A C3  e.o9s$:.
        db   $75,$E1,$CB,$45,$58,$BC,$79,$68 ; 9315 75 E1 CB 45 58 BC 79 68  u..EX.yh
        db   $DF,$14,$87,$C8,$15,$58,$9B,$B0 ; 931D DF 14 87 C8 15 58 9B B0  .....X..
        db   $E1,$FB,$C3,$A3,$43,$94,$5D,$CB ; 9325 E1 FB C3 A3 43 94 5D CB  ....C.].
        db   $03,$A1,$30,$43,$3D,$C6,$5F,$85 ; 932D 03 A1 30 43 3D C6 5F 85  ..0C=._.
        db   $6C,$A7,$EE,$5C,$47,$2D,$66,$AF ; 9335 6C A7 EE 5C 47 2D 66 AF  l..\G-f.
        db   $C7,$1B,$DF,$AD,$12,$79,$7C,$F9 ; 933D C7 1B DF AD 12 79 7C F9  .....y|.
        db   $0B,$F2,$AA,$89,$44,$C5,$E3,$71 ; 9345 0B F2 AA 89 44 C5 E3 71  ....D..q
        db   $BD,$FA,$D1,$27,$A3,$5F,$FF,$80 ; 934D BD FA D1 27 A3 5F FF 80  ...'._..
        db   $B4,$A0,$86,$7B,$8C,$84,$82,$AA ; 9355 B4 A0 86 7B 8C 84 82 AA  ...{....
        db   $89,$8B,$C6,$E3,$7B,$F5,$A2,$4F ; 935D 89 8B C6 E3 7B F5 A2 4F  ....{..O
        db   $46,$BF,$FF,$01,$69,$41,$0C,$C5 ; 9365 46 BF FF 01 69 41 0C C5  F...iA..
        db   $55,$13,$13,$16,$7B,$F0,$D9,$96 ; 936D 55 13 13 16 7B F0 D9 96  U...{...
        db   $E2,$19,$EE,$35,$95,$77,$80,$DC ; 9375 E2 19 EE 35 95 77 80 DC  ...5.w..
        db   $2C,$D4,$9B,$67,$6B,$91,$8C,$F7 ; 937D 2C D4 9B 67 6B 91 8C F7  ,..gk...
        db   $19,$24,$95,$86,$5B,$65,$26,$FA ; 9385 19 24 95 86 5B 65 26 FA  .$..[e&.
        db   $50,$D6,$C9,$8A,$F4,$6A,$7A,$C8 ; 938D 50 D6 C9 8A F4 6A 7A C8  P....jz.
        db   $D6,$AF,$A2,$AA,$26,$2A,$66,$B3 ; 9395 D6 AF A2 AA 26 2A 66 B3  ....&*f.
        db   $0E,$1F,$BC,$3A,$34,$39,$45,$DF ; 939D 0E 1F BC 3A 34 39 45 DF  ...:49E.
        db   $15,$F8,$60,$B2,$7C,$C9,$E6,$2A ; 93A5 15 F8 60 B2 7C C9 E6 2A  ..`.|..*
        db   $A8,$98,$98,$B3,$A7,$E6,$5B,$86 ; 93AD A8 98 98 B3 A7 E6 5B 86  ......[.
        db   $F3,$97,$51,$0E,$3B,$8F,$F0,$E8 ; 93B5 F3 97 51 0E 3B 8F F0 E8  ..Q.;...
        db   $DE,$FD,$68,$93,$AA,$89,$89,$8B ; 93BD DE FD 68 93 AA 89 89 8B  ..h.....
        db   $24,$81,$67,$B8,$CD,$C2,$AC,$4C ; 93C5 24 81 67 B8 CD C2 AC 4C  $.g....L
        db   $5B,$CA,$5C,$B4,$9E,$7B,$8C,$DC ; 93CD 5B CA 5C B4 9E 7B 8C DC  [.\..{..
        db   $2A,$C4                         ; 93D5 2A C4                    *.
; Huffman-compressed text group(s): $0D
; Text $01A0: <49> already has the <48> on!
; Text $01A1: <49> flings up the <48>!
; Text $01A2: The effect of the spell on <49> wears off!<4B>
; Text $01A3: <49> turns back into its original form!<4B>
; Text $01A4: <49> raises the <48> overhead.<43><40>
; Text $01A5: <49> is blown away!
; Text $01A6: The poison leaves <49>'s body!
; Text $01A7: <49> scatters the <48>!
; Text $01A8: <49> hurls the <48> into the sky!<4B>
; Text $01A9: But the <48> hits the ceiling and falls back.<4B>
; Text $01AA: <49> grinds the Leaf of World Tree and gives it to <49>!<4B>
; Text $01AB: <49> puts the <48> on a finger and meditates.<4B>
; Text $01AC: <49>'s MP is restored by <47> point<4C>!
; Text $01AD: <44>The ring silently crumbles away!
; Text $01AE: <49> gives the <48> to a companion!
; Text $01AF: <49> blows the <48>.
; Text $01B0: <49> takes out the <48>.
; Text $01B1: <49> is pleased!
; Text $01B2:
; Text $01B3: <49>'s Strength goes up <47> point<4C>!
; Text $01B4: <49>'s Agility goes up <47> point<4C>!
; Text $01B5: <49>'s Luck goes up <47> point<4C>!
; Text $01B6: <49>'s Maximum HP goes up <47> point<4C>!
; Text $01B7: <49>'s Maximum MP goes up <47> point<4C>!
; Text $01B8: <49> looks into the <48>!
; Text $01B9: The mirror reflects the image of <49>.
; Text $01BA: The true image of <49> who is disguised as <49> is seen!<4B><4B>
; Text $01BB: <49>'s Agility doubles!
; Text $01BC:
; Text $01BD: <49> comes to!
; Text $01BE: <49> crawls out of the pit!
; Text $01BF: <49>'s Party is demolished!
Bank00_TextGroup_0D:
        db   $62,$CB,$0F,$85,$F6,$BD,$75,$2C ; 93D7 62 CB 0F 85 F6 BD 75 2C  b.....u,
        db   $F7,$19,$B8,$69,$3A,$B1,$31,$64 ; 93DF F7 19 B8 69 3A B1 31 64  ...i:.1d
        db   $21,$C3,$A0,$B2,$7C,$E7,$B8,$CD ; 93E7 21 C3 A0 B2 7C E7 B8 CD  !...|...
        db   $C2,$AC,$5E,$37,$18,$20,$80,$8D ; 93EF C2 AC 5E 37 18 20 80 8D  ..^7. ..
        db   $F4,$A1,$9E,$E3,$17,$91,$08,$69 ; 93F7 F4 A1 9E E3 17 91 08 69  .......i
        db   $3C,$C5,$9A,$0B,$F2,$D2,$82,$15 ; 93FF 3C C5 9A 0B F2 D2 82 15  <.......
        db   $51,$31,$31,$67,$4F,$CC,$B5,$95 ; 9407 51 31 31 67 4F CC B5 95  Q11gO...
        db   $8D,$9E,$E1,$BC,$EE,$39,$69,$FF ; 940F 8D 9E E1 BC EE 39 69 FF  .....9i.
        db   $28,$E1,$AC,$32,$13,$FB,$6A,$A2 ; 9417 28 E1 AC 32 13 FB 6A A2  (..2..j.
        db   $62,$62,$DF,$5E,$10,$2C,$F7,$19 ; 941F 62 62 DF 5E 10 2C F7 19  bb.^.,..
        db   $B8,$69,$A4,$3F,$70,$BE,$F7,$46 ; 9427 B8 69 A4 3F 70 BE F7 46  .i.?p..F
        db   $EA,$59,$13,$16,$E1,$6B,$30,$96 ; 942F EA 59 13 16 E1 6B 30 96  .Y...k0.
        db   $8F,$2B,$4B,$5D,$58,$BC,$6E,$37 ; 9437 8F 2B 4B 5D 58 BC 6E 37  .+K]X.n7
        db   $99,$E1,$49,$E8,$05,$A4,$0B,$31 ; 943F 99 E1 49 E8 05 A4 0B 31  ..I....1
        db   $76,$2D,$66,$7D,$AE,$AC,$4C,$58 ; 9447 76 2D 66 7D AE AC 4C 58  v-f}..LX
        db   $A3,$57,$71,$F2,$CF,$71,$9B,$85 ; 944F A3 57 71 F2 CF 71 9B 85  .Wq..q..
        db   $58,$98,$B5,$D3,$F8,$16,$7B,$8C ; 9457 58 98 B5 D3 F8 16 7B 8C  X.....{.
        db   $DC,$37,$0D,$E7,$3D,$C6,$26,$75 ; 945F DC 37 0D E7 3D C6 26 75  .7..=.&u
        db   $D5,$44,$C4,$DD,$4B,$E7,$B8,$CD ; 9467 D5 44 C4 DD 4B E7 B8 CD  .D..K...
        db   $C3,$5F,$8E,$59,$EE,$34,$63,$90 ; 946F C3 5F 8E 59 EE 34 63 90  ._.Y.4c.
        db   $E1,$D1,$94,$FD,$C8,$2C,$20,$5A ; 9477 E1 D1 94 FD C8 2C 20 5A  ....., Z
        db   $CA,$C6,$CF,$BA,$26,$26,$2D,$47 ; 947F CA C6 CF BA 26 26 2D 47  ....&&-G
        db   $F8,$7E,$96,$7B,$8C,$DC,$85,$43 ; 9487 F8 7E 96 7B 8C DC 85 43  .~.{...C
        db   $4A,$19,$16,$7F,$0F,$77,$8F,$C0 ; 948F 4A 19 16 7F 0F 77 8F C0  J....w..
        db   $CA,$7E,$EA,$39,$48,$16,$E3,$E7 ; 9497 CA 7E EA 39 48 16 E3 E7  .~.9H...
        db   $9C,$C5,$55,$13,$13,$16,$F2,$97 ; 949F 9C C5 55 13 13 16 F2 97  ..U.....
        db   $2C,$F7,$19,$B8,$69,$3C,$B9,$0E ; 94A7 2C F7 19 B8 69 3C B9 0E  ,...i<..
        db   $1D,$03,$F9,$4F,$DD,$68,$F7,$8E ; 94AF 1D 03 F9 4F DD 68 F7 8E  ...O.h..
        db   $AE,$0B,$BA,$26,$26,$2E,$C5,$99 ; 94B7 AE 0B BA 26 26 2E C5 99  ...&&...
        db   $34,$DD,$C2,$DF,$04,$F3,$F1,$EE ; 94BF 34 DD C2 DF 04 F3 F1 EE  4.......
        db   $B3,$5E,$65,$9B,$CC,$F0,$DD,$1A ; 94C7 B3 5E 65 9B CC F0 DD 1A  .^e.....
        db   $D5,$89,$8F,$C6,$E3,$7F,$87,$46 ; 94CF D5 89 8F C6 E3 7F 87 46  .......F
        db   $2E,$40,$1B,$C2,$BD,$1F,$D3,$6D ; 94D7 2E 40 1B C2 BD 1F D3 6D  .@.....m
        db   $98,$02,$CA,$D2,$D7,$56,$26,$2D ; 94DF 98 02 CA D2 D7 56 26 2D  .....V&-
        db   $47,$29,$02,$CF,$71,$9B,$86,$79 ; 94E7 47 29 02 CF 71 9B 86 79  G)..q..y
        db   $CB,$A3,$9B,$7C,$A9,$F2,$4E,$AC ; 94EF CB A3 9B 7C A9 F2 4E AC  ...|..N.
        db   $4C,$5A,$CC,$25,$A2,$CF,$71,$9B ; 94F7 4C 5A CC 25 A2 CF 71 9B  LZ.%..q.
        db   $87,$78,$98,$B3,$AB,$30,$5A,$52 ; 94FF 87 78 98 B3 AB 30 5A 52  .x...0ZR
        db   $F9,$EE,$33,$70,$EF,$13,$16,$E1 ; 9507 F9 EE 33 70 EF 13 16 E1  ..3p....
        db   $6F,$30,$0A,$43,$DA,$B1,$44,$C5 ; 950F 6F 30 0A 43 DA B1 44 C5  o0.C..D.
        db   $D8,$B7,$5D,$FE,$0E,$87,$BE,$A2 ; 9517 D8 B7 5D FE 0E 87 BE A2  ..].....
        db   $41,$64,$F9,$CC,$B3,$79,$9E,$1B ; 951F 41 64 F9 CC B3 79 9E 1B  Ad...y..
        db   $A3,$5A,$B1,$31,$76,$2D,$4C,$A3 ; 9527 A3 5A B1 31 76 2D 4C A3  .Z.1v-L.
        db   $90,$E3,$D7,$A8,$90,$59,$3E,$73 ; 952F 90 E3 D7 A8 90 59 3E 73  .....Y>s
        db   $2C,$DE,$67,$86,$E8,$D6,$AC,$4C ; 9537 2C DE 67 86 E8 D6 AC 4C  ,.g....L
        db   $5D,$8B,$37,$29,$8D,$9E,$A2,$41 ; 953F 5D 8B 37 29 8D 9E A2 41  ].7)...A
        db   $64,$F9,$CC,$B3,$79,$9E,$1B,$A3 ; 9547 64 F9 CC B3 79 9E 1B A3  d...y...
        db   $5A,$B1,$31,$76,$2C,$C9,$56,$5F ; 954F 5A B1 31 76 2C C9 56 5F  Z.1v,.V_
        db   $96,$A6,$DC,$8F,$4D,$D4,$48,$2C ; 9557 96 A6 DC 8F 4D D4 48 2C  ....M.H,
        db   $9F,$39,$96,$6F,$33,$C3,$74,$6B ; 955F 9F 39 96 6F 33 C3 74 6B  .9.o3.tk
        db   $56,$26,$2E,$C5,$99,$2A,$CB,$F2 ; 9567 56 26 2E C5 99 2A CB F2  V&...*..
        db   $D4,$DB,$99,$34,$DD,$44,$82,$C9 ; 956F D4 DB 99 34 DD 44 82 C9  ...4.D..
        db   $F3,$99,$66,$F3,$3C,$37,$46,$B5 ; 9577 F3 99 66 F3 3C 37 46 B5  ..f.<7F.
        db   $62,$62,$D0,$99,$66,$5B,$86,$F3 ; 957F 62 62 D0 99 66 5B 86 F3  bb..f[..
        db   $9E,$E3,$37,$0A,$B1,$78,$DC,$6B ; 9587 9E E3 37 0A B1 78 DC 6B  ..7..x.k
        db   $79,$FF,$CF,$F7,$C2,$10,$11,$B9 ; 958F 79 FF CF F7 C2 10 11 B9  y.......
        db   $67,$B8,$DC,$B5,$68,$1A,$50,$CC ; 9597 67 B8 DC B5 68 1A 50 CC  g...h.P.
        db   $5D,$E2,$F1,$B8,$CF,$F4,$8D,$CB ; 959F 5D E2 F1 B8 CF F4 8D CB  ].......
        db   $56,$81,$A5,$0C,$C5,$9A,$BC,$EE ; 95A7 56 81 A5 0C C5 9A BC EE  V.......
        db   $16,$F7,$85,$42,$78,$43,$DC,$A5 ; 95AF 16 F7 85 42 78 43 DC A5  ...BxC..
        db   $98,$B7,$0B,$10,$07,$55,$12,$89 ; 95B7 98 B7 0B 10 07 55 12 89  .....U..
        db   $89,$8B,$B1,$6A,$65,$1C,$87,$1E ; 95BF 89 8B B1 6A 65 1C 87 1E  ...je...
        db   $BD,$EC,$A6,$CC,$01,$55,$8A,$26 ; 95C7 BD EC A6 CC 01 55 8A 26  .....U.&
        db   $2D,$1C,$DA,$0B,$3C,$D5,$89,$8B ; 95CF 2D 1C DA 0B 3C D5 89 8B  -...<...
        db   $47,$F5,$6A,$05,$A5,$2F,$A5,$0C ; 95D7 47 F5 6A 05 A5 2F A5 0C  G.j../..
        db   $F7,$1B,$CF,$1E,$AC,$4C,$5D,$8B ; 95DF F7 1B CF 1E AC 4C 5D 8B  .....L].
        db   $53,$57,$EF,$5E,$E1,$6F,$45,$B3 ; 95E7 53 57 EF 5E E1 6F 45 B3  SW.^.oE.
        db   $0E,$15,$C7,$B5,$62,$00         ; 95EF 0E 15 C7 B5 62 00        ....b.
; Huffman-compressed text group(s): $0E
; Text $01C0:
; Text $01C1:
; Text $01C2: <49> walks away downcast!
; Text $01C3: Gained <47> gold piece<4C>!
; Text $01C4: <49> finds <47> additional gold piece<4C>!
; Text $01C5: The foes leave a treasure chest behind!
; Text $01C6: <49> leaves a treasure chest behind!
; Text $01C7: <49> has a treasure chest!<44>
; Text $01C8: The foes have a treasure chest!<44>
; Text $01C9: <49> opens the treasure chest!<44>
; Text $01CA: mun
; Text $01CB:
; Text $01CC: Sorry to inform you but Adventure Log <47> has been erased.
; Text $01CD: Bank <47>
; Text $01CE: Fank <47>
; Text $01CF: p1 <47>
; Text $01D0: Oops! No damage to <49>.<43><40>
; Text $01D1: Wow! <49> splits!
; Text $01D2: <49>'s Level goes up!
; Text $01D3: <44>Strength goes up <47> point<4C>!
; Text $01D4: <44>Agility goes up <47> point<4C>!
; Text $01D5: <44>Vitality goes up <47> point<4C>!
; Text $01D6: <44>Intelligence goes up <47> point<4C>!
; Text $01D7: <44>Luck goes up <47> point<4C>!
; Text $01D8: <44>The Maximum HP goes up <47> point<4C>!
; Text $01D9: <44>The Maximum MP goes up <47> point<4C>!
; Text $01DA: <44>Learns the spell,<4A>!
; Text $01DB: The foes attack before you're ready!<4B>
; Text $01DC: <49> attacks before you're ready!<4B>
; Text $01DD: The foes suddenly attack!<4B>
; Text $01DE: <49> suddenly attacks!<4B>
; Text $01DF: But the foes haven't seen you!<4B>
Bank00_TextGroup_0E:
        db   $8A,$26,$2C,$D2,$C1,$99,$65,$69 ; 95F5 8A 26 2C D2 C1 99 65 69  .&,...ei
        db   $6B,$DE,$CB,$47,$1A,$93,$D5,$8A ; 95FD 6B DE CB 47 1A 93 D5 8A  k..G....
        db   $A4,$5E,$18,$F7,$32,$CD,$44,$C3 ; 9605 A4 5E 18 F7 32 CD 44 C3  .^..2.D.
        db   $DD,$E7,$82,$30,$8D,$6A,$C4,$C5 ; 960D DD E7 82 30 8D 6A C4 C5  ...0.j..
        db   $90,$E1,$FA,$59,$96,$65,$F7,$DE ; 9615 90 E1 FA 59 96 65 F7 DE  ...Y.e..
        db   $3F,$24,$D6,$1A,$89,$87,$BB,$CF ; 961D 3F 24 D6 1A 89 87 BB CF  ?$......
        db   $04,$61,$1A,$D5,$8B,$C6,$E3,$21 ; 9625 04 61 1A D5 8B C6 E3 21  .a.....!
        db   $20,$B4,$02,$D2,$19,$73,$FC,$29 ; 962D 20 B4 02 D2 19 73 FC 29   ....s.)
        db   $27,$E3,$47,$70,$4F,$AC,$8B,$F0 ; 9635 27 E3 47 70 4F AC 8B F0  '.GpO...
        db   $FD,$AB,$13,$16,$80,$5A,$40,$B2 ; 963D FD AB 13 16 80 5A 40 B2  .....Z@.
        db   $E7,$F8,$52,$4F,$C6,$8E,$E0,$9F ; 9645 E7 F8 52 4F C6 8E E0 9F  ..RO....
        db   $59,$17,$E1,$FB,$56,$26,$2D,$75 ; 964D 59 17 E1 FB 56 26 2D 75  Y...V&-u
        db   $2C,$B9,$FE,$14,$93,$F1,$A3,$B8 ; 9655 2C B9 FE 14 93 F1 A3 B8  ,.......
        db   $27,$AA,$C7,$17,$8D,$C6,$42,$41 ; 965D 27 AA C7 17 8D C6 42 41  '.....BA
        db   $6B,$AD,$21,$97,$3F,$C2,$92,$7E ; 9665 6B AD 21 97 3F C2 92 7E  k.!.?..~
        db   $34,$77,$04,$F5,$58,$E2,$62,$D3 ; 966D 34 77 04 F5 58 E2 62 D3  4w..X.b.
        db   $E4,$19,$67,$B8,$CF,$F0,$A4,$9F ; 9675 E4 19 67 B8 CF F0 A4 9F  ..g.....
        db   $8D,$1D,$C1,$3D,$56,$38,$AD,$49 ; 967D 8D 1D C1 3D 56 38 AD 49  ...=V8.I
        db   $C5,$17,$5E,$7F,$FA,$F3,$CE,$E1 ; 9685 C5 17 5E 7F FA F3 CE E1  ..^.....
        db   $A1,$3F,$B7,$57,$29,$D6,$52,$FA ; 968D A1 3F B7 57 29 D6 52 FA  .?.W).R.
        db   $99,$ED,$20,$6E,$9F,$8C,$DC,$CD ; 9695 99 ED 20 6E 9F 8C DC CD  .. n....
        db   $19,$96,$6B,$A9,$6B,$20,$1E,$1F ; 969D 19 96 6B A9 6B 20 1E 1F  ..k.k ..
        db   $52,$1E,$F7,$89,$BA,$A6,$CF,$32 ; 96A5 52 1E F7 89 BA A6 CF 32  R......2
        db   $C8,$99,$6A,$9B,$3C,$CB,$22,$F2 ; 96AD C8 99 6A 9B 3C CB 22 F2  ..j.<.".
        db   $8D,$3C,$CB,$22,$EB,$67,$C9,$55 ; 96B5 8D 3C CB 22 EB 67 C9 55  .<.".g.U
        db   $CC,$A9,$DE,$AD,$AB,$40,$CF,$39 ; 96BD CC A9 DE AD AB 40 CF 39  .....@.9
        db   $8B,$BA,$37,$52,$C8,$91,$65,$AA ; 96C5 8B BA 37 52 C8 91 65 AA  ..7R..e.
        db   $B9,$8B,$17,$98,$71,$CA,$AC,$4C ; 96CD B9 8B 17 98 71 CA AC 4C  ....q..L
        db   $5D,$8B,$37,$22,$90,$86,$A2,$41 ; 96D5 5D 8B 37 22 90 86 A2 41  ].7"...A
        db   $64,$F9,$AB,$13,$1F,$5D,$FE,$0E ; 96DD 64 F9 AB 13 1F 5D FE 0E  d....]..
        db   $87,$BE,$A2,$41,$64,$F9,$CC,$B3 ; 96E5 87 BE A2 41 64 F9 CC B3  ...Ad...
        db   $79,$9E,$1B,$A3,$5A,$B1,$31,$D3 ; 96ED 79 9E 1B A3 5A B1 31 D3  y...Z.1.
        db   $28,$E4,$38,$F5,$EA,$24,$16,$4F ; 96F5 28 E4 38 F5 EA 24 16 4F  (.8..$.O
        db   $9C,$CB,$37,$99,$E1,$BA,$35,$AB ; 96FD 9C CB 37 99 E1 BA 35 AB  ..7...5.
        db   $13,$1B,$71,$71,$D6,$1C,$7A,$F5 ; 9705 13 1B 71 71 D6 1C 7A F5  ..qq..z.
        db   $12,$0B,$27,$CE,$65,$9B,$CC,$F0 ; 970D 12 0B 27 CE 65 9B CC F0  ..'.e...
        db   $DD,$1A,$D5,$89,$8E,$C1,$B8,$84 ; 9715 DD 1A D5 89 8E C1 B8 84  ........
        db   $39,$40,$38,$C6,$A2,$41,$64,$F9 ; 971D 39 40 38 C6 A2 41 64 F9  9@8..Ad.
        db   $CC,$B3,$79,$9E,$1B,$A3,$5A,$B1 ; 9725 CC B3 79 9E 1B A3 5A B1  ..y...Z.
        db   $31,$B7,$29,$8D,$9E,$A2,$41,$64 ; 972D 31 B7 29 8D 9E A2 41 64  1.)...Ad
        db   $F9,$CC,$B3,$79,$9E,$1B,$A3,$5A ; 9735 F9 CC B3 79 9E 1B A3 5A  ...y...Z
        db   $B1,$31,$F8,$DC,$66,$4A,$B2,$FC ; 973D B1 31 F8 DC 66 4A B2 FC  .1..fJ..
        db   $B5,$36,$E4,$7A,$6E,$A2,$41,$64 ; 9745 B5 36 E4 7A 6E A2 41 64  .6.zn.Ad
        db   $F9,$CC,$B3,$79,$9E,$1B,$A3,$5A ; 974D F9 CC B3 79 9E 1B A3 5A  ...y...Z
        db   $B1,$31,$F8,$DC,$66,$4A,$B2,$FC ; 9755 B1 31 F8 DC 66 4A B2 FC  .1..fJ..
        db   $B5,$36,$E6,$4D,$37,$51,$20,$B2 ; 975D B5 36 E6 4D 37 51 20 B2  .6.M7Q .
        db   $7C,$E6,$59,$BC,$CF,$0D,$D1,$AD ; 9765 7C E6 59 BC CF 0D D1 AD  |.Y.....
        db   $58,$98,$DB,$90,$BF,$32,$CF,$71 ; 976D 58 98 DB 90 BF 32 CF 71  X....2.q
        db   $8B,$C8,$84,$1B,$54,$BC,$AB,$17 ; 9775 8B C8 84 1B 54 BC AB 17  ....T...
        db   $8D,$C6,$42,$41,$65,$77,$58,$D9 ; 977D 8D C6 42 41 65 77 58 D9  ..BAewX.
        db   $EB,$21,$09,$F8,$D5,$CA,$7B,$7C ; 9785 EB 21 09 F8 D5 CA 7B 7C  .!....{|
        db   $6F,$85,$F6,$BA,$A8,$98,$98,$B2 ; 978D 6F 85 F6 BA A8 98 98 B2  o.......
        db   $BB,$AC,$6C,$CB,$59,$08,$4F,$C6 ; 9795 BB AC 6C CB 59 08 4F C6  ..l.Y.O.
        db   $AE,$53,$DB,$E3,$7C,$2F,$B5,$D5 ; 979D AE 53 DB E3 7C 2F B5 D5  .S..|/..
        db   $44,$C5,$E3,$71,$90,$90,$58,$93 ; 97A5 44 C5 E3 71 90 90 58 93  D..q..X.
        db   $EF,$A0,$E1,$5E,$57,$75,$8D,$9D ; 97AD EF A0 E1 5E 57 75 8D 9D  ...^Wu..
        db   $54,$4C,$4C,$58,$93,$EF,$A0,$E1 ; 97B5 54 4C 4C 58 93 EF A0 E1  TLLX....
        db   $5E,$57,$75,$8D,$99,$55,$44,$C4 ; 97BD 5E 57 75 8D 99 55 44 C4  ^Wu..UD.
        db   $DD,$4B,$E7,$B8,$C8,$48,$2D,$75 ; 97C5 DD 4B E7 B8 C8 48 2D 75  .K...H-u
        db   $A4,$0F,$B3,$E2,$00,$F5,$72,$9A ; 97CD A4 0F B3 E2 00 F5 72 9A  ......r.
        db   $A8,$98,$80                     ; 97D5 A8 98 80                 ...
; Huffman-compressed text group(s): $0F
; Text $01E0: But <49> hasn't seen you!<4B>
; Text $01E1: But the foes are bewildered!<4B>
; Text $01E2: But <49> is bewildered!<4B>
; Text $01E3: <49> diverts the foes' attention and lets the Party flee!<4B><4B>
; Text $01E4: <49> diverts <49>'s attention and lets the Party flee!<4B><4B>
; Text $01E5: <49>'s Party becomes ironized,impervious to attack!<4B>
; Text $01E6: <49> becomes ironized,impervious to attack!<4B>
; Text $01E7: <49> smiles affectionately.
; Text $01E8: The body is immobile due to a curse!
; Text $01E9: <49> is smiling!
; Text $01EA: <49> throws away the <48>!
; Text $01EB: The foes are bewildered!
; Text $01EC: <49> is bewildered!
; Text $01ED: <49>'s Party is perplexed!
; Text $01EE: <49> is perplexed!
; Text $01EF: <49> flees!
; Text $01F0: <49> builds up power!
; Text $01F1: <49> uses a Medical Herb!
; Text $01F2: <49> gives the Leaf of World Tree to <49>!
; Text $01F3: <49> hurls the Wing of Wyvern into the sky!
; Text $01F4: <49> swings the Sword of Lethargy!
; Text $01F5: <49> swings the Staff of Thunder!
; Text $01F6: <49> throws the Boomerang!
; Text $01F7: <49> holds the Shield of Strength overhead!
; Text $01F8: <49> holds the Sphere of Silence overhead!
; Text $01F9: The effect of Ironize on <49>'s Party wears off!
; Text $01FA: The effect of Ironize on <49> wears off!
; Text $01FB:
; Text $01FC:
; Text $01FD:
; Text $01FE:
; Text $01FF:
Bank00_TextGroup_0F:
        db   $6E,$A5,$F3,$16,$BA,$91,$F6,$7C ; 97D8 6E A5 F3 16 BA 91 F6 7C  n......|
        db   $40,$1E,$AE,$53,$55,$13,$13,$75 ; 97E0 40 1E AE 53 55 13 13 75  @..SU..u
        db   $2F,$9E,$E3,$21,$20,$B2,$FC,$6B ; 97E8 2F 9E E3 21 20 B2 FC 6B  /..! ..k
        db   $21,$AE,$43,$D1,$F1,$ED,$54,$4C ; 97F0 21 AE 43 D1 F1 ED 54 4C  !.C...TL
        db   $4D,$D4,$BE,$62,$DC,$2D,$64,$35 ; 97F8 4D D4 BE 62 DC 2D 64 35  M..b.-d5
        db   $C8,$7A,$3E,$3D,$AA,$89,$89,$8B ; 9800 C8 7A 3E 3D AA 89 89 8B  .z>=....
        db   $7B,$CA,$43,$EE,$59,$EE,$32,$12 ; 9808 7B CA 43 EE 59 EE 32 12  {.C.Y.2.
        db   $0B,$B6,$57,$70,$6F,$C9,$3C,$A7 ; 9810 0B B6 57 70 6F C9 3C A7  ..Wpo.<.
        db   $EE,$80,$72,$CF,$71,$A9,$AB,$F7 ; 9818 EE 80 72 CF 71 A9 AB F7  ..r.q...
        db   $AF,$21,$00,$2A,$A2,$51,$31,$31 ; 9820 AF 21 00 2A A2 51 31 31  .!.*.Q11
        db   $6F,$79,$48,$7D,$CB,$31,$76,$2C ; 9828 6F 79 48 7D CB 31 76 2C  oyH}.1v,
        db   $AE,$E0,$DF,$92,$79,$4F,$DD,$00 ; 9830 AE E0 DF 92 79 4F DD 00  ....yO..
        db   $E5,$9E,$E3,$53,$57,$EF,$5E,$42 ; 9838 E5 9E E3 53 57 EF 5E 42  ...SW.^B
        db   $00,$55,$44,$A2,$62,$62,$EC,$5A ; 9840 00 55 44 A2 62 62 EC 5A  .UD.bb.Z
        db   $9A,$BF,$7A,$F5,$91,$1C,$DA,$0B ; 9848 9A BF 7A F5 91 1C DA 0B  ..z.....
        db   $73,$F2,$7C,$44,$0F,$5B,$72,$DF ; 9850 73 F2 7C 44 0F 5B 72 DF  s.|D.[r.
        db   $23,$F4,$B9,$29,$2C,$F3,$95,$DD ; 9858 23 F4 B9 29 2C F3 95 DD  #..),...
        db   $63,$67,$55,$13,$13,$16,$B2,$23 ; 9860 63 67 55 13 13 16 B2 23  cgU....#
        db   $9B,$41,$6E,$7E,$4F,$88,$81,$EB ; 9868 9B 41 6E 7E 4F 88 81 EB  .An~O...
        db   $6E,$5B,$E4,$7E,$97,$25,$25,$9E ; 9870 6E 5B E4 7E 97 25 25 9E  n[.~.%%.
        db   $72,$BB,$AC,$6C,$EA,$A2,$62,$62 ; 9878 72 BB AC 6C EA A2 62 62  r..l..bb
        db   $C5,$6F,$20,$0B,$2A,$08,$08,$DF ; 9880 C5 6F 20 0B 2A 08 08 DF  .o .*...
        db   $92,$6A,$E2,$15,$F7,$8B,$C6,$E3 ; 9888 92 6A E2 15 F7 8B C6 E3  .j......
        db   $59,$9F,$6B,$DC,$2D,$CB,$6D,$9B ; 9890 59 9F 6B DC 2D CB 6D 9B  Y.k.-.m.
        db   $3C,$80,$DE,$A4,$67,$9C,$BA,$34 ; 9898 3C 80 DE A4 67 9C BA 34  <...g..4
        db   $FC,$85,$58,$98,$B7,$0B,$15,$BC ; 98A0 FC 85 58 98 B7 0B 15 BC  ..X.....
        db   $87,$0E,$8A,$B1,$31,$67,$BF,$E5 ; 98A8 87 0E 8A B1 31 67 BF E5  ....1g..
        db   $A2,$CA,$D2,$D7,$9E,$E3,$37,$0A ; 98B0 A2 CA D2 D7 9E E3 37 0A  ......7.
        db   $B1,$78,$DC,$64,$24,$16,$5F,$8D ; 98B8 B1 78 DC 64 24 16 5F 8D  .x.d$._.
        db   $64,$35,$C8,$7A,$3E,$3D,$AB,$13 ; 98C0 64 35 C8 7A 3E 3D AB 13  d5.z>=..
        db   $16,$E1,$6B,$21,$AE,$43,$D1,$F1 ; 98C8 16 E1 6B 21 AE 43 D1 F1  ..k!.C..
        db   $ED,$58,$98,$BB,$16,$A6,$AF,$DE ; 98D0 ED 58 98 BB 16 A6 AF DE  .X......
        db   $BD,$C2,$DE,$47,$FC,$C0,$32,$E3 ; 98D8 BD C2 DE 47 FC C0 32 E3  ...G..2.
        db   $DA,$B1,$31,$6E,$16,$F2,$3F,$E6 ; 98E0 DA B1 31 6E 16 F2 3F E6  ..1n..?.
        db   $01,$97,$1E,$D5,$89,$8B,$21,$00 ; 98E8 01 97 1E D5 89 8B 21 00  ......!.
        db   $0A,$AC,$4C,$5A,$CA,$79,$0F,$4B ; 98F0 0A AC 4C 5A CA 79 0F 4B  ..LZ.y.K
        db   $27,$CE,$F3,$2D,$0F,$D5,$89,$8B ; 98F8 27 CE F3 2D 0F D5 89 8B  '..-....
        db   $24,$81,$65,$CC,$91,$EF,$23,$58 ; 9900 24 81 65 CC 91 EF 23 58  $.e...#X
        db   $64,$71,$FB,$35,$62,$62,$D4,$72 ; 9908 64 71 FB 35 62 62 D4 72  dq.5bb.r
        db   $90,$2C,$F7,$19,$B9,$0A,$86,$94 ; 9910 90 2C F7 19 B9 0A 86 94  .,......
        db   $32,$2C,$FE,$1E,$EF,$1F,$81,$9E ; 9918 32 2C FE 1E EF 1F 81 9E  2,......
        db   $73,$15,$58,$98,$B5,$D3,$F8,$16 ; 9920 73 15 58 98 B5 D3 F8 16  s.X.....
        db   $7B,$8C,$8B,$C3,$A3,$4A,$19,$16 ; 9928 7B 8C 8B C3 A3 4A 19 16  {....J..
        db   $BA,$43,$E7,$B8,$6F,$39,$EE,$31 ; 9930 BA 43 E7 B8 6F 39 EE 31  .C..o9.1
        db   $33,$AE,$AC,$4C,$58,$9A,$E1,$D0 ; 9938 33 AE AC 4C 58 9A E1 D0  3..LX...
        db   $59,$EE,$37,$5D,$A9,$FF,$BA,$50 ; 9940 59 EE 37 5D A9 FF BA 50  Y.7]...P
        db   $CD,$C8,$7B,$AF,$E8,$AE,$AC,$4C ; 9948 CD C8 7B AF E8 AE AC 4C  ..{....L
        db   $58,$9A,$E1,$D0,$59,$EE,$37,$5D ; 9950 58 9A E1 D0 59 EE 37 5D  X...Y.7]
        db   $D5,$04,$34,$A1,$BC,$6E,$93,$F4 ; 9958 D5 04 34 A1 BC 6E 93 F4  ..4..n..
        db   $7E,$AC,$4C,$59,$EF,$F9,$68,$B3 ; 9960 7E AC 4C 59 EF F9 68 B3  ~.LY..h.
        db   $DC,$66,$EC,$CD,$A3,$EA,$74,$55 ; 9968 DC 66 EC CD A3 EA 74 55  .f....tU
        db   $89,$8B,$5E,$61,$E9,$67,$B8,$DD ; 9970 89 8B 5E 61 E9 67 B8 DD  ..^a.g..
        db   $7B,$F0,$43,$DD,$28,$6E,$BB,$FC ; 9978 7B F0 43 DD 28 6E BB FC  {.C.(n..
        db   $1D,$0F,$7D,$34,$87,$EE,$17,$DA ; 9980 1D 0F 7D 34 87 EE 17 DA  ..}4....
        db   $B1,$31,$6B,$CC,$3D,$2C,$F7,$1B ; 9988 B1 31 6B CC 3D 2C F7 1B  .1k.=,..
        db   $AF,$E6,$E3,$E3,$4A,$1B,$AF,$C8 ; 9990 AF E6 E3 E3 4A 1B AF C8  ....J...
        db   $03,$8C,$69,$A4,$3F,$70,$BE,$D5 ; 9998 03 8C 69 A4 3F 70 BE D5  ..i.?p..
        db   $8B,$C6,$E3,$04,$10,$11,$BE,$94 ; 99A0 8B C6 E3 04 10 11 BE 94  ........
        db   $35,$8F,$C9,$F1,$10,$34,$9E,$62 ; 99A8 35 8F C9 F1 10 34 9E 62  5....4.b
        db   $EC,$5A,$9A,$BF,$7A,$F3,$41,$7E ; 99B0 EC 5A 9A BF 7A F3 41 7E  .Z..z.A~
        db   $5A,$50,$42,$AC,$5E,$37,$18,$20 ; 99B8 5A 50 42 AC 5E 37 18 20  ZPB.^7.
        db   $80,$8D,$F4,$A1,$AC,$7E,$4F,$88 ; 99C0 80 8D F4 A1 AC 7E 4F 88  .....~O.
        db   $81,$A4,$F3,$16,$68,$2F,$CB,$4A ; 99C8 81 A4 F3 16 68 2F CB 4A  ....h/.J
        db   $08,$55,$8A,$28,$A2,$8A,$20     ; 99D0 08 55 8A 28 A2 8A 20     .U.(..
; Huffman-compressed text group(s): $10
; Text $0200: 'This is an item shop! What would you like to do?'
; Text $0201: 'What would you like?'
; Text $0202: 'I'm afraid you don't have enough money to buy that.'
; Text $0203: 'The <48>,right? Thank you.'<44>
; Text $0204: 'Who's going to take this?'
; Text $0205: 'But <49> can't carry any more things.'<44>
; Text $0206: 'Come back after reducing the number of things you're carrying.'
; Text $0207: 'Shall I give this to someone else?'
; Text $0208: '<49> can't use this.Do you still want it?'
; Text $0209: '<49> is in the wagon? I'll deliver it to the wagon then.'
; Text $020A: 'I'll put this in <49>'s Tool Bag then.'
; Text $020B: 'Here you go,<49>!'
; Text $020C: <49> doesn't seem to want to leave things.
; Text $020D: 'Whose items can you sell me?'
; Text $020E: 'Huh? <49> has no items.'
; Text $020F: 'What can you sell me?'
; Text $0210: 'The <48>? Hmm....'<44>
; Text $0211: 'It's hard to appraise that.'<4F>I think you'd better not sell or discard things like that.'
; Text $0212: 'I'll pay <47> gold piece<4C> for that.Is that OK?'
; Text $0213: 'Oh,you changed your mind? Too bad....'
; Text $0214: 'Thank you for selling it to me.'
; Text $0215: 'I'll get the item from <49> in the wagon then.'
; Text $0216: It won't come off due to a curse!<4F>I can't buy it then.'
; Text $0217:
; Text $0218: 'Oh,you changed your mind.'
; Text $0219: 'Anything else?'
; Text $021A: 'Please come back again!'
; Text $021B: 'Welcome to the House of Healing.What can I do for you?'
; Text $021C: 'Welcome to the House of Healing.It's so late at night.What do you need?'
; Text $021D: 'Who is to be treated?'
; Text $021E: 'But <49> is not afflicted by poison.'
; Text $021F: 'Now I'll administer the antidote to <49>.'
Bank00_TextGroup_10:
        db   $F0,$F1,$BF,$0B,$70,$B2,$9E,$E3 ; 99D7 F0 F1 BF 0B 70 B2 9E E3  ....p...
        db   $8B,$71,$5E,$7C,$D5,$C8,$B7,$57 ; 99DF 8B 71 5E 7C D5 C8 B7 57  .q^|...W
        db   $CD,$4A,$61,$EE,$AE,$53,$A1,$C6 ; 99E7 CD 4A 61 EE AE 53 A1 C6  .Ja..S..
        db   $63,$3C,$EF,$66,$9E,$A2,$2F,$04 ; 99EF 63 3C EF 66 9E A2 2F 04  c<.f../.
        db   $5B,$AB,$E6,$A5,$30,$F7,$57,$29 ; 99F7 5B AB E6 A5 30 F7 57 29  [...0.W)
        db   $D0,$E3,$31,$4F,$51,$17,$85,$8E ; 99FF D0 E3 31 4F 51 17 85 8E  ..1OQ...
        db   $D6,$E5,$43,$EB,$CF,$75,$72,$9D ; 9A07 D6 E5 43 EB CF 75 72 9D  ..C..ur.
        db   $EC,$9F,$67,$D7,$5A,$43,$03,$94 ; 9A0F EC 9F 67 D7 5A 43 03 94  ..g.ZC..
        db   $D1,$7D,$6C,$98,$AF,$3C,$EB,$29 ; 9A17 D1 7D 6C 98 AF 3C EB 29  .}l..<.)
        db   $AF,$3D,$D5,$D8,$45,$E1,$E3,$71 ; 9A1F AF 3D D5 D8 45 E1 E3 71  .=..E..q
        db   $9B,$83,$6F,$F2,$8B,$BD,$3E,$F1 ; 9A27 9B 83 6F F2 8B BD 3E F1  ..o...>.
        db   $BA,$9B,$3D,$5C,$A5,$83,$1C,$5E ; 9A2F BA 9B 3D 5C A5 83 1C 5E  ..=\...^
        db   $08,$B7,$9E,$C5,$A8,$9E,$1D,$19 ; 9A37 08 B7 9E C5 A8 9E 1D 19  ........
        db   $E7,$3A,$B3,$19,$EF,$C2,$A7,$A8 ; 9A3F E7 3A B3 19 EF C2 A7 A8  .:......
        db   $8B,$C1,$BA,$97,$CC,$5A,$35,$3E ; 9A47 8B C1 BA 97 CC 5A 35 3E  .....Z5>
        db   $CF,$A3,$5F,$FE,$BC,$A7,$5E,$B6 ; 9A4F CF A3 5F FE BC A7 5E B6  .._...^.
        db   $7E,$33,$DF,$87,$41,$30,$63,$8B ; 9A57 7E 33 DF 87 41 30 63 8B  ~3..A0c.
        db   $C1,$BD,$36,$8D,$65,$63,$67,$95 ; 9A5F C1 BD 36 8D 65 63 67 95  ..6.ecg.
        db   $07,$1F,$DF,$1E,$A6,$3E,$1D,$19 ; 9A67 07 1F DF 1E A6 3E 1D 19  .....>..
        db   $EE,$31,$A6,$DB,$23,$FA,$50,$CF ; 9A6F EE 31 A6 DB 23 FA 50 CF  .1..#.P.
        db   $7E,$1D,$05,$AB,$94,$F6,$F8,$D1 ; 9A77 7E 1D 05 AB 94 F6 F8 D1  ~.......
        db   $AF,$FF,$5F,$0E,$86,$11,$78,$75 ; 9A7F AF FF 5F 0E 86 11 78 75  .._...xu
        db   $EE,$B0,$86,$B1,$A8,$E5,$21,$9E ; 9A87 EE B0 86 B1 A8 E5 21 9E  ......!.
        db   $FC,$2C,$F3,$8A,$6D,$12,$63,$08 ; 9A8F FC 2C F3 8A 6D 12 63 08  .,..m.c.
        db   $10,$A7,$A8,$8B,$C1,$8B,$46,$A7 ; 9A97 10 A7 A8 8B C1 8B 46 A7  ......F.
        db   $D9,$F2,$48,$67,$BF,$0B,$BF,$4B ; 9A9F D9 F2 48 67 BF 0B BF 4B  ..Hg...K
        db   $3A,$B9,$4E,$27,$E4,$21,$9A,$53 ; 9AA7 3A B9 4E 27 E4 21 9A 53  :.N'.!.S
        db   $7D,$C7,$A7,$A8,$8B,$C1,$8B,$70 ; 9AAF 7D C7 A7 A8 8B C1 8B 70  }......p
        db   $B7,$0F,$3D,$C6,$69,$68,$93,$A7 ; 9AB7 B7 0F 3D C6 69 68 93 A7  ..=.ih..
        db   $D6,$3B,$42,$1B,$D1,$0E,$52,$1F ; 9ABF D6 3B 42 1B D1 0E 52 1F  .;B...R.
        db   $DC,$7C,$F3,$9E,$E3,$34,$B4,$49 ; 9AC7 DC 7C F3 9E E3 34 B4 49  .|...4.I
        db   $E7,$B8,$36,$11,$78,$58,$ED,$08 ; 9ACF E7 B8 36 11 78 58 ED 08  ..6.xX..
        db   $6F,$29,$7C,$F7,$E1,$6E,$1E,$62 ; 9AD7 6F 29 7C F7 E1 6E 1E 62  o)|..n.b
        db   $EC,$5B,$C6,$66,$19,$BA,$B4,$67 ; 9ADF EC 5B C6 66 19 BA B4 67  .[.f...g
        db   $B8,$36,$11,$78,$23,$8F,$8D,$5C ; 9AE7 B8 36 11 78 23 8F 8D 5C  .6.x#..\
        db   $A7,$51,$2D,$98,$AA,$D4,$44,$C5 ; 9AEF A7 51 2D 98 AA D4 44 C5  .Q-...D.
        db   $BD,$90,$47,$D9,$F1,$01,$6E,$79 ; 9AF7 BD 90 47 D9 F1 01 6E 79  ..G...ny
        db   $CD,$29,$BE,$79,$D0,$0B,$48,$67 ; 9AFF CD 29 BE 79 D0 0B 48 67  .).y..Hg
        db   $BF,$0E,$82,$EF,$17,$82,$2D,$E4 ; 9B07 BF 0E 82 EF 17 82 2D E4  ......-.
        db   $86,$E3,$8B,$4B,$46,$A7,$AB,$94 ; 9B0F 86 E3 8B 4B 46 A7 AB 94  ...KF...
        db   $E2,$10,$86,$B4,$53,$D4,$45,$E0 ; 9B17 E2 10 86 B4 53 D4 45 E0  ....S.E.
        db   $8E,$9B,$D3,$E6,$2D,$75,$2C,$73 ; 9B1F 8E 9B D3 E6 2D 75 2C 73  ....-u,s
        db   $B8,$E2,$D2,$61,$17,$82,$2D,$D5 ; 9B27 B8 E2 D2 61 17 82 2D D5  ...a..-.
        db   $F4,$6A,$7A,$B9,$4E,$21,$08,$6B ; 9B2F F4 6A 7A B9 4E 21 08 6B  .jz.N!.k
        db   $45,$3D,$44,$5E,$1E,$37,$19,$B8 ; 9B37 45 3D 44 5E 1E 37 19 B8  E=D^.7..
        db   $53,$E4,$7B,$6D,$E8,$60,$C7,$17 ; 9B3F 53 E4 7B 6D E8 60 C7 17  S.{m.`..
        db   $85,$87,$EC,$5A,$EB,$FF,$73,$CE ; 9B47 85 87 EC 5A EB FF 73 CE  ...Z..s.
        db   $5F,$3E,$7E,$BC,$21,$9E,$EA,$EC ; 9B4F 5F 3E 7E BC 21 9E EA EC  _>~.!...
        db   $3A,$AC,$67,$BF,$0D,$9E,$AE,$53 ; 9B57 3A AC 67 BF 0D 9E AE 53  :.g....S
        db   $DB,$DD,$64,$3B,$8F,$E3,$97,$C4 ; 9B5F DB DD 64 3B 8F E3 97 C4  ..d;....
        db   $21,$0D,$3F,$DE,$F0,$A3,$5F,$FB ; 9B67 21 0D 3F DE F0 A3 5F FB  !.?..._.
        db   $9E,$FC,$3A,$0B,$43,$8C,$C6,$7B ; 9B6F 9E FC 3A 0B 43 8C C6 7B  ..:.C..{
        db   $AB,$B0,$8B,$C2,$C7,$68,$43,$79 ; 9B77 AB B0 8B C2 C7 68 43 79  .....hCy
        db   $5A,$F3,$2C,$D4,$4C,$3D,$DE,$78 ; 9B7F 5A F3 2C D4 4C 3D DE 78  Z.,.L=.x
        db   $23,$08,$D7,$21,$3F,$CF,$75,$7E ; 9B87 23 08 D7 21 3F CF 75 7E  #..!?.u~
        db   $F6,$0B,$3D,$D5,$F7,$5A,$8C,$A7 ; 9B8F F6 0B 3D D5 F7 5A 8C A7  ..=..Z..
        db   $A8,$8B,$C3,$AD,$BB,$6A,$E5,$3A ; 9B97 A8 8B C3 AD BB 6A E5 3A  .....j.:
        db   $3B,$A9,$D0,$3D,$D5,$CA,$7F,$AD ; 9B9F 3B A9 D0 3D D5 CA 7F AD  ;..=....
        db   $E1,$FB,$4F,$BC,$66,$75,$95,$F7 ; 9BA7 E1 FB 4F BC 66 75 95 F7  ..O.fu..
        db   $A1,$84,$5E,$1E,$37,$53,$67,$AB ; 9BAF A1 84 5E 1E 37 53 67 AB  ..^.7Sg.
        db   $94,$E4,$27,$F8,$84,$21,$C3,$A3 ; 9BB7 94 E4 27 F8 84 21 C3 A3  ..'..!..
        db   $71,$F3,$CE,$B4,$30,$8B,$C2,$C7 ; 9BBF 71 F3 CE B4 30 8B C2 C7  q...0...
        db   $68,$43,$50,$1F,$3D,$C6,$E3,$8B ; 9BC7 68 43 50 1F 3D C6 E3 8B  hCP.=...
        db   $72,$1F,$9B,$73,$16,$E1,$E7,$B8 ; 9BCF 72 1F 9B 73 16 E1 E7 B8  r..s....
        db   $CD,$2D,$12,$79,$EE,$0D,$84,$56 ; 9BD7 CD 2D 12 79 EE 0D 84 56  .-.y...V
        db   $1F,$35,$27,$D9,$F4,$73,$68,$D2 ; 9BDF 1F 35 27 D9 F4 73 68 D2  .5'..sh.
        db   $82,$1B,$D4,$8C,$F3,$97,$46,$9F ; 9BE7 82 1B D4 8C F3 97 46 9F  ......F.
        db   $90,$AB,$D5,$63,$46,$A7,$D9,$F5 ; 9BEF 90 AB D5 63 46 A7 D9 F5  ...cF...
        db   $94,$D7,$B8,$F9,$EE,$0D,$84,$51 ; 9BF7 94 D7 B8 F9 EE 0D 84 51  .......Q
        db   $78,$75,$B7,$6D,$5C,$A7,$47,$75 ; 9BFF 78 75 B7 6D 5C A7 47 75  xu.m\.Gu
        db   $3A,$07,$BA,$B9,$4F,$F5,$BC,$3F ; 9C07 3A 07 BA B9 4F F5 BC 3F  :...O..?
        db   $58,$45,$E1,$4C,$3A,$DE,$FC,$3A ; 9C0F 58 45 E1 4C 3A DE FC 3A  XE.L:..:
        db   $30,$81,$0A,$7A,$88,$BC,$29,$B0 ; 9C17 30 81 0A 7A 88 BC 29 B0  0..z..).
        db   $0A,$43,$47,$36,$8D,$65,$63,$67 ; 9C1F 0A 43 47 36 8D 65 63 67  .CG6.ecg
        db   $96,$85,$E1,$D5,$A8,$8B,$C1,$14 ; 9C27 96 85 E1 D5 A8 8B C1 14  ........
        db   $42,$39,$B4,$67,$9C,$F7,$19,$1E ; 9C2F 42 39 B4 67 9C F7 19 1E  B9.g....
        db   $52,$43,$4A,$19,$1C,$2C,$38,$74 ; 9C37 52 43 4A 19 1C 2C 38 74  RCJ..,8t
        db   $77,$45,$BA,$BE,$8D,$4F,$58,$DE ; 9C3F 77 45 BA BE 8D 4F 58 DE  wE...OX.
        db   $CE,$42,$7F,$AB,$94,$D3,$D4,$45 ; 9C47 CE 42 7F AB 94 D3 D4 45  .B.....E
        db   $E0,$8A,$21,$1C,$DA,$33,$CE,$7B ; 9C4F E0 8A 21 1C DA 33 CE 7B  ..!..3.{
        db   $8C,$8F,$29,$21,$A5,$0C,$8E,$16 ; 9C57 8C 8F 29 21 A5 0C 8E 16  ..)!....
        db   $1C,$3A,$3B,$D8,$7E,$C5,$8A,$74 ; 9C5F 1C 3A 3B D8 7E C5 8A 74  .:;.~..t
        db   $15,$C6,$57,$C7,$CA,$2E,$FD,$D1 ; 9C67 15 C6 57 C7 CA 2E FD D1  ..W.....
        db   $6E,$AF,$BD,$9D,$5C,$A7,$18,$1E ; 9C6F 6E AF BD 9D 5C A7 18 1E  n...\...
        db   $D3,$D4,$45,$E0,$8B,$79,$DC,$2C ; 9C77 D3 D4 45 E0 8B 79 DC 2C  ..E..y.,
        db   $F3,$AC,$8C,$FF,$0A,$E3,$DA,$7A ; 9C7F F3 AC 8C FF 0A E3 DA 7A  .......z
        db   $88,$BC,$1B,$A9,$7C,$C5,$B8,$58 ; 9C87 88 BC 1B A9 7C C5 B8 58  ....|..X
        db   $E5,$F2,$A0,$84,$39,$1B,$8F,$75 ; 9C8F E5 F2 A0 84 39 1B 8F 75  ....9..u
        db   $9A,$F7,$99,$E1,$49,$B0,$8B,$C1 ; 9C97 9A F7 99 E1 49 B0 8B C1  ....I...
        db   $95,$2D,$6B,$1D,$A1,$0C,$BE,$DB ; 9C9F 95 2D 6B 1D A1 0C BE DB  .-k.....
        db   $C3,$E1,$38,$FE,$7B,$8C,$A6,$FC ; 9CA7 C3 E1 38 FE 7B 8C A6 FC  ..8.{...
        db   $F6,$5C,$67,$9C,$C4,$C2,$20     ; 9CAF F6 5C 67 9C C4 C2 20     .\g...
; Huffman-compressed text group(s): $11
; Text $0220: 'Whose curse is to be lifted?'
; Text $0221: 'But <49> is not afflicted by a curse.'
; Text $0222: 'Please be quiet.I shall remove this abominable curse from <49>....'
; Text $0223: 'Who is to be revived?'
; Text $0224: 'You must be kidding! <49> is alive!'
; Text $0225: 'Please be quiet.'<44>
; Text $0226: 'I shall bring back the wandering spirit of <49> to this world....'
; Text $0227: 'Very well,you want me to save your progress.'
; Text $0228: 'Tell me all you've achieved so far.'<4F>Then I shall write it down on the Imperial Scrolls of Honor.Is that alright?'
; Text $0229: 'I certainly recorded your progress.'<4F>Are you continuing your quest?'
; Text $022A: 'I can see....'<44>
; Text $022B: 'You changed your mind.'<4F>Very well.Are you continuing your quest?'
; Text $022C: 'Can I do anything else for you?'
; Text $022D: 'Very well.Travel safely.Come back anytime.'
; Text $022E: 'The fee is <47> gold piece<4C>.Is that alright?'
; Text $022F: 'I'm sorry,but you don't have enough money to pay for our service.'<4F>Come back again when you have enough money.'
; Text $0230: 'Very well,you don't want our service.'<4F>If you change your mind,come back anytime.'
; Text $0231: 'Good afternoon! Welcome to the Wayfarer's Inn.'
; Text $0232: 'Welcome to the Wayfarer's Inn.You must be very tired from your long journey.'
; Text $0233: <44>'One night's stay is <47> gold piece<4C>.Would you like to stay?'
; Text $0234: 'Farewell.Do come again.'
; Text $0235: 'I'm sorry,but you don't have enough money.'<4F>Please come again when you do.'
; Text $0236: 'Enjoy your stay.'
; Text $0237: 'Good morning.Have a safe journey.'
; Text $0238: 'This is a vault where you can leave items and money for safe keeping.How may I help you?'
; Text $0239: 'Very well.What do you want to leave?'
; Text $023A: 'You'd like to leave money? You can leave money in 1000 gold-piece increments.How much would you like to leave?'
; Text $023B: 'I'm sorry to inform you,but you don't seem to have that much.'
; Text $023C: '<47> gold pieces.Very well.I'll take good care of it.'
; Text $023D: 'Who's going to leave something?'
; Text $023E: 'But <49> doesn't seem to have anything.'
; Text $023F: 'What would you like to leave?'
Bank00_TextGroup_11:
        db   $F0,$45,$BC,$90,$D1,$A7,$E4,$37 ; 9CB6 F0 45 BC 90 D1 A7 E4 37  .E.....7
        db   $0B,$3C,$EB,$23,$43,$88,$38,$F6 ; 9CBE 0B 3C EB 23 43 88 38 F6  .<.#C.8.
        db   $9E,$A2,$2F,$06,$EA,$5F,$31,$6E ; 9CC6 9E A2 2F 06 EA 5F 31 6E  ../.._1n
        db   $16,$39,$7C,$A8,$21,$0E,$46,$E3 ; 9CCE 16 39 7C A8 21 0E 46 E3  .9|.!.F.
        db   $DD,$66,$BC,$BA,$34,$FC,$83,$08 ; 9CD6 DD 66 BC BA 34 FC 83 08  .f..4...
        db   $BC,$29,$B0,$0A,$43,$59,$1A,$A5 ; 9CDE BC 29 B0 0A 43 59 1A A5  .)..CY..
        db   $27,$81,$FB,$D8,$C5,$75,$84,$37 ; 9CE6 27 81 FB D8 C5 75 84 37  '....u.7
        db   $C5,$B3,$48,$67,$BF,$0B,$2D,$99 ; 9CEE C5 B3 48 67 BF 0B 2D 99  ..Hg..-.
        db   $B7,$86,$B6,$60,$34,$69,$F9,$0C ; 9CF6 B7 86 B6 60 34 69 F9 0C  ...`4i..
        db   $87,$E6,$DC,$C5,$D0,$C2,$2F,$04 ; 9CFE 87 E6 DC C5 D0 C2 2F 04  ....../.
        db   $5B,$CE,$E1,$67,$9D,$64,$6F,$8A ; 9D06 5B CE E1 67 9D 64 6F 8A  [..g.do.
        db   $5C,$A4,$3D,$A7,$A8,$8B,$C2,$A7 ; 9D0E 5C A4 3D A7 A8 8B C2 A7  \.=.....
        db   $29,$D6,$A4,$9F,$59,$19,$9F,$3D ; 9D16 29 D6 A4 9F 59 19 9F 3D  )...Y..=
        db   $F7,$87,$45,$5C,$C5,$B8,$59,$61 ; 9D1E F7 87 45 5C C5 B8 59 61  ..E\..Ya
        db   $CA,$42,$AD,$44,$5E,$14,$D8,$05 ; 9D26 CA 42 AD 44 5E 14 D8 05  .B.D^...
        db   $21,$AC,$8D,$52,$93,$C0,$EC,$18 ; 9D2E 21 AC 8D 52 93 C0 EC 18  !..R....
        db   $E2,$F0,$B1,$8A,$EB,$08,$6B,$3F ; 9D36 E2 F0 B1 8A EB 08 6B 3F  ......k?
        db   $E1,$D1,$AC,$AC,$6C,$F3,$DC,$66 ; 9D3E E1 D1 AC AC 6C F3 DC 66  ....l..f
        db   $94,$FD,$1F,$E1,$D1,$8B,$CF,$3F ; 9D46 94 FD 1F E1 D1 8B CF 3F  .......?
        db   $C7,$D2,$86,$62,$CF,$39,$EF,$C2 ; 9D4E C7 D2 86 62 CF 39 EF C2  ...b.9..
        db   $CD,$4F,$E1,$EF,$43,$08,$BC,$1B ; 9D56 CD 4F E1 EF 43 08 BC 1B  .O..C...
        db   $88,$7E,$BC,$D0,$84,$1B,$57,$29 ; 9D5E 88 7E BC D0 84 1B 57 29  .~....W)
        db   $CD,$29,$BE,$B4,$67,$9C,$4B,$48 ; 9D66 CD 29 BE B4 67 9C 4B 48  .)..g.KH
        db   $6A,$E5,$3F,$DE,$7F,$34,$7C,$11 ; 9D6E 6A E5 3F DE 7F 34 7C 11  j.?..4|.
        db   $30,$8B,$C3,$C4,$42,$1A,$D1,$96 ; 9D76 30 8B C3 C4 42 1A D1 96  0...B...
        db   $10,$D5,$CA,$7B,$52,$19,$63,$BF ; 9D7E 10 D5 CA 7B 52 19 63 BF  ...{R.c.
        db   $05,$21,$EE,$29,$C8,$2F,$D8,$75 ; 9D86 05 21 EE 29 C8 2F D8 75  .!.)./.u
        db   $78,$DC,$1E,$B1,$8A,$EB,$08,$66 ; 9D8E 78 DC 1E B1 8A EB 08 66  x......f
        db   $BF,$C7,$1B,$8F,$BD,$96,$8F,$49 ; 9D96 BF C7 1B 8F BD 96 8F 49  .......I
        db   $E7,$B8,$D6,$2D,$F2,$3F,$C5,$86 ; 9D9E E7 B8 D6 2D F2 3F C5 86  ...-.?..
        db   $EB,$C7,$F9,$84,$0B,$4A,$19,$1E ; 9DA6 EB C7 F9 84 0B 4A 19 1E  .....J..
        db   $4E,$7F,$DE,$C1,$67,$BA,$BE,$58 ; 9DAE 4E 7F DE C1 67 BA BE 58  N...g..X
        db   $7F,$94,$5D,$E9,$EA,$22,$F0,$B1 ; 9DB6 7F 94 5D E9 EA 22 F0 B1  ..].."..
        db   $A3,$1F,$75,$E1,$C2,$BD,$F1,$1C ; 9DBE A3 1F 75 E1 C2 BD F1 1C  ..u.....
        db   $FF,$D1,$EE,$AE,$53,$FD,$E7,$F3 ; 9DC6 FF D1 EE AE 53 FD E7 F3  ....S...
        db   $47,$C1,$13,$0E,$AA,$67,$C6,$AE ; 9DCE 47 C1 13 0E AA 67 C6 AE  G....g..
        db   $53,$A3,$93,$7E,$1A,$78,$74,$6A ; 9DD6 53 A3 93 7E 1A 78 74 6A  S..~.xtj
        db   $E5,$3F,$D5,$29,$20,$9E,$9E,$A2 ; 9DDE E5 3F D5 29 20 9E 9E A2  .?.) ...
        db   $2F,$0B,$1A,$35,$3C,$40,$74,$30 ; 9DE6 2F 0B 1A 35 3C 40 74 30  /..5<@t0
        db   $63,$8B,$C2,$A7,$29,$D1,$DD,$4E ; 9DEE 63 8B C2 A7 29 D1 DD 4E  c...)..N
        db   $81,$EE,$AE,$53,$FD,$6F,$0F,$D6 ; 9DF6 81 EE AE 53 FD 6F 0F D6  ...S.o..
        db   $1D,$4D,$C4,$3F,$5E,$68,$42,$1D ; 9DFE 1D 4D C4 3F 5E 68 42 1D  .M.?^hB.
        db   $E9,$9F,$1A,$B9,$4E,$8E,$4D,$F8 ; 9E06 E9 9F 1A B9 4E 8E 4D F8  ....N.M.
        db   $69,$E1,$D1,$AB,$94,$FF,$54,$A4 ; 9E0E 69 E1 D1 AB 94 FF 54 A4  i.....T.
        db   $82,$7A,$7A,$88,$BC,$1B,$CA,$7A ; 9E16 82 7A 7A 88 BC 1B CA 7A  .zz....z
        db   $C6,$F6,$72,$9D,$6F,$7E,$1D,$18 ; 9E1E C6 F6 72 9D 6F 7E 1D 18  ..r.o~..
        db   $40,$86,$42,$7F,$AB,$94,$D3,$D4 ; 9E26 40 86 42 7F AB 94 D3 D4  @.B.....
        db   $45,$E0,$DC,$43,$F5,$E6,$84,$21 ; 9E2E 45 E0 DC 43 F5 E6 84 21  E..C...!
        db   $DF,$C7,$EB,$48,$43,$12,$A0,$21 ; 9E36 DF C7 EB 48 43 12 A0 21  ...HC..!
        db   $5F,$76,$F4,$DA,$35,$95,$8D,$9E ; 9E3E 5F 76 F4 DA 35 95 8D 9E  _v..5...
        db   $53,$AD,$F9,$68,$61,$17,$87,$8D ; 9E46 53 AD F9 68 61 17 87 8D  S..ha...
        db   $C6,$40,$0D,$C2,$CC,$B3,$51,$30 ; 9E4E C6 40 0D C2 CC B3 51 30  .@....Q0
        db   $F7,$79,$E0,$8C,$23,$5E,$F6,$0B ; 9E56 F7 79 E0 8C 23 5E F6 0B  .y..#^..
        db   $3D,$D5,$F2,$C3,$FC,$A2,$EF,$4F ; 9E5E 3D D5 F2 C3 FC A2 EF 4F  =......O
        db   $51,$17,$85,$8E,$D6,$E2,$9F,$FE ; 9E66 51 17 85 8E D6 E2 9F FE  Q.......
        db   $B6,$D6,$52,$FA,$B9,$4E,$F6,$4F ; 9E6E B6 D6 52 FA B9 4E F6 4F  ..R..N.O
        db   $B3,$EB,$AD,$21,$81,$CA,$68,$BE ; 9E76 B3 EB AD 21 81 CA 68 BE  ...!..h.
        db   $B6,$4C,$57,$9E,$77,$95,$AF,$21 ; 9E7E B6 4C 57 9E 77 95 AF 21  .LW.w..!
        db   $3F,$D2,$9F,$E2,$1F,$A5,$C8,$C3 ; 9E86 3F D2 9F E2 1F A5 C8 C3  ?.......
        db   $0E,$A6,$F4,$DA,$35,$95,$8D,$9E ; 9E8E 0E A6 F4 DA 35 95 8D 9E  ....5...
        db   $5A,$17,$87,$9A,$B8,$3D,$5C,$A7 ; 9E96 5A 17 87 9A B8 3D 5C A7  Z....=\.
        db   $5D,$69,$0C,$0E,$53,$45,$F5,$B2 ; 9E9E 5D 69 0C 0E 53 45 F5 B2  ]i..SE..
        db   $62,$B6,$11,$78,$37,$10,$FD,$79 ; 9EA6 62 B6 11 78 37 10 FD 79  b..x7..y
        db   $A1,$08,$36,$AE,$53,$BD,$93,$EC ; 9EAE A1 08 36 AE 53 BD 93 EC  ..6.S...
        db   $F9,$A5,$37,$D2,$9F,$E2,$1F,$A5 ; 9EB6 F9 A5 37 D2 9F E2 1F A5  ..7.....
        db   $C8,$C3,$0E,$AB,$08,$6A,$E5,$3A ; 9EBE C8 C3 0E AB 08 6A E5 3A  .....j.:
        db   $3B,$A9,$D0,$35,$72,$9F,$EB,$78 ; 9EC6 3B A9 D0 35 72 9F EB 78  ;..5r..x
        db   $7E,$B6,$8E,$6D,$1A,$CA,$C6,$CF ; 9ECE 7E B6 8E 6D 1A CA C6 CF  ~..m....
        db   $29,$D6,$FC,$B4,$30,$8B,$C2,$A4 ; 9ED6 29 D6 FC B4 30 8B C2 A4  )...0...
        db   $99,$F7,$2A,$0E,$3E,$73,$27,$57 ; 9EDE 99 F7 2A 0E 3E 73 27 57  ..*.>s'W
        db   $22,$88,$47,$36,$8C,$F3,$9E,$E3 ; 9EE6 22 88 47 36 8C F3 9E E3  ".G6....
        db   $22,$AD,$68,$2F,$C7,$FB,$16,$B0 ; 9EEE 22 AD 68 2F C7 FB 16 B0  ".h/....
        db   $66,$C2,$2F,$04,$51,$08,$E6,$D1 ; 9EF6 66 C2 2F 04 51 08 E6 D1  f./.Q...
        db   $9E,$73,$DC,$64,$55,$AD,$05,$F8 ; 9EFE 9E 73 DC 64 55 AD 05 F8  .s.dU...
        db   $FF,$62,$D6,$0C,$FB,$D4,$E5,$3A ; 9F06 FF 62 D6 0C FB D4 E5 3A  .b.....:
        db   $D4,$93,$EB,$23,$52,$1F,$AF,$3F ; 9F0E D4 93 EB 23 52 1F AF 3F  ...#R..?
        db   $3E,$3D,$C8,$7E,$6D,$D5,$CA,$7F ; 9F16 3E 3D C8 7E 6D D5 CA 7F  >=.~m...
        db   $A1,$27,$46,$6F,$A5,$3F,$31,$5B ; 9F1E A1 27 46 6F A5 3F 31 5B  .'Fo.?1[
        db   $08,$98,$FC,$3A,$D3,$18,$F9,$45 ; 9F26 08 98 FC 3A D3 18 F9 45  ...:...E
        db   $DF,$B1,$62,$75,$AF,$70,$B3,$2C ; 9F2E DF B1 62 75 AF 70 B3 2C  ..bu.p.,
        db   $D4,$4C,$3D,$DE,$78,$23,$08,$D7 ; 9F36 D4 4C 3D DE 78 23 08 D7  .L=.x#..
        db   $BA,$2C,$A6,$1E,$EA,$E5,$3A,$1C ; 9F3E BA 2C A6 1E EA E5 3A 1C  .,....:.
        db   $66,$33,$CE,$27,$5A,$E9,$EA,$22 ; 9F46 66 33 CE 27 5A E9 EA 22  f3.'Z.."
        db   $F0,$65,$AB,$F0,$D0,$84,$3B,$F4 ; 9F4E F0 65 AB F0 D0 84 3B F4  .e....;.
        db   $B3,$A3,$9B,$46,$5A,$17,$86,$C2 ; 9F56 B3 A3 9B 46 5A 17 86 C2  ...FZ...
        db   $2F,$0B,$1D,$AD,$C5,$3F,$FD,$6D ; 9F5E 2F 0B 1D AD C5 3F FD 6D  /....?.m
        db   $AC,$A5,$F5,$72,$9D,$EC,$9F,$67 ; 9F66 AC A5 F5 72 9D EC 9F 67  ...r...g
        db   $D7,$5A,$43,$03,$94,$D1,$7D,$6C ; 9F6E D7 5A 43 03 94 D1 7D 6C  .ZC...}l
        db   $98,$AD,$87,$55,$36,$01,$48,$68 ; 9F76 98 AD 87 55 36 01 48 68  ...U6.Hh
        db   $E6,$D1,$96,$85,$E1,$E6,$AE,$0F ; 9F7E E6 D1 96 85 E1 E6 AE 0F  ........
        db   $57,$29,$DE,$CB,$08,$BC,$19,$06 ; 9F86 57 29 DE CB 08 BC 19 06  W)......
        db   $DF,$4D,$7A,$B9,$4F,$F1,$3A,$D6 ; 9F8E DF 4D 7A B9 4F F1 3A D6  .Mz.O.:.
        db   $C2,$2F,$0A,$92,$67,$DD,$6C,$FC ; 9F96 C2 2F 0A 92 67 DD 6C FC  ./..g.l.
        db   $F8,$74,$77,$47,$5A,$43,$2E,$25 ; 9F9E F8 74 77 47 5A 43 2E 25  .twGZC.%
        db   $40,$66,$FA,$53,$F3,$15,$B0,$8B ; 9FA6 40 66 FA 53 F3 15 B0 8B  @f.S....
        db   $C3,$C6,$FC,$2D,$C2,$CB,$A9,$2A ; 9FAE C3 C6 FC 2D C2 CB A9 2A  ...-...*
        db   $60,$F9,$AB,$8F,$8D,$5C,$A7,$46 ; 9FB6 60 F9 AB 8F 8D 5C A7 46  `....\.F
        db   $A7,$A0,$16,$90,$DC,$71,$69,$65 ; 9FBE A7 A0 16 90 DC 71 69 65  .....qie
        db   $3F,$75,$B2,$62,$BC,$84,$FF,$12 ; 9FC6 3F 75 B2 62 BC 84 FF 12  ?u.b....
        db   $A0,$33,$30,$3C,$F0,$E8,$EE,$8F ; 9FCE A0 33 30 3C F0 E8 EE 8F  .30<....
        db   $2D,$6B,$56,$BD,$63,$5C,$43,$CE ; 9FD6 2D 6B 56 BD 63 5C 43 CE  -kV.c\C.
        db   $AE,$53,$4F,$51,$17,$83,$71,$0F ; 9FDE AE 53 4F 51 17 83 71 0F  .SOQ..q.
        db   $D7,$9A,$10,$87,$74,$5B,$AB,$EF ; 9FE6 D7 9A 10 87 74 5B AB EF  ....t[..
        db   $67,$57,$29,$CD,$29,$BE,$79,$D0 ; 9FEE 67 57 29 CD 29 BE 79 D0  gW).).y.
        db   $0B,$48,$53,$D4,$45,$E1,$53,$94 ; 9FF6 0B 48 53 D4 45 E1 53 94  .HS.E.S.
        db   $F6,$F7,$43,$8C,$C6,$79,$D0,$0B ; 9FFE F6 F7 43 8C C6 79 D0 0B  ..C..y..
        db   $48,$6B,$64,$C5,$74,$FA,$A7,$29 ; A006 48 6B 64 C5 74 FA A7 29  Hkd.t..)
        db   $D1,$A9,$E8,$05,$A4,$35,$B2,$62 ; A00E D1 A9 E8 05 A4 35 B2 62  .....5.b
        db   $BD,$C3,$C8,$D3,$EB,$3E,$B3,$EB ; A016 BD C3 C8 D3 EB 3E B3 EB  .....>..
        db   $3D,$44,$C3,$D6,$E3,$F9,$E0,$8C ; A01E 3D 44 C3 D6 E3 F9 E0 8C  =D......
        db   $6E,$1C,$7F,$16,$83,$72,$EE,$8F ; A026 6E 1C 7F 16 83 72 EE 8F  n....r..
        db   $2D,$6B,$53,$1D,$F3,$52,$98,$7B ; A02E 2D 6B 53 1D F3 52 98 7B  -kS..R.{
        db   $AB,$94,$E8,$71,$98,$CF,$3A,$01 ; A036 AB 94 E8 71 98 CF 3A 01  ...q..:.
        db   $69,$0A,$7A,$88,$BC,$2C,$76,$B7 ; A03E 69 0A 7A 88 BC 2C 76 B7  i.z..,v.
        db   $14,$FF,$F5,$E7,$9D,$C3,$42,$7F ; A046 14 FF F5 E7 9D C3 42 7F  ......B.
        db   $6E,$AE,$52,$DA,$CA,$5F,$57,$29 ; A04E 6E AE 52 DA CA 5F 57 29  n.R.._W)
        db   $DE,$C9,$F6,$7C,$40,$5B,$9E,$75 ; A056 DE C9 F6 7C 40 5B 9E 75  ...|@[.u
        db   $D6,$90,$CF,$75,$7D,$6A,$63,$BB ; A05E D6 90 CF 75 7D 6A 63 BB  ...u}jc.
        db   $08,$BC,$19,$66,$A2,$61,$EE,$F3 ; A066 08 BC 19 66 A2 61 EE F3  ...f.a..
        db   $C1,$18,$2E,$ED,$C4,$3F,$5E,$68 ; A06E C1 18 2E ED C4 3F 5E 68  .....?^h
        db   $42,$1D,$EC,$76,$84,$33,$AB,$31 ; A076 42 1D EC 76 84 33 AB 31  B..v.3.1
        db   $A8,$99,$F7,$46,$BF,$1A,$50,$DC ; A07E A8 99 F7 46 BF 1A 50 DC  ...F..P.
        db   $76,$11,$78,$22,$DE,$7B,$16,$A2 ; A086 76 11 78 22 DE 7B 16 A2  v.x".{..
        db   $78,$74,$67,$9D,$00,$B4,$86,$29 ; A08E 78 74 67 9D 00 B4 86 29  xtg....)
        db   $B4,$3D,$F8,$74,$53,$D4,$45,$E0 ; A096 B4 3D F8 74 53 D4 45 E0  .=.tS.E.
        db   $DD,$4B,$E6,$2D,$EC,$82,$3E,$CF ; A09E DD 4B E6 2D EC 82 3E CF  .K.-..>.
        db   $88,$0B,$73,$CE,$BA,$D2,$19,$4E ; A0A6 88 0B 73 CE BA D2 19 4E  ..s....N
        db   $B7,$BF,$0E,$86,$11,$78,$22,$DD ; A0AE B7 BF 0E 86 11 78 22 DD  .....x".
        db   $5F,$35,$29,$87,$BA,$B9,$4E,$87 ; A0B6 5F 35 29 87 BA B9 4E 87  _5)...N.
        db   $19,$8C,$F3,$A0,$16,$90,$A7,$A8 ; A0BE 19 8C F3 A0 16 90 A7 A8  ........
        db   $88                             ; A0C6 88                       .
; Huffman-compressed text group(s): $12
; Text $0240: 'The <48>?'<4F>When you pick it up,there will be a charge of 10 gold pieces.Is that alright?'
; Text $0241: Due to a curse,the <48> won't come off.<4F>I can't keep such an item.How creepy....'
; Text $0242: 'I'll take good care of it.'
; Text $0243: 'Will you leave other items?'
; Text $0244: 'What would you like to pick up?'
; Text $0245: 'Money? I'm not keeping any of your money.'
; Text $0246: 'I'm keeping <47> gold pieces for you.How much do you want?'
; Text $0247: 'Sorry,but you didn't leave that much money.'
; Text $0248: 'Very well.Here you are.'
; Text $0249: 'What? You didn't leave anything....'
; Text $024A: 'Which item shall I return to you?'
; Text $024B: 'The <48>? I charge 10 gold pieces.Is that alright?'
; Text $024C: 'Hmm...you don't have enough money.I can't return the item.'
; Text $024D: 'Would you like to take out your money first?'
; Text $024E: 'Who'll carry this?'
; Text $024F: '<49> doesn't seem to be able to carry any more things.'<44>
; Text $0250: 'First reduce the number of items by leaving some here or by selling or<43>discarding them.'
; Text $0251: 'Would someone else carry this?'
; Text $0252: '<49> can't be equipped with the <48>.Is that alright?'
; Text $0253: 'I'll deliver this to the wagon.'
; Text $0254: 'Alright,I'll give this to <49>'s ghost.'
; Text $0255: 'Alright,I'll put this in <49>'s Tool Bag.'
; Text $0256: 'I'll return this to you.'
; Text $0257: 'You changed your mind.'<44>
; Text $0258: 'Anything else?'
; Text $0259: 'Have a safe journey.'
; Text $025A: 'This is a weapon shop.What would you like to do?'
; Text $025B: 'What do you want?'
; Text $025C: 'The <48>? You don't have enough money for that.'
; Text $025D: 'The <48>? Thank you.'<44>
; Text $025E: 'Who shall take this?'
; Text $025F: 'Sorry,but <49> can't carry any more things.'<44>
Bank00_TextGroup_12:
        db   $F0,$F1,$B8,$CD,$C2,$9E,$A3,$A9 ; A0C7 F0 F1 B8 CD C2 9E A3 A9  ........
        db   $16,$E0,$F5,$72,$9D,$E7,$91,$B3 ; A0CF 16 E0 F5 72 9D E7 91 B3  ...r....
        db   $DC,$7C,$9F,$2D,$9E,$E3,$E3,$35 ; A0D7 DC 7C 9F 2D 9E E3 E3 35  .|.-...5
        db   $C8,$43,$59,$19,$74,$77,$5F,$D0 ; A0DF C8 43 59 19 74 77 5F D0  .CY.tw_.
        db   $34,$A1,$91,$A7,$D6,$7A,$89,$87 ; A0E7 34 A1 91 A7 D6 7A 89 87  4....z..
        db   $BB,$CF,$04,$60,$BB,$D8,$2C,$F7 ; A0EF BB CF 04 60 BB D8 2C F7  ...`..,.
        db   $57,$CB,$0F,$F2,$8B,$BD,$3D,$44 ; A0F7 57 CB 0F F2 8B BD 3D 44  W.....=D
        db   $5D,$2A,$46,$79,$CB,$A3,$4F,$C8 ; A0FF 5D 2A 46 79 CB A3 4F C8  ]*Fy..O.
        db   $36,$7B,$8C,$DC,$33,$52,$7D,$9F ; A107 36 7B 8C DC 33 52 7D 9F  6{..3R}.
        db   $47,$36,$8D,$28,$21,$DF,$AA,$C6 ; A10F 47 36 8D 28 21 DF AA C6  G6.(!...
        db   $8D,$4F,$B3,$E6,$60,$79,$C4,$98 ; A117 8D 4F B3 E6 60 79 C4 98  .O..`y..
        db   $EF,$94,$F7,$1C,$5B,$DD,$1E,$5A ; A11F EF 94 F7 1C 5B DD 1E 5A  ....[..Z
        db   $D1,$FC,$0F,$35,$F4,$30,$8B,$C2 ; A127 D1 FC 0F 35 F4 30 8B C2  ...5.0..
        db   $C7,$68,$43,$3A,$B3,$1A,$89,$9F ; A12F C7 68 43 3A B3 1A 89 9F  .hC:....
        db   $74,$6B,$F1,$A5,$0D,$C7,$61,$17 ; A137 74 6B F1 A5 0D C7 61 17  tk....a.
        db   $82,$2F,$21,$0D,$5C,$A7,$40,$2D ; A13F 82 2F 21 0D 5C A7 40 2D  ./!.\.@-
        db   $21,$A5,$EE,$3F,$B8,$E2,$D2,$A7 ; A147 21 A5 EE 3F B8 E2 D2 A7  !..?....
        db   $A8,$8B,$C1,$16,$EA,$F9,$A9,$4C ; A14F A8 8B C1 16 EA F9 A9 4C  .......L
        db   $3D,$D5,$CA,$74,$38,$CC,$67,$9D ; A157 3D D5 CA 74 38 CC 67 9D  =..t8.g.
        db   $E7,$91,$B3,$C9,$F3,$4F,$51,$17 ; A15F E7 91 B3 C9 F3 4F 51 17  .....OQ.
        db   $83,$26,$4C,$57,$4F,$AC,$76,$B7 ; A167 83 26 4C 57 4F AC 76 B7  .&LWO.v.
        db   $1C,$BE,$66,$07,$9E,$1D,$19,$4E ; A16F 1C BE 66 07 9E 1D 19 4E  ..f....N
        db   $BD,$28,$6A,$E5,$3F,$D6,$C9,$8A ; A177 BD 28 6A E5 3F D6 C9 8A  .(j.?...
        db   $D8,$45,$E1,$63,$B5,$B9,$98,$1E ; A17F D8 45 E1 63 B5 B9 98 1E  .E.c....
        db   $78,$74,$66,$59,$A8,$98,$7B,$BC ; A187 78 74 66 59 A8 98 7B BC  xtfY..{.
        db   $F0,$46,$0B,$21,$3F,$D5,$CA,$7B ; A18F F0 46 0B 21 3F D5 CA 7B  .F.!?..{
        db   $A3,$CB,$5A,$D4,$C7,$7D,$EC,$EA ; A197 A3 CB 5A D4 C7 7D EC EA  ..Z..}..
        db   $E5,$39,$A5,$37,$A7,$A8,$8B,$C3 ; A19F E5 39 A5 37 A7 A8 8B C3  .9.7....
        db   $AF,$3F,$FD,$6D,$AC,$A5,$F5,$72 ; A1A7 AF 3F FD 6D AC A5 F5 72  .?.m...r
        db   $9D,$EF,$3D,$3E,$CF,$A0,$16,$90 ; A1AF 9D EF 3D 3E CF A0 16 90  ..=>....
        db   $CF,$75,$7D,$6A,$63,$BE,$B6,$4C ; A1B7 CF 75 7D 6A 63 BE B6 4C  .u}jc..L
        db   $56,$C2,$2F,$06,$E2,$1F,$AF,$34 ; A1BF 56 C2 2F 06 E2 1F AF 34  V./....4
        db   $21,$0E,$E8,$E3,$E3,$57,$29,$CB ; A1C7 21 0E E8 E3 E3 57 29 CB  !....W).
        db   $F0,$C2,$2F,$04,$5B,$AB,$D3,$EA ; A1CF F0 C2 2F 04 5B AB D3 EA  ../.[...
        db   $9C,$A7,$7B,$CF,$4F,$B3,$E8,$05 ; A1D7 9C A7 7B CF 4F B3 E8 05  ..{.O...
        db   $A4,$32,$9D,$6F,$7E,$1D,$1D,$0C ; A1DF A4 32 9D 6F 7E 1D 1D 0C  .2.o~...
        db   $22,$F0,$45,$BF,$23,$BE,$E3,$8B ; A1E7 22 F0 45 BF 23 BE E3 8B  ".E.#...
        db   $71,$5D,$61,$0D,$63,$7C,$3A,$7E ; A1EF 71 5D 61 0D 63 7C 3A 7E  q]a.c|:~
        db   $79,$E7,$57,$29,$A7,$A8,$8B,$C3 ; A1F7 79 E7 57 29 A7 A8 8B C3  y.W)....
        db   $C6,$E3,$37,$0A,$7D,$63,$47,$75 ; A1FF C6 E3 37 0A 7D 63 47 75  ..7.}cGu
        db   $FD,$03,$23,$4F,$AC,$F5,$13,$0F ; A207 FD 03 23 4F AC F5 13 0F  ..#O....
        db   $77,$9E,$08,$C1,$77,$B0,$59,$EE ; A20F 77 9E 08 C1 77 B0 59 EE  w...w.Y.
        db   $AF,$96,$1F,$E5,$17,$7A,$7A,$88 ; A217 AF 96 1F E5 17 7A 7A 88  .....zz.
        db   $BC,$11,$ED,$B7,$A2,$B9,$4E,$F6 ; A21F BC 11 ED B7 A2 B9 4E F6  ......N.
        db   $4F,$B3,$EB,$AD,$21,$81,$CA,$68 ; A227 4F B3 EB AD 21 81 CA 68  O...!..h
        db   $BE,$B6,$4C,$57,$DE,$C6,$8D,$4F ; A22F BE B6 4C 57 DE C6 8D 4F  ..LW...O
        db   $B3,$EF,$87,$4F,$CF,$3D,$C6,$E3 ; A237 B3 EF 87 4F CF 3D C6 E3  ...O.=..
        db   $8B,$58,$45,$E0,$8B,$29,$87,$BA ; A23F 8B 58 45 E0 8B 29 87 BA  .XE..)..
        db   $B9,$4E,$87,$19,$8C,$F3,$9D,$59 ; A247 B9 4E 87 19 8C F3 9D 59  .N.....Y
        db   $8D,$29,$7D,$5C,$A7,$FA,$D9,$31 ; A24F 8D 29 7D 5C A7 FA D9 31  .)}\...1
        db   $5E,$43,$9F,$27,$A7,$A8,$8B,$C1 ; A257 5E 43 9F 27 A7 A8 8B C1  ^C.'....
        db   $16,$F3,$DA,$10,$D1,$AF,$FF,$5E ; A25F 16 F3 DA 10 D1 AF FF 5E  .......^
        db   $7B,$F0,$A9,$EA,$22,$F0,$62,$DE ; A267 7B F0 A9 EA 22 F0 62 DE  {...".b.
        db   $C8,$23,$EC,$F8,$80,$B7,$3C,$EB ; A26F C8 23 EC F8 80 B7 3C EB  .#....<.
        db   $23,$2D,$98,$0C,$F3,$A3,$5F,$FE ; A277 23 2D 98 0C F3 A3 5F FE  #-...._.
        db   $BC,$A7,$5E,$B6,$7E,$33,$DF,$87 ; A27F BC A7 5E B6 7E 33 DF 87  ..^.~3..
        db   $41,$30,$63,$8B,$C1,$96,$F3,$E4 ; A287 41 30 63 8B C1 96 F3 E4  A0c.....
        db   $FB,$E3,$D4,$C6,$33,$DC,$63,$4D ; A28F FB E3 D4 C6 33 DC 63 4D  ....3.cM
        db   $B6,$47,$F4,$A1,$B8,$E2,$D2,$D6 ; A297 B6 47 F4 A1 B8 E2 D2 D6  .G......
        db   $6B,$D0,$0B,$4B,$87,$46,$29,$B4 ; A29F 6B D0 0B 4B 87 46 29 B4  k..K.F).
        db   $6B,$8F,$8D,$3F,$D6,$6B,$C4,$21 ; A2A7 6B 8F 8D 3F D6 6B C4 21  k..?.k.!
        db   $0E,$1D,$1A,$7E,$8D,$FB,$C2,$8D ; A2AF 0E 1D 1A 7E 8D FB C2 8D  ...~....
        db   $7F,$EF,$0E,$8C,$F7,$16,$B0,$8B ; A2B7 7F EF 0E 8C F7 16 B0 8B  ........
        db   $C1,$16,$53,$0F,$71,$4D,$A2,$4C ; A2BF C1 16 53 0F 71 4D A2 4C  ..S.qM.L
        db   $61,$02,$1A,$35,$FF,$EB,$CF,$7E ; A2C7 61 02 1A 35 FF EB CF 7E  a..5...~
        db   $15,$3D,$44,$5E,$0C,$5A,$35,$3E ; A2CF 15 3D 44 5E 0C 5A 35 3E  .=D^.Z5>
        db   $CF,$AC,$8C,$2A,$52,$79,$E7,$C8 ; A2D7 CF AC 8C 2A 52 79 E7 C8  ...*Ry..
        db   $F7,$35,$C7,$BE,$7B,$8C,$DC,$3B ; A2DF F7 35 C7 BE 7B 8C DC 3B  .5..{..;
        db   $D8,$2C,$F7,$57,$CB,$0F,$F2,$8B ; A2E7 D8 2C F7 57 CB 0F F2 8B  .,.W....
        db   $BD,$3D,$44,$5E,$16,$3B,$42,$1B ; A2EF BD 3D 44 5E 16 3B 42 1B  .=D^.;B.
        db   $D1,$0E,$52,$1F,$CF,$7E,$16,$79 ; A2F7 D1 0E 52 1F CF 7E 16 79  ..R..~.y
        db   $CF,$71,$9A,$5A,$24,$D8,$45,$E1 ; A2FF CF 71 9A 5A 24 D8 45 E1  .q.Z$.E.
        db   $4C,$87,$F9,$45,$DD,$B5,$8E,$D0 ; A307 4C 87 F9 45 DD B5 8E D0  L..E....
        db   $86,$A3,$94,$86,$7B,$F0,$B3,$CE ; A30F 86 A3 94 86 7B F0 B3 CE  ....{...
        db   $62,$EC,$5A,$8B,$C9,$3B,$08,$BC ; A317 62 EC 5A 8B C9 3B 08 BC  b.Z..;..
        db   $29,$90,$FF,$28,$BB,$B6,$B1,$DA ; A31F 29 90 FF 28 BB B6 B1 DA  )..(....
        db   $10,$DE,$52,$F9,$EF,$C2,$DC,$3C ; A327 10 DE 52 F9 EF C2 DC 3C  ..R....<
        db   $C5,$D8,$B7,$8C,$CC,$33,$75,$68 ; A32F C5 D8 B7 8C CC 33 75 68  .....3uh
        db   $61,$17,$85,$8E,$D0,$86,$F8,$74 ; A337 61 17 85 8E D0 86 F8 74  a......t
        db   $FC,$F3,$DF,$85,$9E,$75,$72,$96 ; A33F FC F3 DF 85 9E 75 72 96  .....ur.
        db   $11,$78,$54,$E5,$3A,$3B,$A9,$D0 ; A347 11 78 54 E5 3A 3B A9 D0  .xT.:;..
        db   $3D,$D5,$CA,$7F,$AD,$E1,$FA,$C1 ; A34F 3D D5 CA 7F AD E1 FA C1  =.......
        db   $8E,$2F,$0A,$61,$D6,$F7,$E1,$D1 ; A357 8E 2F 0A 61 D6 F7 E1 D1  ./.a....
        db   $84,$08,$53,$D4,$45,$E0,$8E,$B4 ; A35F 84 08 53 D4 45 E0 8E B4  ..S.E...
        db   $86,$5C,$4A,$80,$CD,$F4,$A7,$E6 ; A367 86 5C 4A 80 CD F4 A7 E6  .\J.....
        db   $2B,$61,$17,$87,$8D,$F8,$5B,$85 ; A36F 2B 61 17 87 8D F8 5B 85  +a....[.
        db   $97,$34,$17,$CC,$9E,$2B,$CF,$9E ; A377 97 34 17 CC 9E 2B CF 9E  .4...+..
        db   $E8,$B7,$57,$CD,$4A,$61,$EE,$AE ; A37F E8 B7 57 CD 4A 61 EE AE  ..W.Ja..
        db   $53,$A1,$C6,$63,$3C,$EF,$66,$9E ; A387 53 A1 C6 63 3C EF 66 9E  S..c<.f.
        db   $A2,$2F,$04,$5B,$AB,$EF,$67,$57 ; A38F A2 2F 04 5B AB EF 67 57  ./.[..gW
        db   $29,$CD,$29,$BD,$3D,$44,$5E,$1E ; A397 29 CD 29 BD 3D 44 5E 1E  ).).=D^.
        db   $37,$19,$B8,$53,$EA,$9C,$A7,$7B ; A39F 37 19 B8 53 EA 9C A7 7B  7..S...{
        db   $27,$D9,$F5,$D6,$90,$C0,$E5,$34 ; A3A7 27 D9 F5 D6 90 C0 E5 34  '......4
        db   $5F,$5B,$26,$2B,$C8,$4F,$F3,$DD ; A3AF 5F 5B 26 2B C8 4F F3 DD  _[&+.O..
        db   $5D,$84,$5E,$1E,$37,$19,$B8,$53 ; A3B7 5D 84 5E 1E 37 19 B8 53  ].^.7..S
        db   $EF,$1B,$A9,$B3,$D5,$CA,$58,$31 ; A3BF EF 1B A9 B3 D5 CA 58 31  ......X1
        db   $C5,$E0,$8B,$79,$C5,$75,$84,$33 ; A3C7 C5 E0 8B 79 C5 75 84 33  ...y.u.3
        db   $AB,$31,$9E,$FC,$2A,$7A,$88,$BC ; A3CF AB 31 9E FC 2A 7A 88 BC  .1..*z..
        db   $3A,$F3,$FF,$D6,$DA,$CA,$5F,$31 ; A3D7 3A F3 FF D6 DA CA 5F 31  :....._1
        db   $68,$D4,$FB,$3E,$8D,$7F,$FA,$F2 ; A3DF 68 D4 FB 3E 8D 7F FA F2  h..>....
        db   $9D,$7A,$D9,$F8,$CF,$7E,$1D,$04 ; A3E7 9D 7A D9 F8 CF 7E 1D 04  .z...~..
        db   $C1,$8E,$20                     ; A3EF C1 8E 20                 ..
; Huffman-compressed text group(s): $13
; Text $0260: 'I can't sell you this unless you reduce the number of items you're carrying by selling or discarding some.'
; Text $0261: 'Does someone else want to take this?'
; Text $0262: '<49> can't be equipped with this.Is that alright?'
; Text $0263: 'Alright,I'll deliver this to <49> in the wagon.'
; Text $0264: 'Alright,I'll give this to <49>'s ghost.'
; Text $0265: 'Alright,I'll put this in <49>'s Tool Bag.'
; Text $0266: 'Here you go,<49>.'
; Text $0267: 'Whose belongings would you like to sell?'
; Text $0268: 'Are you kidding? <49> doesn't have anything.'
; Text $0269: 'What would you like to sell?'
; Text $026A: 'The <48>?'
; Text $026B: Taloon:'I'm counting on you.I'll be waiting for you in the port town.'
; Text $026C: 'Hmm...this is my honest advice....'<4F>I think you'd better keep that.'
; Text $026D: 'I'll pay <47> gold piece<4C> for it.Is that alright?'
; Text $026E: 'That's too bad.'
; Text $026F: 'Thank you.'
; Text $0270: 'I'll get the item from <49> in the wagon.'
; Text $0271: Due to a curse,it won't come off your arm.<4F>Too bad....'
; Text $0272: 'Drop by again!'
; Text $0273: 'This is an armor shop.What do you want to do?'
; Text $0274: 'What would you like to buy?'
; Text $0275: 'The <48>? Sorry,but you don't have enough money.'
; Text $0276: 'The <48>? Thank you.'<44>
; Text $0277: 'Who will take it?'
; Text $0278: 'But <49> has too many things already.'<44>
; Text $0279: 'Why don't you reduce the number of things you're carrying by selling or discarding some?'
; Text $027A: 'The <48>?'<44>
; Text $027B: 'Does anyone else want to take this?'
; Text $027C: '<49> can't be equipped with this.Do you still want it?'
; Text $027D: 'I'll deliver this to <49> in the wagon.'
; Text $027E: 'I'll put this in <49>'s Tool Bag.'
; Text $027F: 'Here you go,<49>.'
Bank00_TextGroup_13:
        db   $F0,$B1,$A3,$53,$EC,$F8,$84,$21 ; A3F2 F0 B1 A3 53 EC F8 84 21  ...S...!
        db   $AB,$94,$E7,$BF,$0B,$24,$E0,$08 ; A3FA AB 94 E7 BF 0B 24 E0 08  .....$..
        db   $B5,$72,$9D,$F1,$EA,$63,$19,$EE ; A402 B5 72 9D F1 EA 63 19 EE  .r...c..
        db   $31,$A6,$DB,$23,$FA,$50,$DC,$71 ; A40A 31 A6 DB 23 FA 50 DC 71  1..#.P.q
        db   $69,$6A,$E5,$3D,$BE,$34,$6B,$FF ; A412 69 6A E5 3D BE 34 6B FF  ij.=.4k.
        db   $D7,$C3,$A3,$59,$AF,$10,$84,$38 ; A41A D7 C3 A3 59 AF 10 84 38  ...Y...8
        db   $74,$69,$FE,$F7,$85,$1A,$FF,$DE ; A422 74 69 FE F7 85 1A FF DE  ti......
        db   $1D,$18,$A6,$D0,$C2,$2F,$0E,$96 ; A42A 1D 18 A6 D0 C2 2F 0E 96  ...../..
        db   $41,$62,$9B,$44,$98,$C2,$04,$33 ; A432 41 62 9B 44 98 C2 04 33  Ab.D...3
        db   $4A,$6F,$9E,$73,$AB,$31,$9E,$FC ; A43A 4A 6F 9E 73 AB 31 9E FC  Jo.s.1..
        db   $2A,$7A,$88,$BC,$18,$B4,$6A,$7D ; A442 2A 7A 88 BC 18 B4 6A 7D  *z....j}
        db   $9F,$59,$18,$54,$A4,$F3,$CF,$91 ; A44A 9F 59 18 54 A4 F3 CF 91  .Y.T....
        db   $EE,$6B,$8F,$7C,$F7,$E1,$77,$B0 ; A452 EE 6B 8F 7C F7 E1 77 B0  .k.|..w.
        db   $59,$EE,$AF,$96,$1F,$E5,$17,$7A ; A45A 59 EE AF 96 1F E5 17 7A  Y......z
        db   $7A,$88,$BC,$29,$90,$FF,$28,$BB ; A462 7A 88 BC 29 90 FF 28 BB  z..)..(.
        db   $B6,$B1,$DA,$10,$DE,$88,$72,$90 ; A46A B6 B1 DA 10 DE 88 72 90  ......r.
        db   $FE,$7B,$F0,$B3,$CE,$62,$DC,$3C ; A472 FE 7B F0 B3 CE 62 DC 3C  .{...b.<
        db   $F7,$19,$A5,$A2,$4D,$84,$5E,$14 ; A47A F7 19 A5 A2 4D 84 5E 14  ....M.^.
        db   $C8,$7F,$94,$5D,$DB,$58,$ED,$08 ; A482 C8 7F 94 5D DB 58 ED 08  ...].X..
        db   $6A,$39,$48,$67,$BF,$0B,$3C,$E6 ; A48A 6A 39 48 67 BF 0B 3C E6  j9Hg..<.
        db   $2E,$C5,$A8,$BC,$93,$B0,$8B,$C2 ; A492 2E C5 A8 BC 93 B0 8B C2  ........
        db   $99,$0F,$F2,$8B,$BB,$6B,$1D,$A1 ; A49A 99 0F F2 8B BB 6B 1D A1  .....k..
        db   $0D,$E5,$2F,$9E,$FC,$2D,$C3,$CC ; A4A2 0D E5 2F 9E FC 2D C3 CC  ../..-..
        db   $5D,$8B,$78,$CC,$C3,$37,$56,$86 ; A4AA 5D 8B 78 CC C3 37 56 86  ].x..7V.
        db   $11,$78,$23,$8F,$8D,$5C,$A7,$51 ; A4B2 11 78 23 8F 8D 5C A7 51  .x#..\.Q
        db   $2D,$98,$98,$45,$E0,$8B,$79,$21 ; A4BA 2D 98 98 45 E0 8B 79 21  -..E..y!
        db   $AC,$88,$49,$D1,$C3,$A0,$B3,$52 ; A4C2 AC 88 49 D1 C3 A0 B3 52  ..I....R
        db   $98,$7B,$AB,$94,$E8,$71,$98,$CF ; A4CA 98 7B AB 94 E8 71 98 CF  .{...q..
        db   $38,$84,$21,$4F,$51,$17,$85,$33 ; A4D2 38 84 21 4F 51 17 85 33  8.!OQ..3
        db   $E3,$57,$29,$CC,$F9,$EF,$BC,$3A ; A4DA E3 57 29 CC F9 EF BC 3A  .W)....:
        db   $29,$F3,$16,$F6,$41,$1F,$67,$D7 ; A4E2 29 F3 16 F6 41 1F 67 D7  )...A.g.
        db   $5A,$43,$29,$D6,$F7,$E1,$D0,$C2 ; A4EA 5A 43 29 D6 F7 E1 D0 C2  ZC).....
        db   $2F,$04,$5B,$AB,$E6,$A5,$30,$F7 ; A4F2 2F 04 5B AB E6 A5 30 F7  /.[...0.
        db   $57,$29,$D0,$E3,$31,$9E,$71,$08 ; A4FA 57 29 D0 E3 31 9E 71 08  W)..1.q.
        db   $42,$9E,$A2,$2F,$0F,$1B,$8C,$DC ; A502 42 9E A2 2F 0F 1B 8C DC  B../....
        db   $29,$EA,$22,$F1,$58,$4C,$9F,$4F ; A50A 29 EA 22 F1 58 4C 9F 4F  ).".XL.O
        db   $C2,$C7,$6B,$74,$72,$93,$7E,$1D ; A512 C2 C7 6B 74 72 93 7E 1D  ..ktr.~.
        db   $1A,$4F,$57,$29,$EF,$63,$B4,$21 ; A51A 1A 4F 57 29 EF 63 B4 21  .OW).c.!
        db   $AC,$8C,$D2,$F1,$F8,$74,$64,$27 ; A522 AC 8C D2 F1 F8 74 64 27  .....td'
        db   $FA,$B9,$4E,$E1,$E7,$B8,$DE,$67 ; A52A FA B9 4E E1 E7 B8 DE 67  ..N....g
        db   $EF,$9E,$5A,$36,$11,$78,$23,$DB ; A532 EF 9E 5A 36 11 78 23 DB  ..Z6.x#.
        db   $6F,$43,$DF,$85,$B8,$5A,$DA,$F5 ; A53A 6F 43 DF 85 B8 5A DA F5  oC...Z..
        db   $E4,$C1,$3E,$5F,$69,$72,$31,$D0 ; A542 E4 C1 3E 5F 69 72 31 D0  ..>_ir1.
        db   $C3,$AA,$C6,$7B,$F0,$D9,$EA,$E5 ; A54A C3 AA C6 7B F0 D9 EA E5  ...{....
        db   $3D,$BD,$D6,$43,$B8,$FE,$66,$07 ; A552 3D BD D6 43 B8 FE 66 07  =..C..f.
        db   $9C,$F7,$57,$61,$17,$85,$8E,$D0 ; A55A 9C F7 57 61 17 85 8E D0  ..Wa....
        db   $86,$F2,$B5,$E6,$59,$A8,$98,$7B ; A562 86 F2 B5 E6 59 A8 98 7B  ....Y..{
        db   $BC,$F0,$46,$11,$AE,$42,$7F,$B8 ; A56A BC F0 46 11 AE 42 7F B8  ..F..B..
        db   $FD,$EC,$16,$7B,$AB,$E5,$87,$F9 ; A572 FD EC 16 7B AB E5 87 F9  ...{....
        db   $45,$DE,$9E,$A2,$2F,$0F,$1B,$AB ; A57A 45 DE 9E A2 2F 0F 1B AB  E.../...
        db   $F6,$2C,$F3,$3A,$CA,$FA,$C2,$2F ; A582 F6 2C F3 3A CA FA C2 2F  .,.:.../
        db   $0F,$1B,$A9,$B3,$D5,$CA,$58,$45 ; A58A 0F 1B A9 B3 D5 CA 58 45  ......XE
        db   $E1,$63,$B4,$21,$A8,$0F,$9E,$E3 ; A592 E1 63 B4 21 A8 0F 9E E3  .c.!....
        db   $71,$C5,$B9,$0F,$CD,$B9,$8B,$70 ; A59A 71 C5 B9 0F CD B9 8B 70  q......p
        db   $F3,$DC,$66,$96,$89,$36,$11,$74 ; A5A2 F3 DC 66 96 89 36 11 74  ..f..6.t
        db   $A9,$19,$E7,$2E,$8D,$3F,$20,$DB ; A5AA A9 19 E7 2E 8D 3F 20 DB  .....? .
        db   $8F,$9A,$93,$EC,$FA,$39,$B4,$69 ; A5B2 8F 9A 93 EC FA 39 B4 69  .....9.i
        db   $41,$0D,$5C,$A7,$F9,$7F,$6F,$7E ; A5BA 41 0D 5C A7 F9 7F 6F 7E  A.\...o~
        db   $AF,$19,$9D,$65,$7D,$E8,$61,$17 ; A5C2 AF 19 9D 65 7D E8 61 17  ...e}.a.
        db   $87,$4B,$F9,$F3,$AC,$D7,$96,$85 ; A5CA 87 4B F9 F3 AC D7 96 85  .K......
        db   $E1,$D5,$A8,$8B,$C3,$C6,$FC,$2D ; A5D2 E1 D5 A8 8B C3 C6 FC 2D  .......-
        db   $C2,$CA,$79,$7F,$6C,$FF,$15,$E7 ; A5DA C2 CA 79 7F 6C FF 15 E7  ..y.l...
        db   $CF,$74,$5B,$AB,$EF,$67,$57,$29 ; A5E2 CF 74 5B AB EF 67 57 29  .t[..gW)
        db   $CD,$29,$BE,$79,$DE,$CD,$3D,$44 ; A5EA CD 29 BE 79 DE CD 3D 44  .).y..=D
        db   $5E,$08,$B7,$57,$CD,$4A,$61,$EE ; A5F2 5E 08 B7 57 CD 4A 61 EE  ^..W.Ja.
        db   $AE,$53,$A1,$C6,$63,$3C,$EB,$29 ; A5FA AE 53 A1 C6 63 3C EB 29  .S..c<.)
        db   $AE,$9E,$A2,$2F,$0F,$1B,$8C,$DC ; A602 AE 9E A2 2F 0F 1B 8C DC  .../....
        db   $29,$F7,$5E,$7F,$FA,$DB,$59,$4B ; A60A 29 F7 5E 7F FA DB 59 4B  ).^...YK
        db   $EA,$E5,$3B,$D9,$3E,$CF,$AE,$B4 ; A612 EA E5 3B D9 3E CF AE B4  ..;.>...
        db   $86,$07,$29,$A2,$FA,$D9,$31,$5B ; A61A 86 07 29 A2 FA D9 31 5B  ..)...1[
        db   $08,$BC,$3C,$6E,$33,$70,$A7,$DE ; A622 08 BC 3C 6E 33 70 A7 DE  ..<n3p..
        db   $37,$53,$67,$AB,$94,$B0,$63,$8B ; A62A 37 53 67 AB 94 B0 63 8B  7Sg...c.
        db   $C1,$16,$F3,$9A,$E4,$21,$9D,$59 ; A632 C1 16 F3 9A E4 21 9D 59  .....!.Y
        db   $8D,$C7,$A7,$A8,$8B,$C1,$BA,$97 ; A63A 8D C7 A7 A8 8B C1 BA 97  ........
        db   $CC,$5A,$EA,$59,$E6,$75,$AA,$75 ; A642 CC 5A EA 59 E6 75 AA 75  .Z.Y.u.u
        db   $E7,$BF,$0E,$82,$CB,$0F,$85,$F6 ; A64A E7 BF 0E 82 CB 0F 85 F6  ........
        db   $B6,$0C,$71,$78,$22,$DE,$BD,$EC ; A652 B6 0C 71 78 22 DE BD EC  ..qx"...
        db   $9F,$67,$D5,$CA,$77,$C7,$A9,$8C ; A65A 9F 67 D5 CA 77 C7 A9 8C  .g..w...
        db   $67,$B8,$C6,$9B,$6C,$8F,$E9,$43 ; A662 67 B8 C6 9B 6C 8F E9 43  g...l..C
        db   $3D,$F8,$74,$16,$AE,$53,$DB,$E3 ; A66A 3D F8 74 16 AE 53 DB E3  =.t..S..
        db   $46,$BF,$FD,$7C,$3A,$35,$9A,$F1 ; A672 46 BF FD 7C 3A 35 9A F1  F..|:5..
        db   $08,$43,$87,$46,$9F,$EF,$78,$51 ; A67A 08 43 87 46 9F EF 78 51  .C.F..xQ
        db   $AF,$FD,$E1,$D1,$8A,$6D,$14,$F5 ; A682 AF FD E1 D1 8A 6D 14 F5  .....m..
        db   $11,$78,$78,$DC,$66,$E1,$4F,$50 ; A68A 11 78 78 DC 66 E1 4F 50  .xx.f.OP
        db   $C7,$17,$87,$4B,$20,$B2,$9D,$72 ; A692 C7 17 87 4B 20 B2 9D 72  ...K ..r
        db   $63,$08,$10,$CD,$29,$BE,$79,$CE ; A69A 63 08 10 CD 29 BE 79 CE  c...).y.
        db   $AC,$C6,$7B,$F0,$A9,$EA,$22,$F0 ; A6A2 AC C6 7B F0 A9 EA 22 F0  ..{...".
        db   $62,$D1,$A9,$F6,$7D,$64,$61,$52 ; A6AA 62 D1 A9 F6 7D 64 61 52  b...}daR
        db   $93,$CF,$3E,$47,$B9,$AE,$3D,$F3 ; A6B2 93 CF 3E 47 B9 AE 3D F3  ..>G..=.
        db   $DF,$85,$DF,$A5,$9D,$5C,$A7,$13 ; A6BA DF 85 DF A5 9D 5C A7 13  .....\..
        db   $F2,$10,$CD,$29,$BE,$E3,$D3,$D4 ; A6C2 F2 10 CD 29 BE E3 D3 D4  ...)....
        db   $45,$E1,$63,$B4,$21,$BD,$10,$E5 ; A6CA 45 E1 63 B4 21 BD 10 E5  E.c.!...
        db   $21,$FC,$F7,$E1,$67,$9C,$C5,$B8 ; A6D2 21 FC F7 E1 67 9C C5 B8  !...g...
        db   $79,$EE,$33,$4B,$44,$9B,$08,$BC ; A6DA 79 EE 33 4B 44 9B 08 BC  y.3KD...
        db   $2C,$76,$84,$37,$94,$BE,$7B,$F0 ; A6E2 2C 76 84 37 94 BE 7B F0  ,v.7..{.
        db   $B7,$0F,$31,$76,$2D,$E3,$33,$0C ; A6EA B7 0F 31 76 2D E3 33 0C  ..1v-.3.
        db   $DD,$5A,$18,$45,$E0,$8E,$3E,$35 ; A6F2 DD 5A 18 45 E0 8E 3E 35  .Z.E..>5
        db   $72,$9D,$44,$B6,$62,$61,$10     ; A6FA 72 9D 44 B6 62 61 10     r.D.ba.
; Huffman-compressed text group(s): $14
; Text $0280: 'Whose belongings would you like to sell?'
; Text $0281: '<49> doesn't seem to have anything.'
; Text $0282: 'What would you like to sell?'
; Text $0283: <44>
; Text $0284: 'I'd like to buy that....'<44>'But I don't think you should sell such a valuable item.'
; Text $0285:
; Text $0286: 'I'll pay <47> gold piece<4C> for that.Is that acceptable?'
; Text $0287: 'That's too bad....'
; Text $0288: 'Thank you.'
; Text $0289: 'Then I'll get it from <49> in the wagon.'
; Text $028A: Due to a curse,it won't come off!<43>'How scary!'<43>'Let's call off this deal.'
; Text $028B: 'Then I'll give it to <49>'s ghost.'
; Text $028C: 'Is there anything else?'
; Text $028D: 'Thank you for your business.Come back again.'
; Text $028E: 'Then I'll give it to <49>'s ghost.'
; Text $028F: 'Anything else?'
; Text $0290: 'I'm terribly sorry,but the vault is full,and I can't take any more things.'
; Text $0291: '<47> gold piece<4C>?'
; Text $0292: 'I'm terribly sorry,but I can't keep any more of your money.'
; Text $0293: 'A good rest should invigorate you for tomorrow.Rest well.'<44>
; Text $0294: Turn off the power while holding the RESET Button in.<44>If you turn off the power without holding the RESET Button in,you may lose all that is recorded in the Imperial Scrolls of Honor!
; Text $0295: <49> checks the wall.<44>There's a button.<44>Would you like to press it?
; Text $0296: A message is carved in the floor.<4F>To Those Who Travel in Search of Treasure:<43>Return the treasure you've stolen to this place.'<4F>Then the exit way will appear....'<44>Do you want to return the Iron Safe?
; Text $0297: But the treasure chest is empty....
; Text $0298: Finds the <48>!<44>
; Text $0299: The treasure chest is a Mimic!
; Text $029A: The treasure chest is a Man-Eater Chest!
; Text $029B: But <49> can't carry any more things.
; Text $029C: But <49>'s Party can't carry any more things.
; Text $029D: <44>Do you want to discard something?
; Text $029E: Who'll discard something?
; Text $029F: What do you want to discard?
Bank00_TextGroup_14:
        db   $F0,$45,$BC,$90,$D6,$44,$24,$E8 ; A701 F0 45 BC 90 D6 44 24 E8  .E...D$.
        db   $E1,$D0,$59,$A9,$4C,$3D,$D5,$CA ; A709 E1 D0 59 A9 4C 3D D5 CA  ..Y.L=..
        db   $74,$38,$CC,$67,$9C,$42,$10,$A7 ; A711 74 38 CC 67 9C 42 10 A7  t8.g.B..
        db   $A8,$8B,$C1,$8B,$7B,$20,$8F,$B3 ; A719 A8 8B C1 8B 7B 20 8F B3  ....{ ..
        db   $E2,$02,$DC,$F3,$AE,$B4,$86,$53 ; A721 E2 02 DC F3 AE B4 86 53  .......S
        db   $AD,$EF,$C3,$A1,$84,$5E,$08,$B7 ; A729 AD EF C3 A1 84 5E 08 B7  .....^..
        db   $57,$CD,$4A,$61,$EE,$AE,$53,$A1 ; A731 57 CD 4A 61 EE AE 53 A1  W.Ja..S.
        db   $C6,$63,$3C,$E2,$10,$85,$3D,$44 ; A739 C6 63 3C E2 10 85 3D 44  .c<...=D
        db   $4C,$71,$78,$58,$ED,$EE,$87,$19 ; A741 4C 71 78 58 ED EE 87 19  LqxX....
        db   $8C,$F3,$AC,$A6,$BC,$F7,$57,$E8 ; A749 8C F3 AC A6 BC F7 57 E8  ......W.
        db   $60,$C7,$E0,$DD,$4B,$EB,$1B,$D9 ; A751 60 C7 E0 DD 4B EB 1B D9  `...K...
        db   $3E,$CF,$9E,$FC,$36,$7A,$B9,$4E ; A759 3E CF 9E FC 36 7A B9 4E  >...6z.N
        db   $2B,$CA,$61,$EE,$21,$08,$62,$4C ; A761 2B CA 61 EE 21 08 62 4C  +.a.!.bL
        db   $77,$CB,$A9,$2C,$12,$B6,$60,$37 ; A769 77 CB A9 2C 12 B6 60 37  w..,..`7
        db   $1C,$5A,$C2,$28,$BC,$2C,$76,$84 ; A771 1C 5A C2 28 BC 2C 76 84  .Z.(.,v.
        db   $37,$95,$AF,$32,$CD,$44,$C3,$DD ; A779 37 95 AF 32 CD 44 C3 DD  7..2.D..
        db   $E7,$82,$30,$8D,$72,$13,$FC,$F7 ; A781 E7 82 30 8D 72 13 FC F7  ..0.r...
        db   $57,$EF,$60,$B3,$DD,$5F,$2C,$71 ; A789 57 EF 60 B3 DD 5F 2C 71  W.`.._,q
        db   $8F,$2E,$B6,$60,$29,$EA,$22,$F0 ; A791 8F 2E B6 60 29 EA 22 F0  ...`).".
        db   $F1,$BA,$BF,$62,$CF,$33,$AC,$AF ; A799 F1 BA BF 62 CF 33 AC AF  ...b.3..
        db   $BD,$0C,$22,$F0,$F1,$BA,$9B,$3D ; A7A1 BD 0C 22 F0 F1 BA 9B 3D  .."....=
        db   $5C,$A5,$84,$5E,$1E,$37,$07,$AC ; A7A9 5C A5 84 5E 1E 37 07 AC  \..^.7..
        db   $76,$84,$35,$01,$F7,$1F,$21,$F9 ; A7B1 76 84 35 01 F7 1F 21 F9  v.5...!.
        db   $B7,$31,$6E,$1E,$7B,$8C,$D2,$D1 ; A7B9 B7 31 6E 1E 7B 8C D2 D1  .1n.{...
        db   $26,$C2,$2E,$95,$23,$3C,$E5,$D1 ; A7C1 26 C2 2E 95 23 3C E5 D1  &...#<..
        db   $A7,$E4,$1B,$71,$F3,$52,$7D,$9F ; A7C9 A7 E4 1B 71 F3 52 7D 9F  ...q.R}.
        db   $47,$36,$8D,$28,$21,$55,$1B,$F0 ; A7D1 47 36 8D 28 21 55 1B F0  G6.(!U..
        db   $47,$96,$B1,$46,$BF,$AE,$AD,$42 ; A7D9 47 96 B1 46 BF AE AD 42  G..F...B
        db   $37,$E0,$DC,$87,$EC,$5A,$35,$84 ; A7E1 37 E0 DC 87 EC 5A 35 84  7....Z5.
        db   $34,$A0,$86,$7B,$F0,$B7,$A1,$60 ; A7E9 34 A0 86 7B F0 B7 A1 60  4..{...`
        db   $C2,$2F,$0F,$1B,$83,$D6,$3B,$42 ; A7F1 C2 2F 0F 1B 83 D6 3B 42  ./....;B
        db   $1A,$8E,$52,$1B,$8F,$9E,$73,$17 ; A7F9 1A 8E 52 1B 8F 9E 73 17  ..R...s.
        db   $62,$D4,$5E,$49,$D8,$45,$E1,$60 ; A801 62 D4 5E 49 D8 45 E1 60  b.^I.E.`
        db   $B3,$DC,$7C,$65,$3A,$DE,$FC,$3A ; A809 B3 DC 7C 65 3A DE FC 3A  ..|e:..:
        db   $30,$81,$0A,$7A,$88,$BC,$3C,$6E ; A811 30 81 0A 7A 88 BC 3C 6E  0..z..<n
        db   $A6,$CF,$57,$29,$C8,$4F,$F5,$72 ; A819 A6 CF 57 29 C8 4F F5 72  ..W).O.r
        db   $9F,$EB,$29,$2E,$18,$22,$EE,$DE ; A821 9F EB 29 2E 18 22 EE DE  ..).."..
        db   $9B,$46,$B2,$B1,$B3,$CB,$42,$F0 ; A829 9B 46 B2 B1 B3 CB 42 F0  .F....B.
        db   $D8,$45,$E1,$E3,$70,$7A,$C7,$68 ; A831 D8 45 E1 E3 70 7A C7 68  .E..pz.h
        db   $43,$51,$CA,$43,$71,$F3,$CE,$62 ; A839 43 51 CA 43 71 F3 CE 62  CQ.Cq..b
        db   $EC,$5A,$8B,$C9,$3B,$08,$BC,$29 ; A841 EC 5A 8B C9 3B 08 BC 29  .Z..;..)
        db   $87,$5B,$DF,$87,$46,$10,$21,$4F ; A849 87 5B DF 87 46 10 21 4F  .[..F.!O
        db   $51,$17,$85,$8E,$D6,$E7,$1F,$FF ; A851 51 17 85 8E D6 E7 1F FF  Q.......
        db   $2C,$C2,$BC,$53,$FF,$D6,$DA,$CA ; A859 2C C2 BC 53 FF D6 DA CA  ,..S....
        db   $5F,$3D,$C6,$A4,$A9,$83,$EE,$16 ; A861 5F 3D C6 A4 A9 83 EE 16  _=......
        db   $41,$30,$83,$65,$3F,$75,$8D,$1A ; A869 41 30 83 65 3F 75 8D 1A  A0.e?u..
        db   $9F,$67,$CE,$AC,$C6,$53,$AF,$5B ; A871 9F 67 CE AC C6 53 AF 5B  .g...S.[
        db   $3F,$19,$EF,$C3,$A0,$98,$45,$E0 ; A879 3F 19 EF C3 A0 98 45 E0  ?.....E.
        db   $CB,$35,$13,$0F,$77,$9E,$08,$C2 ; A881 CB 35 13 0F 77 9E 08 C2  .5..w...
        db   $35,$A7,$A8,$8B,$C2,$C7,$6B,$73 ; A889 35 A7 A8 8B C2 C7 6B 73  5.....ks
        db   $8F,$FF,$96,$61,$5E,$29,$FF,$EB ; A891 8F FF 96 61 5E 29 FF EB  ...a^)..
        db   $6D,$65,$2F,$AC,$68,$D4,$FB,$3E ; A899 6D 65 2F AC 68 D4 FB 3E  me/.h..>
        db   $66,$07,$9C,$A7,$5E,$B6,$7E,$34 ; A8A1 66 07 9C A7 5E B6 7E 34  f...^.~4
        db   $A1,$AB,$94,$FF,$5B,$26,$2B,$61 ; A8A9 A1 AB 94 FF 5B 26 2B 61  ....[&+a
        db   $17,$85,$33,$51,$33,$EE,$F8,$27 ; A8B1 17 85 33 51 33 EE F8 27  ..3Q3..'
        db   $C5,$79,$4C,$3D,$DC,$3A,$5C,$A2 ; A8B9 C5 79 4C 3D DC 3A 5C A2  .yL=.:\.
        db   $7E,$AE,$35,$72,$9C,$84,$FF,$3C ; A8C1 7E AE 35 72 9C 84 FF 3C  ~.5r...<
        db   $DB,$3F,$FC,$B5,$DF,$A4,$04,$F9 ; A8C9 DB 3F FC B5 DF A4 04 F9  .?......
        db   $A1,$08,$30,$63,$8B,$C5,$3F,$3D ; A8D1 A1 08 30 63 8B C5 3F 3D  ..0c..?=
        db   $28,$21,$9E,$E3,$79,$96,$87,$F3 ; A8D9 28 21 9E E3 79 96 87 F3  (!..y...
        db   $57,$E4,$06,$BC,$C3,$DE,$1D,$19 ; A8E1 57 E4 06 BC C3 DE 1D 19  W.......
        db   $EE,$37,$48,$C8,$EB,$B2,$3C,$73 ; A8E9 EE 37 48 C8 EB B2 3C 73  .7H...<s
        db   $75,$2E,$F2,$7B,$87,$DD,$8E,$C2 ; A8F1 75 2E F2 7B 87 DD 8E C2  u..{....
        db   $1A,$B9,$4E,$74,$FC,$F4,$A0,$86 ; A8F9 1A B9 4E 74 FC F4 A0 86  ..Nt....
        db   $7B,$8D,$E6,$5A,$1F,$CD,$71,$EF ; A901 7B 8D E6 5A 1F CD 71 EF  {..Z..q.
        db   $29,$7D,$79,$87,$BC,$3A,$33,$DC ; A909 29 7D 79 87 BC 3A 33 DC  )}y..:3.
        db   $6E,$91,$91,$D7,$64,$78,$E6,$EA ; A911 6E 91 91 D7 64 78 E6 EA  n...dx..
        db   $5D,$E4,$F7,$0D,$B5,$72,$9D,$6A ; A919 5D E4 F7 0D B5 72 9D 6A  ]....r.j
        db   $D7,$A1,$24,$32,$C2,$19,$EE,$AF ; A921 D7 A1 24 32 C2 19 EE AF  ..$2....
        db   $B8,$5B,$E2,$39,$FF,$A3,$DD,$C3 ; A929 B8 5B E2 39 FF A3 DD C3  .[.9....
        db   $CF,$71,$AC,$5B,$E4,$7F,$8B,$0D ; A931 CF 71 AC 5B E4 7F 8B 0D  .q.[....
        db   $D7,$8F,$F3,$08,$16,$94,$32,$3C ; A939 D7 8F F3 08 16 94 32 3C  ......2<
        db   $9C,$FE,$AC,$4C,$5A,$3B,$88,$D9 ; A941 9C FE AC 4C 5A 3B 88 D9  ...LZ;..
        db   $96,$7B,$8C,$D2,$C2,$1D,$D8,$FC ; A949 96 7B 8C D2 C2 1D D8 FC  .{......
        db   $6E,$3E,$3B,$16,$5D,$65,$2E,$F2 ; A951 6E 3E 3B 16 5D 65 2E F2  n>;.]e..
        db   $7D,$D8,$D1,$65,$30,$F7,$57,$29 ; A959 7D D8 D1 65 30 F7 57 29  }..e0.W)
        db   $D0,$E3,$31,$9E,$77,$9F,$82,$2D ; A961 D0 E3 31 9E 77 9F 82 2D  ..1.w..-
        db   $C7,$A7,$8A,$99,$AD,$04,$4B,$40 ; A969 C7 A7 8A 99 AD 04 4B 40  ......K@
        db   $DC,$2D,$1A,$FE,$90,$F7,$70,$F3 ; A971 DC 2D 1A FE 90 F7 70 F3  .-....p.
        db   $DC,$64,$21,$33,$FE,$FD,$5E,$33 ; A979 DC 64 21 33 FE FD 5E 33  .d!3..^3
        db   $BC,$6F,$24,$32,$2D,$E7,$78,$FD ; A981 BC 6F 24 32 2D E7 78 FD  .o$2-.x.
        db   $69,$08,$6E,$1E,$EB,$85,$FC,$77 ; A989 69 08 6E 1E EB 85 FC 77  i.n....w
        db   $D2,$86,$F1,$F8,$52,$4F,$C7,$4D ; A991 D2 86 F1 F8 52 4F C7 4D  ....RO.M
        db   $1B,$E9,$03,$A7,$E7,$9E,$E3,$3F ; A999 1B E9 03 A7 E7 9E E3 3F  .......?
        db   $C2,$92,$7E,$35,$72,$9E,$D4,$86 ; A9A1 C2 92 7E 35 72 9E D4 86  ..~5r...
        db   $27,$98,$03,$CF,$39,$EF,$C2,$DE ; A9A9 27 98 03 CF 39 EF C2 DE  '...9...
        db   $60,$B1,$86,$1D,$5E,$37,$07,$9E ; A9B1 60 B1 86 1D 5E 37 07 9E  `...^7..
        db   $E3,$06,$5F,$8F,$9A,$5A,$F3,$5C ; A9B9 E3 06 5F 8F 9A 5A F3 5C  .._..Z.\
        db   $84,$32,$F9,$F2,$17,$FD,$0C,$18 ; A9C1 84 32 F9 F2 17 FD 0C 18  .2......
        db   $FA,$59,$D5,$CA,$73,$4A,$6F,$9E ; A9C9 FA 59 D5 CA 73 4A 6F 9E  .Y..sJo.
        db   $77,$C3,$A7,$E7,$9E,$E3,$58,$FC ; A9D1 77 C3 A7 E7 9E E3 58 FC  w.....X.
        db   $9E,$EB,$AA,$02,$9E,$26,$EA,$5F ; A9D9 9E EB AA 02 9E 26 EA 5F  .....&._
        db   $3D,$C6,$7F,$85,$24,$FC,$68,$EE ; A9E1 3D C6 7F 85 24 FC 68 EE  =...$.h.
        db   $09,$F7,$0B,$0B,$7C,$BD,$7D,$1D ; A9E9 09 F7 0B 0B 7C BD 7D 1D  ....|.}.
        db   $E2,$65,$BC,$3F,$4B,$3D,$C6,$6E ; A9F1 E2 65 BC 3F 4B 3D C6 6E  .e.?K=.n
        db   $15,$58,$E2,$F1,$B8,$CF,$F0,$A4 ; A9F9 15 58 E2 F1 B8 CF F0 A4  .X......
        db   $9F,$8D,$1D,$C1,$3E,$E1,$65,$CC ; AA01 9F 8D 1D C1 3E E1 65 CC  ....>.e.
        db   $9E,$5B,$C8,$EA,$C5,$E3,$71,$9F ; AA09 9E 5B C8 EA C5 E3 71 9F  .[....q.
        db   $E1,$49,$3F,$1A,$3B,$82,$7D,$C2 ; AA11 E1 49 3F 1A 3B 82 7D C2  .I?.;.}.
        db   $CB,$99,$2A,$6D,$C7,$64,$2B,$8F ; AA19 CB 99 2A 6D C7 64 2B 8F  ..*m.d+.
        db   $E6,$F5,$C1,$3D,$58,$9B,$A9,$7C ; AA21 E6 F5 C1 3D 58 9B A9 7C  ...=X..|
        db   $C5,$A3,$53,$EC,$FA,$35,$FF,$EB ; AA29 C5 A3 53 EC FA 35 FF EB  ..S..5..
        db   $CA,$75,$EB,$67,$E3,$3D,$F8,$74 ; AA31 CA 75 EB 67 E3 3D F8 74  .u.g.=.t
        db   $17,$78,$9B,$A9,$7C,$C5,$D8,$B5 ; AA39 17 78 9B A9 7C C5 D8 B5  .x..|...
        db   $35,$7E,$F5,$E8,$D4,$FB,$3E,$8D ; AA41 35 7E F5 E8 D4 FB 3E 8D  5~....>.
        db   $7F,$FA,$F2,$9D,$7A,$D9,$F8,$CF ; AA49 7F FA F2 9D 7A D9 F8 CF  ....z...
        db   $7E,$1D,$05,$DE,$26,$3E,$96,$75 ; AA51 7E 1D 05 DE 26 3E 96 75  ~...&>.u
        db   $72,$9C,$D2,$9B,$E7,$9D,$EF,$0A ; AA59 72 9C D2 9B E7 9D EF 0A  r.......
        db   $35,$FF,$B8,$A6,$D0,$F7,$E1,$D1 ; AA61 35 FF B8 A6 D0 F7 E1 D1  5.......
        db   $4F,$12,$2D,$E7,$B4,$21,$BD,$E1 ; AA69 4F 12 2D E7 B4 21 BD E1  O.-..!..
        db   $46,$BF,$F7,$14,$DA,$1E,$FC,$3A ; AA71 46 BF F7 14 DA 1E FC 3A  F......:
        db   $29,$E2,$45,$BA,$BE,$F6,$75,$72 ; AA79 29 E2 45 BA BE F6 75 72  ).E...ur
        db   $9C,$D2,$9B,$E7,$9D,$EF,$0A,$35 ; AA81 9C D2 9B E7 9D EF 0A 35  .......5
        db   $FF,$B4,$F1,$00                 ; AA89 FF B4 F1 00              ....
; Huffman-compressed text group(s): $15
; Text $02A0: <49> obtains the <48>.
; Text $02A1: <49> gives up the <48>.
; Text $02A2: <49>'s Party gives up the <48>.
; Text $02A3: <49> discards the <48> and obtains the <48>.
; Text $02A4: <49> takes the <48> away from <49>'s ghost and gives the <48> to the ghost.
; Text $02A5: <49> takes the <48> from <49>'s Tool Bag and puts the <48> in it.
; Text $02A6: But nothing is found.
; Text $02A7: <49> searches the area around feet.<44>
; Text $02A8: <49> jumps off the ship and dives into the sea.
; Text $02A9: But <49> can't carry anything.
; Text $02AA: <49> isn't carrying anything.
; Text $02AB: Unable to move,<49> can't use the item.
; Text $02AC: Unable to move,<49> can't check the item.
; Text $02AD: Being lifeless,<49> can't use the item.
; Text $02AE: Being lifeless,<49> can't check the item.
; Text $02AF: <49> discards the <48>.
; Text $02B0: <49> takes the <48> from <49>'s Tool Bag and discards it.
; Text $02B1: <49> takes the <48> from <49>'s ghost and discards it.
; Text $02B2: <49> hands the <48> to <49>.
; Text $02B3: <49> puts the <48> in <49>'s Tool Bag.
; Text $02B4: <49> gives the <48> to <49>'s ghost.
; Text $02B5: <49> takes the <48> from <49>'s Tool Bag.
; Text $02B6: <49> takes the <48> from <49>'s Tool Bag and puts it in <49>'s Tool Bag.
; Text $02B7: <49> takes the <48> from <49>'s Tool Bag and gives it to <49>'s ghost.
; Text $02B8: <49> takes the <48> from <49>'s ghost.
; Text $02B9: <49> takes the <48> from <49>'s ghost and puts it in <49>'s Tool Bag.
; Text $02BA: <49> takes the <48> from <49>'s ghost and gives it to <49>'s ghost.
; Text $02BB: <49> holds the <48> in the other hand.
; Text $02BC: <49> takes the <48> from <49>'s Tool Bag and returns it to <49>'s Tool Bag.
; Text $02BD: <49> takes the <48> from <49>'s ghost and returns it to <49>'s ghost.
; Text $02BE: Do you want to discard the <48>?
; Text $02BF: But <49> has no one to hand things to.
Bank00_TextGroup_15:
        db   $62,$D3,$65,$D7,$86,$59,$EE,$33 ; AA8D 62 D3 65 D7 86 59 EE 33  b.e..Y.3
        db   $70,$EF,$13,$16,$A3,$94,$81,$64 ; AA95 70 EF 13 16 A3 94 81 64  p......d
        db   $F9,$CF,$71,$9B,$87,$78,$98,$BB ; AA9D F9 CF 71 9B 87 78 98 BB  ..q..x..
        db   $16,$A6,$AF,$DE,$BD,$47,$29,$02 ; AAA5 16 A6 AF DE BD 47 29 02  .....G).
        db   $C9,$F3,$9E,$E3,$37,$0E,$F1,$31 ; AAAD C9 F3 9E E3 37 0E F1 31  ....7..1
        db   $6F,$78,$51,$AF,$FD,$2C,$F7,$19 ; AAB5 6F 78 51 AF FD 2C F7 19  oxQ..,..
        db   $B8,$65,$3F,$74,$D9,$75,$E1,$96 ; AABD B8 65 3F 74 D9 75 E1 96  .e?t.u..
        db   $7B,$8C,$DC,$3B,$C4,$C5,$9D,$59 ; AAC5 7B 8C DC 3B C4 C5 9D 59  {..;...Y
        db   $82,$CF,$71,$9B,$86,$56,$96,$BC ; AACD 82 CF 71 9B 86 56 96 BC  ..q..V..
        db   $87,$E6,$DC,$C5,$D8,$B5,$17,$92 ; AAD5 87 E6 DC C5 D8 B5 17 92  ........
        db   $7C,$A7,$EE,$A3,$94,$81,$67,$B8 ; AADD 7C A7 EE A3 94 81 67 B8  |.....g.
        db   $CD,$C3,$3C,$E7,$B8,$D4,$5E,$49 ; AAE5 CD C3 3C E7 B8 D4 5E 49  ..<...^I
        db   $FB,$C4,$C5,$9D,$59,$82,$CF,$71 ; AAED FB C4 C5 9D 59 82 CF 71  ....Y..q
        db   $9B,$86,$43,$F3,$6E,$62,$EC,$5B ; AAF5 9B 86 43 F3 6E 62 EC 5B  ..C.nb.[
        db   $C6,$66,$19,$BA,$B4,$65,$3F,$77 ; AAFD C6 66 19 BA B4 65 3F 77  .f...e?w
        db   $94,$B9,$67,$B8,$CD,$C3,$70,$F7 ; AB05 94 B9 67 B8 CD C3 70 F7  ..g...p.
        db   $1F,$BC,$4D,$D4,$BE,$39,$7B,$F0 ; AB0D 1F BC 4D D4 BE 39 7B F0  ..M..9{.
        db   $E8,$DC,$2C,$84,$A4,$FD,$EF,$13 ; AB15 E8 DC 2C 84 A4 FD EF 13  ..,.....
        db   $16,$20,$BF,$8E,$E0,$B3,$DC,$65 ; AB1D 16 20 BF 8E E0 B3 DC 65  . .....e
        db   $F8,$5C,$BF,$94,$9F,$B9,$00,$1F ; AB25 F8 5C BF 94 9F B9 00 1F  .\......
        db   $BB,$1C,$4C,$59,$BE,$4D,$BE,$4B ; AB2D BB 1C 4C 59 BE 4D BE 4B  ..LY.M.K
        db   $4A,$08,$67,$B8,$C5,$7E,$79,$CA ; AB35 4A 08 67 B8 C5 7E 79 CA  J.g..~y.
        db   $7E,$EF,$79,$48,$16,$E1,$BC,$E7 ; AB3D 7E EF 79 48 16 E1 BC E7  ~.yH....
        db   $B8,$C4,$17,$BC,$4D,$D4,$BE,$62 ; AB45 B8 C4 17 BC 4D D4 BE 62  ....M..b
        db   $D1,$A9,$F6,$7D,$1A,$FF,$F5,$E5 ; AB4D D1 A9 F6 7D 1A FF F5 E5  ...}....
        db   $3A,$DE,$FC,$3A,$3B,$C4,$C5,$B8 ; AB55 3A DE FC 3A 3B C4 C5 B8  :..:;...
        db   $47,$D9,$F4,$6B,$FF,$D7,$C3,$A3 ; AB5D 47 D9 F4 6B FF D7 C3 A3  G..k....
        db   $29,$D6,$F7,$E1,$D1,$DE,$2E,$B2 ; AB65 29 D6 F7 E1 D1 DE 2E B2  ).......
        db   $35,$B3,$01,$9E,$75,$B3,$48,$36 ; AB6D 35 B3 01 9E 75 B3 48 36  5...u.H6
        db   $62,$D1,$A9,$F6,$7C,$92,$19,$EE ; AB75 62 D1 A9 F6 7C 92 19 EE  b...|...
        db   $37,$1C,$5B,$DE,$2E,$B2,$35,$B3 ; AB7D 37 1C 5B DE 2E B2 35 B3  7.[...5.
        db   $01,$9E,$75,$B3,$48,$36,$62,$D1 ; AB85 01 9E 75 B3 48 36 62 D1  ..u.H6b.
        db   $A9,$F6,$7D,$1D,$C4,$6C,$F3,$DC ; AB8D A9 F6 7D 1D C4 6C F3 DC  ..}..l..
        db   $6E,$38,$B7,$BC,$4D,$D1,$C3,$A3 ; AB95 6E 38 B7 BC 4D D1 C3 A3  n8..M...
        db   $43,$88,$08,$02,$26,$CC,$5A,$35 ; AB9D 43 88 08 02 26 CC 5A 35  C...&.Z5
        db   $3E,$CF,$92,$43,$3D,$C6,$E3,$8B ; ABA5 3E CF 92 43 3D C6 E3 8B  >..C=...
        db   $7B,$C4,$DD,$1C,$3A,$34,$38,$80 ; ABAD 7B C4 DD 1C 3A 34 38 80  {...:48.
        db   $80,$22,$6C,$C5,$A3,$53,$EC,$FA ; ABB5 80 22 6C C5 A3 53 EC FA  ."l..S..
        db   $3B,$88,$D9,$E7,$B8,$DC,$71,$6F ; ABBD 3B 88 D9 E7 B8 DC 71 6F  ;.....qo
        db   $78,$98,$B7,$BC,$28,$D7,$FE,$96 ; ABC5 78 98 B7 BC 28 D7 FE 96  x...(...
        db   $7B,$8C,$DC,$3B,$C4,$C5,$9D,$59 ; ABCD 7B 8C DC 3B C4 C5 9D 59  {..;...Y
        db   $82,$CF,$71,$9B,$86,$43,$F3,$6E ; ABD5 82 CF 71 9B 86 43 F3 6E  ..q..C.n
        db   $62,$EC,$5B,$C6,$66,$19,$BA,$B4 ; ABDD 62 EC 5B C6 66 19 BA B4  b.[.f...
        db   $65,$3F,$77,$BC,$28,$D7,$FE,$96 ; ABE5 65 3F 77 BC 28 D7 FE 96  e?w.(...
        db   $E3,$F7,$89,$8B,$3A,$B3,$05,$9E ; ABED E3 F7 89 8B 3A B3 05 9E  ....:...
        db   $E3,$37,$0C,$87,$E6,$DC,$C5,$D8 ; ABF5 E3 37 0C 87 E6 DC C5 D8  .7......
        db   $B5,$17,$92,$7C,$A7,$EE,$F7,$85 ; ABFD B5 17 92 7C A7 EE F7 85  ...|....
        db   $1A,$FF,$D2,$DC,$7E,$F1,$31,$6B ; AC05 1A FF D2 DC 7E F1 31 6B  ....~.1k
        db   $A9,$FA,$59,$EE,$33,$70,$CF,$39 ; AC0D A9 FA 59 EE 33 70 CF 39  ..Y.3p.9
        db   $8B,$BC,$4C,$5B,$CA,$5C,$B3,$DC ; AC15 8B BC 4C 5B CA 5C B3 DC  ..L[.\..
        db   $66,$E1,$B8,$79,$8B,$B1,$6F,$19 ; AC1D 66 E1 B8 79 8B B1 6F 19  f..y..o.
        db   $98,$66,$EA,$D1,$DE,$26,$2D,$47 ; AC25 98 66 EA D1 DE 26 2D 47  .f...&-G
        db   $29,$02,$CF,$71,$9B,$86,$79,$CC ; AC2D 29 02 CF 71 9B 86 79 CC  )..q..y.
        db   $5D,$8B,$51,$79,$27,$EF,$13,$16 ; AC35 5D 8B 51 79 27 EF 13 16  ].Qy'...
        db   $75,$66,$0B,$3D,$C6,$6E,$19,$0F ; AC3D 75 66 0B 3D C6 6E 19 0F  uf.=.n..
        db   $CD,$B9,$8B,$B1,$6F,$19,$98,$66 ; AC45 CD B9 8B B1 6F 19 98 66  ....o..f
        db   $EA,$D1,$DE,$26,$2C,$EA,$CC,$16 ; AC4D EA D1 DE 26 2C EA CC 16  ...&,...
        db   $7B,$8C,$DC,$32,$1F,$9B,$73,$17 ; AC55 7B 8C DC 32 1F 9B 73 17  {..2..s.
        db   $62,$DE,$33,$30,$CD,$D5,$A3,$29 ; AC5D 62 DE 33 30 CD D5 A3 29  b.30...)
        db   $FB,$BC,$A5,$CB,$71,$F7,$0F,$31 ; AC65 FB BC A5 CB 71 F7 0F 31  ....q..1
        db   $76,$2D,$E3,$33,$0C,$DD,$5A,$3B ; AC6D 76 2D E3 33 0C DD 5A 3B  v-.3..Z;
        db   $C4,$C5,$9D,$59,$82,$CF,$71,$9B ; AC75 C4 C5 9D 59 82 CF 71 9B  ...Y..q.
        db   $86,$43,$F3,$6E,$62,$EC,$5B,$C6 ; AC7D 86 43 F3 6E 62 EC 5B C6  .C.nb.[.
        db   $66,$19,$BA,$B4,$65,$3F,$75,$1C ; AC85 66 19 BA B4 65 3F 75 1C  f...e?u.
        db   $A4,$0B,$71,$F3,$CE,$62,$EC,$5A ; AC8D A4 0B 71 F3 CE 62 EC 5A  ..q..b.Z
        db   $8B,$C9,$3F,$78,$98,$B3,$AB,$30 ; AC95 8B C9 3F 78 98 B3 AB 30  ..?x...0
        db   $59,$EE,$33,$70,$C8,$7E,$6D,$CC ; AC9D 59 EE 33 70 C8 7E 6D CC  Y.3p.~m.
        db   $5D,$8B,$51,$79,$27,$EF,$13,$16 ; ACA5 5D 8B 51 79 27 EF 13 16  ].Qy'...
        db   $75,$66,$0B,$3D,$C6,$6E,$19,$0F ; ACAD 75 66 0B 3D C6 6E 19 0F  uf.=.n..
        db   $CD,$B9,$8B,$B1,$6A,$2F,$24,$F9 ; ACB5 CD B9 8B B1 6A 2F 24 F9  ....j/$.
        db   $4F,$DD,$E5,$2E,$5B,$8F,$B8,$79 ; ACBD 4F DD E5 2E 5B 8F B8 79  O...[..y
        db   $8B,$B1,$6F,$19,$98,$66,$EA,$D1 ; ACC5 8B B1 6F 19 98 66 EA D1  ..o..f..
        db   $DE,$26,$2C,$EA,$CC,$16,$7B,$8C ; ACCD DE 26 2C EA CC 16 7B 8C  .&,...{.
        db   $DC,$32,$1F,$9B,$73,$17,$62,$D4 ; ACD5 DC 32 1F 9B 73 17 62 D4  .2..s.b.
        db   $5E,$49,$F2,$9F,$BA,$8E,$52,$05 ; ACDD 5E 49 F2 9F BA 8E 52 05  ^I....R.
        db   $B8,$F9,$E7,$31,$76,$2D,$45,$E4 ; ACE5 B8 F9 E7 31 76 2D 45 E4  ...1v-E.
        db   $9F,$BC,$4C,$5A,$F3,$0F,$4B,$3D ; ACED 9F BC 4C 5A F3 0F 4B 3D  ..LZ..K=
        db   $C6,$6E,$1B,$87,$9E,$E3,$4B,$DC ; ACF5 C6 6E 1B 87 9E E3 4B DC  .n....K.
        db   $7F,$5D,$4F,$DE,$F1,$31,$67,$56 ; ACFD 7F 5D 4F DE F1 31 67 56  .]O..1gV
        db   $60,$B3,$DC,$66,$E1,$90,$FC,$DB ; AD05 60 B3 DC 66 E1 90 FC DB  `..f....
        db   $98,$BB,$16,$F1,$99,$86,$6E,$AD ; AD0D 98 BB 16 F1 99 86 6E AD  ......n.
        db   $19,$4F,$DD,$F0,$E9,$F9,$96,$E3 ; AD15 19 4F DD F0 E9 F9 96 E3  .O......
        db   $E7,$9C,$C5,$D8,$B7,$8C,$CC,$33 ; AD1D E7 9C C5 D8 B7 8C CC 33  .......3
        db   $75,$68,$EF,$13,$16,$75,$66,$0B ; AD25 75 68 EF 13 16 75 66 0B  uh...uf.
        db   $3D,$C6,$6E,$19,$0F,$CD,$B9,$8B ; AD2D 3D C6 6E 19 0F CD B9 8B  =.n.....
        db   $B1,$6A,$2F,$24,$F9,$4F,$DD,$F0 ; AD35 B1 6A 2F 24 F9 4F DD F0  .j/$.O..
        db   $E9,$F9,$96,$E3,$E7,$9C,$C5,$D8 ; AD3D E9 F9 96 E3 E7 9C C5 D8  ........
        db   $B5,$17,$92,$7E,$F1,$74,$B3,$AB ; AD45 B5 17 92 7E F1 74 B3 AB  ...~.t..
        db   $94,$E6,$94,$DF,$3C,$EF,$78,$51 ; AD4D 94 E6 94 DF 3C EF 78 51  ....<.xQ
        db   $AF,$FD,$CF,$71,$9B,$85,$3C,$4D ; AD55 AF FD CF 71 9B 85 3C 4D  ...q..<M
        db   $D4,$BE,$62,$D7,$52,$C7,$3A,$4C ; AD5D D4 BE 62 D7 52 C7 3A 4C  ..b.R.:L
        db   $67,$9D,$75,$3F,$73,$DF,$87,$41 ; AD65 67 9D 75 3F 73 DF 87 41  g.u?s..A
        db   $67,$9E,$F1,$00                 ; AD6D 67 9E F1 00              g...
; Huffman-compressed text group(s): $16
; Text $02C0: <49> can't use spells.
; Text $02C1: <49> doesn't know a spell which can be used while moving.
; Text $02C2: Not enough MP!
; Text $02C3: <49> chants <4A>!
; Text $02C4: <49> bumps into the ceiling!
; Text $02C5: But nothing happens.
; Text $02C6: A red light glows in the treasure chest.
; Text $02C7: A yellow light glows in the treasure chest.
; Text $02C8: A blue light glows in the treasure chest.
; Text $02C9: The treasure chest seems to be empty.
; Text $02CA: <49>'s wounds heal!
; Text $02CB: <49>'s numbness goes away!
; Text $02CC: The poison leaves <49>'s body!
; Text $02CD: <49> revives!
; Text $02CE: <49> doesn't revive!
; Text $02CF: Being lifeless,<49> can't cast spells.
; Text $02D0: Being paralyzed,<49> can't cast spells.
; Text $02D1: <49>'s Party isn't carrying anything.
; Text $02D2: You shouldn't throw that away!
; Text $02D3: <49> appraises the <48>.
; Text $02D4: <44>'Hmm...must be a weapon.'
; Text $02D5: <44>'Hmm...must be armor.'
; Text $02D6: <44>'Hmm...must be a shield.'
; Text $02D7: <44>'Hmm...must be a cap or helmet.'
; Text $02D8: <44>'Hmm...must be an item.'
; Text $02D9: <44>'A shop should pay <47> gold piece<4C> for this.'
; Text $02DA: <44>'What an awesome object!'
; Text $02DB: <44>'No store is likely to be able to appraise the value of this.'
; Text $02DC: Doesn't come off due to a curse!
; Text $02DD: <44>'Doesn't seem to be cursed.'
; Text $02DE: <44>'It seems that this can only be used once.'
; Text $02DF: <44>'It seems that this can be used time after time.'
Bank00_TextGroup_16:
        db   $62,$D1,$A9,$F6,$7C,$92,$18,$BC ; AD71 62 D1 A9 F6 7C 92 18 BC  b...|...
        db   $88,$40,$BB,$C4,$C5,$BD,$90,$47 ; AD79 88 40 BB C4 C5 BD 90 47  .@.....G
        db   $D9,$F3,$33,$96,$B2,$E2,$F2,$21 ; AD81 D9 F3 33 96 B2 E2 F2 21  ..3....!
        db   $0C,$D5,$F9,$1D,$F4,$6A,$7A,$C8 ; AD89 0C D5 F9 1D F4 6A 7A C8  .....jz.
        db   $C9,$21,$EE,$6A,$FC,$80,$D6,$CD ; AD91 C9 21 EE 6A FC 80 D6 CD  .!.j....
        db   $2E,$1D,$1D,$E2,$65,$4B,$E0,$72 ; AD99 2E 1D 1D E2 65 4B E0 72  ....eK.r
        db   $9A,$2F,$99,$34,$DA,$B1,$31,$68 ; ADA1 9A 2F 99 34 DA B1 31 68  ./.4..1h
        db   $EE,$A6,$E5,$AA,$5E,$55,$89,$8B ; ADA9 EE A6 E5 AA 5E 55 89 8B  ....^U..
        db   $59,$4D,$BE,$4B,$70,$DE,$73,$DC ; ADB1 59 4D BE 4B 70 DE 73 DC  YM.Kp.s.
        db   $68,$C7,$21,$C3,$A2,$AC,$4D,$D4 ; ADB9 68 C7 21 C3 A2 AC 4D D4  h.!...M.
        db   $BE,$39,$7B,$F0,$E8,$D7,$5F,$3E ; ADC1 BE 39 7B F0 E8 D7 5F 3E  .9{..._>
        db   $41,$97,$78,$A9,$9B,$E3,$DD,$0E ; ADC9 41 97 78 A9 9B E3 DD 0E  A.x.....
        db   $51,$77,$D4,$42,$5A,$2D,$C3,$CF ; ADD1 51 77 D4 42 5A 2D C3 CF  Qw.BZ-..
        db   $71,$9F,$E1,$49,$3F,$1A,$3B,$82 ; ADD9 71 9F E1 49 3F 1A 3B 82  q..I?.;.
        db   $7E,$F1,$53,$35,$62,$10,$96,$B4 ; ADE1 7E F1 53 35 62 10 96 B4  ~.S5b...
        db   $39,$45,$DF,$51,$09,$68,$B7,$0F ; ADE9 39 45 DF 51 09 68 B7 0F  9E.Q.h..
        db   $3D,$C6,$7F,$85,$24,$FC,$68,$EE ; ADF1 3D C6 7F 85 24 FC 68 EE  =...$.h.
        db   $09,$FB,$C5,$4C,$D6,$60,$91,$A1 ; ADF9 09 FB C5 4C D6 60 91 A1  ...L.`..
        db   $CA,$2E,$FA,$88,$4B,$45,$B8,$79 ; AE01 CA 2E FA 88 4B 45 B8 79  ....KE.y
        db   $EE,$33,$FC,$29,$27,$E3,$47,$70 ; AE09 EE 33 FC 29 27 E3 47 70  .3.)'.Gp
        db   $4F,$DE,$2F,$1B,$8C,$FF,$0A,$49 ; AE11 4F DE 2F 1B 8C FF 0A 49  O./....I
        db   $F8,$D1,$DC,$13,$E2,$02,$D2,$CF ; AE19 F8 D1 DC 13 E2 02 D2 CF  ........
        db   $3A,$C8,$C2,$DF,$2F,$5F,$78,$98 ; AE21 3A C8 C2 DF 2F 5F 78 98  :.../_x.
        db   $BB,$16,$6A,$52,$7E,$96,$B8,$58 ; AE29 BB 16 6A 52 7E 96 B8 58  ..jR~..X
        db   $55,$89,$8B,$B1,$63,$4D,$B6,$4C ; AE31 55 89 8B B1 63 4D B6 4C  U...cM.L
        db   $11,$6A,$24,$16,$56,$96,$BA,$B1 ; AE39 11 6A 24 16 56 96 BA B1  .j$.V...
        db   $78,$DC,$6F,$33,$C2,$93,$D0,$0B ; AE41 78 DC 6F 33 C2 93 D0 0B  x.o3....
        db   $48,$16,$62,$EC,$5A,$CC,$FB,$5D ; AE49 48 16 62 EC 5A CC FB 5D  H.b.Z..]
        db   $58,$98,$B7,$C5,$2E,$52,$05,$56 ; AE51 58 98 B7 C5 2E 52 05 56  X....R.V
        db   $26,$2D,$EC,$82,$3E,$CF,$BE,$29 ; AE59 26 2D EC 82 3E CF BE 29  &-..>..)
        db   $72,$90,$AB,$13,$74,$70,$E8,$D0 ; AE61 72 90 AB 13 74 70 E8 D0  r...tp..
        db   $E2,$02,$00,$89,$B3,$16,$8D,$4F ; AE69 E2 02 00 89 B3 16 8D 4F  .......O
        db   $B3,$E8,$D4,$9F,$17,$91,$08,$17 ; AE71 B3 E8 D4 9F 17 91 08 17  ........
        db   $78,$9B,$A3,$87,$46,$F2,$BF,$58 ; AE79 78 9B A3 87 46 F2 BF 58  x...F..X
        db   $56,$88,$1E,$B6,$62,$D1,$A9,$F6 ; AE81 56 88 1E B6 62 D1 A9 F6  V...b...
        db   $7D,$1A,$93,$E2,$F2,$21,$02,$EF ; AE89 7D 1A 93 E2 F2 21 02 EF  }....!..
        db   $13,$17,$62,$D4,$D5,$FB,$D7,$B8 ; AE91 13 17 62 D4 D5 FB D7 B8  ..b.....
        db   $47,$D9,$F4,$6B,$FF,$D7,$C3,$A3 ; AE99 47 D9 F4 6B FF D7 C3 A3  G..k....
        db   $29,$D6,$F7,$E1,$D1,$DE,$2A,$9C ; AEA1 29 D6 F7 E1 D1 DE 2A 9C  ).....*.
        db   $A7,$15,$E5,$30,$F4,$FB,$3E,$7B ; AEA9 A7 15 E5 30 F4 FB 3E 7B  ...0..>{
        db   $FE,$5A,$CF,$75,$7C,$AD,$2D,$75 ; AEB1 FE 5A CF 75 7C AD 2D 75  .Z.u|.-u
        db   $62,$62,$CB,$E7,$CF,$D7,$84,$0B ; AEB9 62 62 CB E7 CF D7 84 0B  bb......
        db   $3D,$C6,$6E,$1D,$E2,$63,$F0,$47 ; AEC1 3D C6 6E 1D E2 63 F0 47  =.n..c.G
        db   $B6,$DE,$8B,$52,$4F,$AC,$8C,$B9 ; AEC9 B6 DE 8B 52 4F AC 8C B9  ...RO...
        db   $A0,$BE,$64,$D8,$44,$C7,$E0,$8F ; AED1 A0 BE 64 D8 44 C7 E0 8F  ..d.D...
        db   $6D,$BD,$16,$A4,$9F,$59,$19,$7F ; AED9 6D BD 16 A4 9F 59 19 7F  m....Y..
        db   $6C,$FD,$84,$4C,$7E,$08,$F6,$DB ; AEE1 6C FD 84 4C 7E 08 F6 DB  l..L~...
        db   $D1,$6A,$49,$F5,$91,$97,$15,$F8 ; AEE9 D1 6A 49 F5 91 97 15 F8  .jI.....
        db   $21,$EB,$08,$98,$FC,$11,$ED,$B7 ; AEF1 21 EB 08 98 FC 11 ED B7  !.......
        db   $A2,$D4,$93,$EB,$23,$2E,$8D,$7C ; AEF9 A2 D4 93 EB 23 2E 8D 7C  ....#..|
        db   $E9,$FE,$B8,$85,$A1,$D8,$44,$C7 ; AF01 E9 FE B8 85 A1 D8 44 C7  ......D.
        db   $E0,$8F,$6D,$BD,$16,$A4,$9F,$59 ; AF09 E0 8F 6D BD 16 A4 9F 59  ..m....Y
        db   $19,$4F,$71,$C5,$AC,$22,$63,$F0 ; AF11 19 4F 71 C5 AC 22 63 F0  .Oq.."c.
        db   $A6,$62,$BC,$F9,$C5,$79,$4C,$3D ; AF19 A6 62 BC F9 C5 79 4C 3D  .b...yL=
        db   $DE,$56,$BC,$CB,$35,$13,$0F,$77 ; AF21 DE 56 BC CB 35 13 0F 77  .V..5..w
        db   $9E,$08,$C2,$35,$C8,$4F,$F3,$DF ; AF29 9E 08 C2 35 C8 4F F3 DF  ...5.O..
        db   $84,$C2,$26,$3F,$04,$5B,$AB,$E5 ; AF31 84 C2 26 3F 04 5B AB E5  ..&?.[..
        db   $3C,$AD,$02,$9B,$46,$9B,$2D,$F0 ; AF39 3C AD 02 9B 46 9B 2D F0  <...F.-.
        db   $8D,$EA,$D4,$44,$C7,$E0,$CA,$9C ; AF41 8D EA D4 44 C7 E0 CA 9C  ...D....
        db   $4F,$3F,$1B,$85,$A1,$C6,$62,$15 ; AF49 4F 3F 1B 85 A1 C6 62 15  O?....b.
        db   $E7,$9D,$64,$65,$B3,$01,$9E,$72 ; AF51 E7 9D 64 65 B3 01 9E 72  ..de...r
        db   $F9,$F3,$F5,$E1,$0C,$F7,$1A,$92 ; AF59 F9 F3 F5 E1 0C F7 1A 92  ........
        db   $C1,$23,$4A,$19,$EF,$C2,$61,$17 ; AF61 C1 23 4A 19 EF C2 61 17  .#J...a.
        db   $4B,$20,$8F,$B3,$E8,$E6,$D1,$A5 ; AF69 4B 20 8F B3 E8 E6 D1 A5  K ......
        db   $04,$37,$A9,$19,$E7,$2E,$8D,$3F ; AF71 04 37 A9 19 E7 2E 8D 3F  .7.....?
        db   $21,$56,$26,$3F,$0E,$96,$41,$1F ; AF79 21 56 26 3F 0E 96 41 1F  !V&?..A.
        db   $67,$C4,$05,$B9,$E7,$59,$1A,$34 ; AF81 67 C4 05 B9 E7 59 1A 34  g....Y.4
        db   $FC,$87,$AC,$22,$63,$F0,$B0,$F8 ; AF89 FC 87 AC 22 63 F0 B0 F8  ..."c...
        db   $80,$B4,$B3,$DD,$5F,$3D,$F8,$5A ; AF91 80 B4 B3 DD 5F 3D F8 5A  ...._=.Z
        db   $35,$3D,$27,$0A,$F5,$91,$92,$43 ; AF99 35 3D 27 0A F5 91 92 43  5='....C
        db   $DD,$27,$18,$61,$13,$1F,$85,$87 ; AFA1 DD 27 18 61 13 1F 85 87  .'.a....
        db   $C4,$05,$A5,$9E,$EA,$F9,$EF,$C2 ; AFA9 C4 05 A5 9E EA F9 EF C2  ........
        db   $D1,$A9,$EB,$23,$24,$87,$B9,$F9 ; AFB1 D1 A9 EB 23 24 87 B9 F9  ...#$...
        db   $68,$CA,$83,$8F,$E7,$E5,$A1,$84 ; AFB9 68 CA 83 8F E7 E5 A1 84  h.......
        db   $40                             ; AFC1 40                       @
; Huffman-compressed text group(s): $17
; Text $02E0: <44>'It seems that anyone can be equipped with this.'
; Text $02E1: <44>'The following can be equipped with this:<43><40>
; Text $02E2:  <49>.'
; Text $02E3:  <49> and <49>.'
; Text $02E4:  <49>,<49><43> and <49>.'
; Text $02E5: <44>'I don't think any of us can be equipped with this.'
; Text $02E6: <49> throws the Boomerang.
; Text $02E7: <49> administers the <48> to the King.
; Text $02E8: <49> wears the <48>.
; Text $02E9: Started flying high up into the sky.<4B>
; Text $02EA: The <48> is cursed.
; Text $02EB: <44>
; Text $02EC: 'Come this way....'
; Text $02ED: 'If you go that way,you'll go back....'
; Text $02EE: 'Not that way....'
; Text $02EF: <44>'It seems that only I can be equipped with this.'
; Text $02F0: There's no one in that direction.
; Text $02F1: 'Bow,Wow,Wow!'
; Text $02F2: But MP isn't increased more.
; Text $02F3: 'You're late.Come in the shop.Quick!'
; Text $02F4: 'Come this way,you brat!'<43>'Let me go! I don't want to go!'
; Text $02F5: 'Help! Help me!'
; Text $02F6: The wounds of <49> and the others heal.
; Text $02F7: 'This is an item shop.They don't carry souvenirs,though.'
; Text $02F8: 'Here lies Ruvas the Soldier who saved this town.'
; Text $02F9: 'And this is....Excuse me.'<4F>Nurse,I'd like to show that to them.'<44>Nurse:'Of course.'
; Text $02FA: 'This is the armor they believe Ruvas wore.'<4F>They say this armor has a very mysterious power.'
; Text $02FB: 'And this is the Aneaux Spa.Very refreshing after a long journey.'
; Text $02FC: 'By the way,have you decided where to stay tonight?'<4F>I recommend this inn.The people are courteous and the price is reasonable.Well,I must go now.Bye.'
; Text $02FD: 'No! Let me go! Help! Someone!'
; Text $02FE: 'Stop! <4B>Or the Princess will be harmed!'
; Text $02FF: 'Quiet! Necrosaro will arrive shortly!'
Bank00_TextGroup_17:
        db   $63,$F0,$B0,$F8,$80,$B4,$B3,$DD ; AFC2 63 F0 B0 F8 80 B4 B3 DD  c.......
        db   $5F,$29,$D7,$26,$34,$6A,$7A,$C8 ; AFCA 5F 29 D7 26 34 6A 7A C8  _).&4jz.
        db   $C2,$A5,$27,$9E,$7C,$8F,$73,$5C ; AFD2 C2 A5 27 9E 7C 8F 73 5C  ..'.|.s\
        db   $7B,$E7,$BF,$09,$84,$4C,$7E,$1E ; AFDA 7B E7 BF 09 84 4C 7E 1E  {....L~.
        db   $37,$19,$09,$84,$25,$AE,$1D,$1A ; AFE2 37 19 09 84 25 AE 1D 1A  7...%...
        db   $35,$3D,$64,$61,$52,$93,$CF,$3E ; AFEA 35 3D 64 61 52 93 CF 3E  5=daR..>
        db   $47,$B9,$AE,$3D,$F3,$DF,$85,$D3 ; AFF2 47 B9 AE 3D F3 DF 85 D3  G..=....
        db   $46,$EA,$59,$16,$62,$61,$16,$62 ; AFFA 46 EA 59 16 62 61 16 62  F.Y.ba.b
        db   $CA,$7E,$E6,$26,$11,$66,$26,$CC ; B002 CA 7E E6 26 11 66 26 CC  .~.&.f&.
        db   $48,$DE,$53,$F7,$31,$30,$89,$8F ; B00A 48 DE 53 F7 31 30 89 8F  H.S.10..
        db   $C2,$C6,$F6,$4F,$B3,$E7,$BF,$0D ; B012 C2 C6 F6 4F B3 E7 BF 0D  ...O....
        db   $9E,$53,$AF,$4A,$19,$25,$A3,$53 ; B01A 9E 53 AF 4A 19 25 A3 53  .S.J.%.S
        db   $D6,$46,$15,$29,$3C,$F3,$E4,$7B ; B022 D6 46 15 29 3C F3 E4 7B  .F.)<..{
        db   $9A,$E3,$DF,$3D,$F8,$4C,$22,$62 ; B02A 9A E3 DF 3D F8 4C 22 62  ...=.L"b
        db   $CF,$7F,$CB,$45,$9E,$E3,$37,$66 ; B032 CF 7F CB 45 9E E3 37 66  ...E..7f
        db   $6D,$1F,$53,$A3,$BC,$4C,$59,$7D ; B03A 6D 1F 53 A3 BC 4C 59 7D  m.S..LY}
        db   $B7,$87,$C2,$71,$F2,$CF,$71,$9B ; B042 B7 87 C2 71 F2 CF 71 9B  ...q..q.
        db   $86,$79,$CF,$71,$91,$9C,$3A,$3B ; B04A 86 79 CF 71 91 9C 3A 3B  .y.q..:;
        db   $C4,$C5,$9A,$0B,$F2,$CF,$71,$9B ; B052 C4 C5 9A 0B F2 CF 71 9B  ......q.
        db   $87,$78,$BA,$EE,$BF,$71,$EE,$42 ; B05A 87 78 BA EE BF 71 EE 42  .x...q.B
        db   $15,$F0,$E8,$D7,$E5,$17,$C9,$F3 ; B062 15 F0 E8 D7 E5 17 C9 F3  ........
        db   $B8,$6F,$39,$EE,$31,$33,$AF,$BA ; B06A B8 6F 39 EE 31 33 AF BA  .o9.13..
        db   $26,$2F,$1B,$8C,$DC,$37,$0B,$46 ; B072 26 2F 1B 8C DC 37 0B 46  &/...7.F
        db   $9F,$90,$F7,$BC,$4C,$71,$78,$37 ; B07A 9F 90 F7 BC 4C 71 78 37  ....Lqx7
        db   $A6,$D1,$9E,$FC,$2C,$D2,$D7,$D0 ; B082 A6 D1 9E FC 2C D2 D7 D0  ....,...
        db   $C2,$2F,$0B,$08,$6A,$E5,$3A,$89 ; B08A C2 2F 0B 08 6A E5 3A 89  ./..j.:.
        db   $CF,$75,$7C,$D2,$D6,$DA,$B9,$4F ; B092 CF 75 7C D2 D6 DA B9 4F  .u|....O
        db   $68,$43,$51,$3A,$CA,$C6,$CF,$A1 ; B09A 68 43 51 3A CA C6 CF A1  hCQ:....
        db   $84,$5E,$0C,$A9,$7C,$F7,$57,$CD ; B0A2 84 5E 0C A9 7C F7 57 CD  .^..|.W.
        db   $2D,$7D,$0C,$22,$63,$F0,$B0,$F8 ; B0AA 2D 7D 0C 22 63 F0 B0 F8  -}."c...
        db   $80,$B4,$B3,$DD,$5F,$49,$C2,$BD ; B0B2 80 B4 B3 DD 5F 49 C2 BD  ...._I..
        db   $63,$46,$A7,$AC,$8C,$2A,$52,$79 ; B0BA 63 46 A7 AC 8C 2A 52 79  cF...*Ry
        db   $E7,$C8,$F7,$35,$C7,$BE,$7B,$F0 ; B0C2 E7 C8 F7 35 C7 BE 7B F0  ...5..{.
        db   $98,$45,$E3,$71,$F1,$D8,$B1,$CE ; B0CA 98 45 E3 71 F1 D8 B1 CE  .E.q....
        db   $93,$1B,$87,$9E,$EA,$FB,$DE,$7C ; B0D2 93 1B 87 9E EA FB DE 7C  .......|
        db   $46,$FC,$93,$EF,$17,$83,$76,$5A ; B0DA 46 FC 93 EF 17 83 76 5A  F.....vZ
        db   $6C,$8B,$2D,$36,$45,$96,$AA,$D4 ; B0E2 6C 8B 2D 36 45 96 AA D4  l.-6E...
        db   $44,$DD,$4B,$E6,$4D,$37,$70,$8F ; B0EA 44 DD 4B E6 4D 37 70 8F  D.K.M7p.
        db   $B3,$EE,$1C,$7F,$0A,$43,$DD,$6C ; B0F2 B3 EE 1C 7F 0A 43 DD 6C  .....C.l
        db   $FC,$77,$8B,$C2,$A7,$29,$ED,$F1 ; B0FA FC 77 8B C2 A7 29 ED F1  .w...)..
        db   $A0,$AE,$3B,$B7,$A6,$D1,$B8,$79 ; B102 A0 AE 3B B7 A6 D1 B8 79  ..;....y
        db   $EE,$31,$5E,$7C,$F7,$46,$8A,$79 ; B10A EE 31 5E 7C F7 46 8A 79  .1^|.F.y
        db   $1B,$3A,$B5,$11,$78,$37,$A6,$D1 ; B112 1B 3A B5 11 78 37 A6 D1  .:..x7..
        db   $9E,$FC,$2C,$D2,$D6,$DA,$B9,$4E ; B11A 9E FC 2C D2 D6 DA B9 4E  ..,....N
        db   $B3,$F5,$7A,$B5,$08,$DF,$83,$72 ; B122 B3 F5 7A B5 08 DF 83 72  ..z....r
        db   $1F,$5A,$35,$13,$57,$58,$DE,$C9 ; B12A 1F 5A 35 13 57 58 DE C9  .Z5.WX..
        db   $F6,$7C,$D2,$9B,$E7,$9D,$44,$D5 ; B132 F6 7C D2 9B E7 9D 44 D5  .|....D.
        db   $A8,$8B,$C1,$1C,$43,$CD,$5C,$8E ; B13A A8 8B C1 1C 43 CD 5C 8E  ....C.\.
        db   $21,$E7,$5A,$2A,$D4,$45,$E3,$71 ; B142 21 E7 5A 2A D4 45 E3 71  !.Z*.E.q
        db   $9A,$94,$9F,$A5,$A5,$0C,$C5,$94 ; B14A 9A 94 9F A5 A5 0C C5 94  ........
        db   $FD,$CF,$71,$A5,$EE,$3E,$5A,$E1 ; B152 FD CF 71 A5 EE 3E 5A E1  ..q..>Z.
        db   $61,$DE,$2F,$0F,$1B,$F0,$B7,$0B ; B15A 61 DE 2F 0F 1B F0 B7 0B  a./.....
        db   $29,$EE,$38,$B7,$15,$E7,$CF,$7F ; B162 29 EE 38 B7 15 E7 CF 7F  ).8.....
        db   $1B,$8A,$F7,$B2,$7D,$9F,$46,$BF ; B16A 1B 8A F7 B2 7D 9F 46 BF  ....}.F.
        db   $FD,$78,$A5,$34,$81,$F3,$E4,$D9 ; B172 FD 78 A5 34 81 F3 E4 D9  .x.4....
        db   $EF,$29,$A2,$EC,$22,$F0,$47,$1F ; B17A EF 29 A2 EC 22 F0 47 1F  .)..".G.
        db   $1A,$1C,$05,$BA,$44,$D2,$52,$CF ; B182 1A 1C 05 BA 44 D2 52 CF  ....D.R.
        db   $71,$BA,$F3,$0F,$78,$3F,$9A,$BC ; B18A 71 BA F3 0F 78 3F 9A BC  q...x?..
        db   $E2,$5A,$43,$DC,$F7,$E1,$67,$96 ; B192 E2 5A 43 DC F7 E1 67 96  .ZC...g.
        db   $8D,$84,$5E,$14,$C3,$F7,$3D,$F8 ; B19A 8D 84 5E 14 C3 F7 3D F8  ..^...=.
        db   $5B,$85,$D1,$DD,$90,$CB,$C6,$92 ; B1A2 5B 85 D1 DD 90 CB C6 92  [.......
        db   $1A,$D0,$C3,$A9,$94,$9F,$90,$6D ; B1AA 1A D0 C3 A9 94 9F 90 6D  .......m
        db   $63,$B7,$BA,$1C,$66,$33,$CE,$2B ; B1B2 63 B7 BA 1C 66 33 CE 2B  c...f3.+
        db   $CB,$59,$EE,$AF,$9E,$73,$DC,$5A ; B1BA CB 59 EE AF 9E 73 DC 5A  .Y...s.Z
        db   $C1,$8D,$94,$9F,$90,$E9,$F8,$75 ; B1C2 C1 8D 94 9F 90 E9 F8 75  .......u
        db   $A8,$68,$E5,$3F,$20,$C2,$2F,$0F ; B1CA A8 68 E5 3F 20 C2 2F 0F  .h.? ./.
        db   $1B,$F0,$B7,$0B,$3D,$C6,$5F,$DB ; B1D2 1B F0 B7 0B 3D C6 5F DB  ....=._.
        db   $3F,$CF,$71,$5E,$B2,$21,$C1,$48 ; B1DA 3F CF 71 5E B2 21 C1 48  ?.q^.!.H
        db   $6E,$91,$34,$94,$B3,$53,$F0,$C3 ; B1E2 6E 91 34 94 B3 53 F0 C3  n.4..S..
        db   $AB,$C6,$E2,$BC,$4B,$5E,$7B,$F0 ; B1EA AB C6 E2 BC 4B 5E 7B F0  ....K^{.
        db   $B2,$FE,$D9,$FE,$BA,$96,$5D,$48 ; B1F2 B2 FE D9 FE BA 96 5D 48  ......]H
        db   $7E,$BD,$6D,$64,$E3,$FC,$94,$96 ; B1FA 7E BD 6D 64 E3 FC 94 96  ~.md....
        db   $F3,$2D,$0F,$B0,$8B,$C2,$98,$7E ; B202 F3 2D 0F B0 8B C2 98 7E  .-.....~
        db   $E7,$BF,$0B,$70,$B3,$DC,$6A,$61 ; B20A E7 BF 0B 70 B3 DC 6A 61  ...p..ja
        db   $85,$4B,$2F,$BA,$FE,$57,$BB,$71 ; B212 85 4B 2F BA FE 57 BB 71  .K/..W.q
        db   $0F,$D7,$BE,$10,$F8,$2B,$F0,$E8 ; B21A 0F D7 BE 10 F8 2B F0 E8  .....+..
        db   $CA,$83,$8F,$E5,$D0,$93,$A3,$37 ; B222 CA 83 8F E5 D0 93 A3 37  .......7
        db   $D2,$9F,$98,$AD,$84,$5E,$0D,$DA ; B22A D2 9F 98 AD 84 5E 0D DA  .....^..
        db   $F3,$DC,$66,$96,$B6,$D7,$5A,$43 ; B232 F3 DC 66 96 B6 D7 5A 43  ..f...ZC
        db   $57,$29,$DE,$88,$F9,$E8,$F7,$35 ; B23A 57 29 DE 88 F9 E8 F7 35  W).....5
        db   $71,$F1,$9E,$71,$3A,$D7,$9E,$4F ; B242 71 F1 9E 71 3A D7 9E 4F  q..q:..O
        db   $94,$5D,$E9,$EA,$3A,$AC,$6F,$88 ; B24A 94 5D E9 EA 3A AC 6F 88  .]..:.o.
        db   $E6,$DB,$41,$FB,$9E,$FC,$2D,$C3 ; B252 E6 DB 41 FB 9E FC 2D C3  ..A...-.
        db   $3E,$FE,$37,$1B,$C8,$9F,$30,$19 ; B25A 3E FE 37 1B C8 9F 30 19  >.7...0.
        db   $7E,$34,$72,$9F,$B8,$94,$96,$53 ; B262 7E 34 72 9F B8 94 96 53  ~4r....S
        db   $F7,$3D,$C6,$F3,$FE,$46,$37,$0B ; B26A F7 3D C6 F3 FE 46 37 0B  .=...F7.
        db   $7C,$29,$49,$AD,$98,$0E,$E8,$A2 ; B272 7C 29 49 AD 98 0E E8 A2  |)I.....
        db   $10,$6D,$63,$5A,$92,$7D,$44,$E3 ; B27A 10 6D 63 5A 92 7D 44 E3  .mcZ.}D.
        db   $96,$BB,$B7,$6B,$0C,$22,$F0,$65 ; B282 96 BB B7 6B 0C 22 F0 65  ...k.".e
        db   $4D,$5C,$DC,$87,$D6,$8D,$44,$D5 ; B28A 4D 5C DC 87 D6 8D 44 D5  M\....D.
        db   $C8,$E2,$1E,$6A,$EE,$BC,$DA,$24 ; B292 C8 E2 1E 6A EE BC DA 24  ...j...$
        db   $C5,$5A,$88,$BC,$3A,$EF,$3E,$6A ; B29A C5 5A 88 BC 3A EF 3E 6A  .Z..:.>j
        db   $E4,$4F,$5B,$FC,$F7,$1A,$9B,$FE ; B2A2 E4 4F 5B FC F7 1A 9B FE  .O[.....
        db   $1C,$60,$8B,$35,$C8,$43,$59,$1A ; B2AA 1C 60 8B 35 C8 43 59 1A  .`.5.CY.
        db   $EB,$FB,$47,$B5,$6A,$22,$F0,$46 ; B2B2 EB FB 47 B5 6A 22 F0 46  ..G.j".F
        db   $8A,$78,$1E,$AE,$65,$08,$FF,$24 ; B2BA 8A 78 1E AE 65 08 FF 24  .x..e..$
        db   $BF,$9C,$D7,$21,$0C,$BF,$FF,$29 ; B2C2 BF 9C D7 21 0C BF FF 29  ...!...)
        db   $0C,$57,$9F,$BC,$2B,$AB,$51,$10 ; B2CA 0C 57 9F BC 2B AB 51 10  .W..+.Q.
; Huffman-compressed text group(s): $18
; Text $0300: This is a story about royal soldiers of a small country called Burland.<44>One of the royal soldiers is you,Ragnar.<44>One morning,the King summons all the soldiers to the Castle court....<44>
; Text $0301: 'The King will speak to you.Listen carefully.'
; Text $0302: 'Everyone,at ease.'<4F>You must have heard the rumor that children have been vanishing recently.'<4F>The mothers from Izmit Village came to me in tears this morning begging for help.'<4F>As the King of this country,I cannot ignore this problem any longer.'<4F>Find the cause of these disappearances and report to me! Go,my soldiers!'
; Text $0303: 'Sir,help me!'
; Text $0304: Flora:'It's you,isn't it?'<43>Alex:'Who are you,ma'am?'<44>Flora:'Don't you recognize me? I'm Flora,your wife!'<43>Alex:'.........'<44>Flora:'Don't you even remember this? Smack!'<43>Alex:'.........'<44>Alex:'...Flora!'<43>Flora:'Yes,it's me!'<44>Alex:'What came over me? I must have lost my mind in fear after being attacked by monsters.'<44>Alex:'Soldier,thanks for finding me.'<44>Alex:'I remember...hearing this from some children...'<44>
; Text $0305: Somewhere,long ago,there was a very tomboyish princess named Alena.<44>The King was constantly upset by her behavior.One morning,he summoned the Princess to his chamber....<4F>Princess! Princess Alena! Your father wants to see you!'<44>
; Text $0306: 'Alena,your tutor informed me you're planning a journey to test your strength.'<4F>I forbid it.You're the Princess of this country.'<4F>I won't allow you to venture into the outside world where monsters lurk!'<4F>Never go outside this Castle! Is that clear? That's all!'
; Text $0307: 'Who are you?'
; Text $0308: Alena inspects the wall.<44>It seems the wall,repaired with flimsy boards,can be broken through by kicking.<44>Do you want to kick it?
; Text $0309: Nothing special is found.
; Text $030A: Brey:'Princess! It's reckless to journey alone! If you're determined,I'll accompany you!'<44>Cristo:'I,your humble servant,will accompany you also,Princess! Let's go now.'<44>Brey and Cristo joined the Party!<43><55><40>
; Text $030B: You can't get off here.
; Text $030C: Alena woke up in bed.<44>
; Text $030D: Cristo:'Princess! You're awake! How are you?'<44>
; Text $030E: Brey:'I'm so sorry you didn't win....'<44>
; Text $030F: Cristo:'They say you can use Medical Herbs even during battles....'<44>
; Text $0310: Brey:'In any case,you must become stronger.Shall we go,Princess?'<44>
; Text $0311: The story you're about to witness is about two beautiful sisters who travel,seeking to avenge their father.<44>Mara,the older sister,is a dancer.Nara,the younger one,is a fortuneteller.<44>The story begins in Monbaraba,a town of song and dance.<44>
; Text $0312: 'Mara! You're the best!'<43>'Yahoo!'<43>'I love you,Mara!'
; Text $0313: Nara:'Good performance,sis.Did you see him?'<44>Mara:'No.I didn't see a cute guy in the audience today either.'<44>Nara:'No,I mean him.Our sworn enemy,Balzack!'<44>Mara:'Oh,right.No,I didn't see him either.'<44>Nara:'I see....'
; Text $0314: Master:'Don't be so discouraged.If you continue traveling,someday you'll find him.'<44>Master:'Here,I'll pay you up through today.Thanks for performing for us.'<44>
; Text $0315: Mara and Nara receive 100 gold pieces!<44>Master:'You're so popular.I want you to stay longer,but I don't want to interfere with your pursuit of revenge.'<44>Master:'Rest well tonight and leave in the morning.Have a safe journey.'
; Text $0316: Nara:'Good morning,sis.Shall we leave now?'
; Text $0317: '<49>,you'll need <47> more Experience Point<4C> to reach the next level.'<44>
; Text $0318: 'I wish you a safe journey.'
; Text $0319: The effect of Repel wears off.
; Text $031A: The effect of the Fairy Water wears off.
; Text $031B: <49> looks at the sign post.<44>But it's the wrong side.<43>Can't read the message.
; Text $031C: This is Lakanaba,a small town far north of Endor.<44>A man named Taloon lives in this town.<44>He works for someone now,but his dream is to become the world's greatest arms merchant someday.<44>
; Text $031D: 'Stand there.Customers will come to you.'<4F>I'll pay you on commission so work hard.'<4F>I'll be downstairs.'
; Text $031E: Neta:'Wake up.You must go to the shop soon or the boss will scold you again.'<44>Neta:'Darling!'<43><4B>
; Text $031F: Neta:'You're up at last.Here's your lunch.'<44>Neta:'Go out and head west.Don't be a sleepy-head,OK? Have a nice day.'<43><4B>
Bank00_TextGroup_18:
        db   $F1,$BF,$0B,$70,$B2,$E2,$79,$FD ; B2D2 F1 BF 0B 70 B2 E2 79 FD  ...p..y.
        db   $79,$6C,$CA,$5F,$7E,$6B,$58,$62 ; B2DA 79 6C CA 5F 7E 6B 58 62  yl._~kXb
        db   $98,$7B,$C1,$F2,$D2,$86,$5C,$56 ; B2E2 98 7B C1 F2 D2 86 5C 56  .{....\V
        db   $AC,$21,$A3,$94,$9B,$FE,$BD,$1A ; B2EA AC 21 A3 94 9B FE BD 1A  .!......
        db   $C2,$03,$DC,$DD,$4F,$E0,$A7,$EF ; B2F2 C2 03 DC DD 4F E0 A7 EF  ....O...
        db   $76,$3E,$B4,$C6,$94,$33,$DC,$6F ; B2FA 76 3E B4 C6 94 33 DC 6F  v>...3.o
        db   $CD,$6B,$0C,$53,$0F,$78,$3E,$5B ; B302 CD 6B 0C 53 0F 78 3E 5B  .k.S.x>[
        db   $85,$AB,$94,$B6,$E9,$16,$83,$5F ; B30A 85 AB 94 B6 E9 16 83 5F  ......._
        db   $F7,$63,$EB,$4C,$6B,$67,$E7,$C3 ; B312 F7 63 EB 4C 6B 67 E7 C3  .c.Lkg..
        db   $A1,$B3,$DC,$64,$67,$0E,$8C,$49 ; B31A A1 B3 DC 64 67 0E 8C 49  ...dg..I
        db   $B6,$D9,$32,$CB,$08,$67,$B8,$C5 ; B322 B6 D9 32 CB 08 67 B8 C5  ..2..g..
        db   $30,$F7,$83,$E5,$9E,$73,$DC,$66 ; B32A 30 F7 83 E5 9E 73 DC 66  0....s.f
        db   $F2,$93,$C0,$68,$E5,$3F,$7E,$8E ; B332 F2 93 C0 68 E5 3F 7E 8E  ...h.?~.
        db   $EC,$71,$78,$78,$DC,$64,$67,$0E ; B33A EC 71 78 78 DC 64 67 0E  .qxx.dg.
        db   $8C,$D7,$21,$0C,$5E,$42,$B3,$CF ; B342 8C D7 21 0C 5E 42 B3 CF  ..!.^B..
        db   $3A,$B9,$4F,$76,$E7,$84,$E0,$F4 ; B34A 3A B9 4F 76 E7 84 E0 F4  :.Ov....
        db   $6B,$F0,$82,$61,$0A,$D8,$45,$E0 ; B352 6B F0 82 61 0A D8 45 E0  k..a..E.
        db   $C8,$A4,$3F,$5C,$98,$6C,$AF,$82 ; B35A C8 A4 3F 5C 98 6C AF 82  ..?\.l..
        db   $90,$61,$D5,$53,$94,$EB,$52,$4F ; B362 90 61 D5 53 94 EB 52 4F  .a.S..RO
        db   $AE,$B4,$86,$B8,$5F,$FB,$9E,$E3 ; B36A AE B4 86 B8 5F FB 9E E3  ...._...
        db   $7D,$36,$CF,$F3,$DD,$5F,$47,$7E ; B372 7D 36 CF F3 DD 5F 47 7E  }6..._G~
        db   $43,$DF,$83,$D7,$5A,$43,$59,$00 ; B37A 43 DF 83 D7 5A 43 59 00  C...ZCY.
        db   $F5,$25,$3E,$15,$F8,$74,$6F,$88 ; B382 F5 25 3E 15 F8 74 6F 88  .%>..to.
        db   $C1,$BC,$2B,$61,$D5,$E3,$71,$AD ; B38A C1 BC 2B 61 D5 E3 71 AD  ..+a..q.
        db   $97,$B8,$F9,$64,$3F,$36,$EB,$08 ; B392 97 B8 F9 64 3F 36 EB 08  ...d?6..
        db   $8B,$78,$F9,$B8,$B9,$08,$2D,$03 ; B39A 8B 78 F9 B8 B9 08 2D 03  .x....-.
        db   $46,$B6,$8C,$F3,$AD,$1B,$87,$9C ; B3A2 46 B6 8C F3 AD 1B 87 9C  F.......
        db   $2F,$CB,$3D,$F8,$5A,$D9,$F9,$F0 ; B3AA 2F CB 3D F8 5A D9 F9 F0  /.=.Z...
        db   $E8,$D6,$45,$14,$70,$E8,$C8,$4F ; B3B2 E8 D6 45 14 70 E8 C8 4F  ..E.p..O
        db   $F5,$C4,$3C,$B0,$EA,$A6,$16,$7B ; B3BA F5 C4 3C B0 EA A6 16 7B  ..<....{
        db   $8C,$8C,$E1,$D1,$A5,$0C,$F7,$E1 ; B3C2 8C 8C E1 D1 A5 0C F7 E1  ........
        db   $68,$E5,$26,$FF,$AD,$B5,$8D,$1A ; B3CA 68 E5 26 FF AD B5 8D 1A  h.&.....
        db   $99,$CB,$EE,$50,$73,$F1,$9E,$FC ; B3D2 99 CB EE 50 73 F1 9E FC  ...Ps...
        db   $2D,$E7,$F3,$66,$02,$DC,$A7,$5E ; B3DA 2D E7 F3 66 02 DC A7 5E  -..f...^
        db   $84,$9D,$03,$EC,$3A,$99,$6F,$0F ; B3E2 84 9D 03 EC 3A 99 6F 0F  ....:.o.
        db   $DC,$F7,$1A,$35,$49,$0D,$28,$67 ; B3EA DC F7 1A 35 49 0D 28 67  ...5I.(g
        db   $B8,$21,$BD,$E1,$2F,$9F,$21,$7E ; B3F2 B8 21 BD E1 2F 9F 21 7E  .!../.!~
        db   $A7,$18,$2C,$A7,$EE,$F8,$F3,$3F ; B3FA A7 18 2C A7 EE F8 F3 3F  ..,....?
        db   $7C,$F3,$AD,$15,$75,$49,$2D,$AD ; B402 7C F3 AD 15 75 49 2D AD  |...uI-.
        db   $AF,$14,$C3,$DE,$0F,$95,$5A,$88 ; B40A AF 14 C3 DE 0F 95 5A 88  ......Z.
        db   $BC,$3A,$FC,$FB,$6B,$88,$79,$D6 ; B412 BC 3A FC FB 6B 88 79 D6  .:..k.y.
        db   $8A,$B5,$11,$32,$D8,$4F,$D7,$A7 ; B41A 8A B5 11 32 D8 4F D7 A7  ...2.O..
        db   $E1,$61,$FB,$16,$AE,$52,$DB,$84 ; B422 E1 61 FB 16 AE 52 DB 84  .a...R..
        db   $7D,$9F,$71,$E9,$EA,$11,$BA,$64 ; B42A 7D 9F 71 E9 EA 11 BA 64  }.q....d
        db   $03,$2F,$D3,$F0,$45,$BC,$E5,$F8 ; B432 03 2F D3 F0 45 BC E5 F8  ./..E...
        db   $D5,$CA,$5B,$5A,$BD,$96,$DA,$7A ; B43A D5 CA 5B 5A BD 96 DA 7A  ..[Z...z
        db   $86,$36,$5B,$09,$FA,$F4,$FC,$3A ; B442 86 36 5B 09 FA F4 FC 3A  .6[....:
        db   $59,$3E,$CF,$AB,$94,$EF,$88,$E6 ; B44A 59 3E CF AB 94 EF 88 E6  Y>......
        db   $83,$E2,$20,$6B,$45,$3E,$B1,$DA ; B452 83 E2 20 6B 45 3E B1 DA  .. kE>..
        db   $DC,$CB,$61,$3F,$56,$D5,$CA,$7F ; B45A DC CB 61 3F 56 D5 CA 7F  ..a?V...
        db   $9A,$E2,$02,$AD,$42,$37,$4C,$80 ; B462 9A E2 02 AD 42 37 4C 80  ....B7L.
        db   $65,$FA,$7E,$1D,$1D,$1D,$15,$0C ; B46A 65 FA 7E 1D 1D 1D 15 0C  e.~.....
        db   $6C,$B6,$13,$F5,$E9,$F8,$74,$B2 ; B472 6C B6 13 F5 E9 F8 74 B2  l.....t.
        db   $7D,$9F,$57,$29,$C2,$90,$3D,$F1 ; B47A 7D 9F 57 29 C2 90 3D F1  }.W)..=.
        db   $68,$B6,$C8,$FE,$7B,$F0,$A9,$F7 ; B482 68 B6 C8 FE 7B F0 A9 F7  h...{...
        db   $5E,$D5,$8D,$9D,$5A,$84,$6E,$99 ; B48A 5E D5 8D 9D 5A 84 6E 99  ^...Z.n.
        db   $00,$CB,$F4,$FC,$3A,$3A,$3A,$2A ; B492 00 CB F4 FC 3A 3A 3A 2A  ....:::*
        db   $18,$E9,$90,$0C,$BF,$4F,$C3,$A1 ; B49A 18 E9 90 0C BF 4F C3 A1  .....O..
        db   $96,$C2,$7E,$B5,$6A,$11,$B6,$5B ; B4A2 96 C2 7E B5 6A 11 B6 5B  ..~.j..[
        db   $09,$FA,$F4,$FC,$2A,$60,$9B,$71 ; B4AA 09 FA F4 FC 2A 60 9B 71  ....*`.q
        db   $FB,$16,$B4,$55,$A8,$63,$A6,$40 ; B4B2 FB 16 B4 55 A8 63 A6 40  ...U.c.@
        db   $32,$FD,$3F,$04,$5B,$AB,$E8,$D6 ; B4BA 32 FD 3F 04 5B AB E8 D6  2.?.[...
        db   $D1,$A6,$90,$FE,$B4,$53,$EB,$1A ; B4C2 D1 A6 90 FE B4 53 EB 1A  .....S..
        db   $D4,$93,$EB,$AD,$21,$A1,$24,$FA ; B4CA D4 93 EB AD 21 A1 24 FA  ....!.$.
        db   $DA,$F5,$BC,$3F,$77,$0F,$20,$17 ; B4D2 DA F5 BC 3F 77 0F 20 17  ...?w. .
        db   $F9,$50,$71,$FD,$64,$70,$E8,$CA ; B4DA F9 50 71 FD 64 70 E8 CA  .Pq.dp..
        db   $EE,$B1,$B3,$1E,$EB,$35,$EB,$64 ; B4E2 EE B1 B3 1E EB 35 EB 64  .....5.d
        db   $C9,$C7,$C9,$83,$1D,$32,$01,$97 ; B4EA C9 C7 C9 83 1D 32 01 97  .....2..
        db   $E9,$F8,$75,$E6,$1E,$F0,$7D,$B3 ; B4F2 E9 F8 75 E6 1E F0 7D B3  ..u...}.
        db   $DD,$4D,$99,$64,$27,$F9,$0E,$1F ; B4FA DD 4D 99 64 27 F9 0E 1F  .M.d'...
        db   $BC,$3A,$35,$A1,$83,$1D,$32,$01 ; B502 BC 3A 35 A1 83 1D 32 01  .:5...2.
        db   $97,$E9,$F8,$58,$DF,$16,$8B,$6C ; B50A 97 E9 F8 58 DF 16 8B 6C  ...X...l
        db   $8F,$F4,$5C,$2F,$F8,$74,$67,$BF ; B512 8F F4 5C 2F F8 74 67 BF  ..\/.tg.
        db   $0B,$21,$F9,$B7,$14,$DA,$34,$77 ; B51A 0B 21 F9 B7 14 DA 34 77  .!....4w
        db   $E4,$3D,$F8,$3E,$8A,$86,$38,$BA ; B522 E4 3D F8 3E 8A 86 38 BA  .=.>..8.
        db   $F3,$68,$6A,$E3,$E1,$B4,$24,$E8 ; B52A F3 68 6A E3 E1 B4 24 E8  .hj...$.
        db   $CB,$44,$B6,$7B,$8F,$8C,$D2,$96 ; B532 CB 44 B6 7B 8F 8C D2 96  .D.{....
        db   $5D,$48,$7E,$BC,$F3,$6D,$99,$AF ; B53A 5D 48 7E BC F3 6D 99 AF  ]H~..m..
        db   $85,$7D,$E7,$FC,$38,$C1,$16,$35 ; B542 85 7D E7 FC 38 C1 16 35  .}..8..5
        db   $B4,$7B,$A9,$90,$06,$BD,$D8,$FC ; B54A B4 7B A9 90 06 BD D8 FC  .{......
        db   $6E,$32,$33,$87,$46,$69,$4B,$47 ; B552 6E 32 33 87 46 69 4B 47  n23.FiKG
        db   $26,$4E,$A6,$F0,$AF,$27,$C9,$07 ; B55A 26 4E A6 F0 AF 27 C9 07  &N...'..
        db   $D6,$6B,$D7,$1F,$D6,$45,$D6,$97 ; B562 D6 6B D7 1F D6 45 D6 97  .k...E..
        db   $27,$FD,$FA,$D3,$1A,$D9,$F9,$F0 ; B56A 27 FD FA D3 1A D9 F9 F0  '.......
        db   $E8,$6D,$71,$89,$36,$DB,$26,$3D ; B572 E8 6D 71 89 36 DB 26 3D  .mq.6.&=
        db   $CF,$71,$A9,$BF,$E1,$C6,$08,$B3 ; B57A CF 71 A9 BF E1 C6 08 B3  .q......
        db   $CE,$BF,$0B,$47,$75,$B6,$C8,$FF ; B582 CE BF 0B 47 75 B6 C8 FF  ...Gu...
        db   $47,$7E,$AA,$6F,$F8,$71,$82,$2A ; B58A 47 7E AA 6F F8 71 82 2A  G~.o.q.*
        db   $BA,$9B,$FE,$1C,$60,$8B,$53,$20 ; B592 BA 9B FE 1C 60 8B 53 20  ....`.S
        db   $0D,$6A,$EA,$9C,$A7,$F9,$05,$7B ; B59A 0D 6A EA 9C A7 F9 05 7B  .j.....{
        db   $8F,$E6,$94,$DC,$B3,$CE,$20,$35 ; B5A2 8F E6 94 DC B3 CE 20 35  ...... 5
        db   $72,$9A,$B5,$0C,$71,$78,$53,$20 ; B5AA 72 9A B5 0C 71 78 53 20  r...qxS
        db   $0D,$5B,$57,$29,$FE,$74,$BC,$FF ; B5B2 0D 5B 57 29 FE 74 BC FF  .[W).t..
        db   $70,$D0,$9F,$DA,$3D,$D6,$8D,$5C ; B5BA 70 D0 9F DA 3D D6 8D 5C  p...=..\
        db   $A7,$B7,$C6,$F3,$05,$33,$E1,$D1 ; B5C2 A7 B7 C6 F3 05 33 E1 D1  .....3..
        db   $97,$37,$D2,$9F,$98,$AF,$3C,$E7 ; B5CA 97 37 D2 9F 98 AF 3C E7  .7....<.
        db   $04,$FA,$B9,$4F,$F1,$3F,$C1,$D0 ; B5D2 04 FA B9 4F F1 3F C1 D0  ...O.?..
        db   $F7,$61,$D5,$63,$21,$3F,$B3,$CF ; B5DA F7 61 D5 63 21 3F B3 CF  .a.c!?..
        db   $77,$1F,$BD,$4E,$53,$DB,$E3,$3D ; B5E2 77 1F BD 4E 53 DB E3 3D  w..NS..=
        db   $C6,$A6,$FF,$87,$18,$22,$D2,$86 ; B5EA C6 A6 FF 87 18 22 D2 86  ....."..
        db   $7B,$F0,$B4,$72,$93,$7F,$D6,$C3 ; B5F2 7B F0 B4 72 93 7F D6 C3  {..r....
        db   $AA,$C6,$6A,$4F,$B3,$E5,$84,$25 ; B5FA AA C6 6A 4F B3 E5 84 25  ..jO...%
        db   $AD,$5C,$A7,$3C,$EA,$40,$DD,$3F ; B602 AD 5C A7 3C EA 40 DD 3F  .\.<.@.?
        db   $1B,$86,$F3,$9E,$E3,$4A,$5C,$B9 ; B60A 1B 86 F3 9E E3 4A 5C B9  .....J\.
        db   $E8,$CD,$4F,$E1,$EE,$6A,$E3,$E3 ; B612 E8 CD 4F E1 EE 6A E3 E3  ..O..j..
        db   $5B,$26,$4E,$3E,$5A,$09,$FB,$3A ; B61A 5B 26 4E 3E 5A 09 FB 3A  [&N>Z..:
        db   $B5,$1D,$4C,$A1,$48,$7F,$51,$3A ; B622 B5 1D 4C A1 48 7F 51 3A  ..L.H.Q:
        db   $52,$E5,$CF,$46,$7B,$F0,$B3,$79 ; B62A 52 E5 CF 46 7B F0 B3 79  R..F{..y
        db   $49,$E0,$2A,$EB,$05,$9E,$EA,$FA ; B632 49 E0 2A EB 05 9E EA FA  I.*.....
        db   $38,$05,$FD,$3E,$F1,$BA,$BF,$62 ; B63A 38 05 FD 3E F1 BA BF 62  8..>...b
        db   $CB,$08,$55,$A8,$8B,$C1,$16,$F3 ; B642 CB 08 55 A8 8B C1 16 F3  ..U.....
        db   $97,$E3,$57,$29,$A7,$A8,$8A,$99 ; B64A 97 E3 57 29 A7 A8 8A 99  ..W)....
        db   $00,$6B,$B8,$65,$E4,$46,$E5,$9E ; B652 00 6B B8 65 E4 46 E5 9E  .k.e.F..
        db   $E3,$34,$B0,$87,$76,$3B,$0F,$88 ; B65A E3 34 B0 87 76 3B 0F 88  .4..v;..
        db   $0B,$4B,$3D,$C6,$69,$61,$06,$DF ; B662 0B 4B 3D C6 69 61 06 DF  .K=.ia..
        db   $1E,$57,$9F,$1E,$E6,$B8,$F7,$C8 ; B66A 1E 57 9F 1E E6 B8 F7 C8  .W......
        db   $43,$96,$95,$7A,$CC,$AF,$FD,$26 ; B672 43 96 95 7A CC AF FD 26  C..z...&
        db   $D1,$A9,$EB,$23,$59,$FC,$B3,$07 ; B67A D1 A9 EB 23 59 FC B3 07  ...#Y...
        db   $9E,$FF,$94,$D1,$7D,$66,$BC,$CF ; B682 9E FF 94 D1 7D 66 BC CF  ....}f..
        db   $91,$B3,$E1,$D1,$DD,$8F,$A5,$9D ; B68A 91 B3 E1 D1 DD 8F A5 9D  ........
        db   $5C,$A7,$34,$A6,$F9,$E7,$33,$E4 ; B692 5C A7 34 A6 F9 E7 33 E4  \.4...3.
        db   $6C,$F7,$1E,$9E,$26,$54,$BD,$F8 ; B69A 6C F7 1E 9E 26 54 BD F8  l...&T..
        db   $74,$62,$F2,$23,$E2,$C3,$70,$B2 ; B6A2 74 62 F2 23 E2 C3 70 B2  tb.#..p.
        db   $12,$93,$F7,$BC,$4D,$DF,$8A,$FA ; B6AA 12 93 F7 BC 4D DF 8A FA  ....M...
        db   $7E,$14,$DF,$F0,$E3,$04,$55,$75 ; B6B2 7E 14 DF F0 E3 04 55 75  ~.....Uu
        db   $87,$EC,$5B,$E2,$36,$70,$04,$59 ; B6BA 87 EC 5B E2 36 70 04 59  ..[.6p.Y
        db   $E7,$37,$D2,$9F,$98,$AF,$2C,$24 ; B6C2 E7 37 D2 9F 98 AF 2C 24  .7....,$
        db   $C5,$5D,$61,$0D,$5C,$A7,$B7,$C6 ; B6CA C5 5D 61 0D 5C A7 B7 C6  .]a.\...
        db   $F4,$38,$FD,$BC,$31,$EB,$6B,$1D ; B6D2 F4 38 FD BC 31 EB 6B 1D  .8..1.k.
        db   $A1,$0C,$B1,$C7,$36,$F9,$53,$AF ; B6DA A1 0C B1 C7 36 F9 53 AF  ....6.S.
        db   $57,$29,$AB,$50,$C6,$DE,$FF,$09 ; B6E2 57 29 AB 50 C6 DE FF 09  W).P....
        db   $E7,$A7,$E1,$61,$B5,$72,$9F,$EB ; B6EA E7 A7 E1 61 B5 72 9F EB  ...a.r..
        db   $A6,$DB,$30,$18,$87,$E9,$29,$BB ; B6F2 A6 DB 30 18 87 E9 29 BB  ..0...).
        db   $66,$B9,$08,$65,$8E,$39,$B7,$CA ; B6FA 66 B9 08 65 8E 39 B7 CA  f..e.9..
        db   $9D,$7A,$B9,$4E,$58,$14,$B6,$A6 ; B702 9D 7A B9 4E 58 14 B6 A6  .z.NX...
        db   $FF,$87,$18,$22,$AB,$9B,$90,$FD ; B70A FF 87 18 22 AB 9B 90 FD  ..."....
        db   $8B,$51,$38,$E5,$A6,$0C,$6D,$DF ; B712 8B 51 38 E5 A6 0C 6D DF  .Q8...m.
        db   $8A,$F2,$9F,$B9,$BD,$FE,$13,$CE ; B71A 8A F2 9F B9 BD FE 13 CE  ........
        db   $6F,$A7,$86,$3D,$CF,$71,$A9,$AB ; B722 6F A7 86 3D CF 71 A9 AB  o..=.q..
        db   $F7,$AE,$AA,$36,$8D,$2A,$96,$45 ; B72A F7 AE AA 36 8D 2A 96 45  ...6.*.E
        db   $53,$94,$E8,$D4,$FB,$3E,$A0,$3E ; B732 53 94 E8 D4 FB 3E A0 3E  S....>.>
        db   $94,$10,$D7,$1F,$1D,$E2,$A6,$40 ; B73A 94 10 D7 1F 1D E2 A6 40  .......@
        db   $1A,$E6,$A5,$98,$C9,$F3,$B8,$7A ; B742 1A E6 A5 98 C9 F3 B8 7A  .......z
        db   $C8,$F7,$BB,$1C,$4D,$EF,$F0,$9E ; B74A C8 F7 BB 1C 4D EF F0 9E  ....M...
        db   $7A,$7E,$14,$DF,$F0,$E3,$04,$55 ; B752 7A 7E 14 DF F0 E3 04 55  z~.....U
        db   $75,$4E,$53,$DB,$E3,$2B,$4A,$CC ; B75A 75 4E 53 DB E3 2B 4A CC  uNS..+J.
        db   $55,$C8,$F2,$D6,$5F,$8D,$5C,$A6 ; B762 55 C8 F2 D6 5F 8D 5C A6  U..._.\.
        db   $9E,$A1,$8E,$26,$EF,$C5,$7D,$3F ; B76A 9E A1 8E 26 EF C5 7D 3F  ...&..}?
        db   $0B,$1D,$AD,$C5,$38,$A7,$FF,$AF ; B772 0B 1D AD C5 38 A7 FF AF  ....8...
        db   $57,$29,$DE,$F3,$D3,$EC,$F9,$AE ; B77A 57 29 DE F3 D3 EC F9 AE  W)......
        db   $1F,$43,$06,$38,$9B,$DF,$E1,$3C ; B782 1F 43 06 38 9B DF E1 3C  .C.8...<
        db   $F4,$FC,$3C,$6E,$2B,$C4,$B5,$EA ; B78A F4 FC 3C 6E 2B C4 B5 EA  ..<n+...
        db   $E5,$3A,$35,$3C,$92,$19,$92,$3D ; B792 E5 3A 35 3C 92 19 92 3D  .:5<...=
        db   $E4,$6B,$0C,$8E,$3F,$64,$B0,$A4 ; B79A E4 6B 0C 8E 3F 64 B0 A4  .k..?d..
        db   $0F,$7A,$9F,$F0,$E8,$D6,$55,$DE ; B7A2 0F 7A 9F F0 E8 D6 55 DE  .z....U.
        db   $00,$BA,$18,$31,$C4,$DD,$F8,$AF ; B7AA 00 BA 18 31 C4 DD F8 AF  ...1....
        db   $A7,$E1,$60,$F2,$9D,$7A,$35,$20 ; B7B2 A7 E1 60 F2 9D 7A 35 20  ..`..z5
        db   $DA,$B9,$4E,$B5,$24,$FA,$C8,$8E ; B7BA DA B9 4E B5 24 FA C8 8E  ..N.$...
        db   $6D,$18,$9F,$F2,$74,$0F,$F7,$EB ; B7C2 6D 18 9F F2 74 0F F7 EB  m...t...
        db   $DD,$61,$0C,$D0,$D4,$4B,$6A,$6F ; B7CA DD 61 0C D0 D4 4B 6A 6F  .a...Kjo
        db   $F8,$71,$82,$2A,$7A,$86,$38,$BC ; B7D2 F8 71 82 2A 7A 86 38 BC  .q.*z.8.
        db   $6E,$31,$3C,$FE,$BD,$5C,$A7,$B7 ; B7DA 6E 31 3C FE BD 5C A7 B7  n1<..\..
        db   $C6,$5B,$32,$97,$CF,$39,$AE,$39 ; B7E2 C6 5B 32 97 CF 39 AE 39  .[2..9.9
        db   $82,$2D,$C2,$CB,$66,$52,$F9,$DA ; B7EA 82 2D C2 CB 66 52 F9 DA  .-..fR..
        db   $9D,$64,$2A,$5F,$88,$26,$18,$B8 ; B7F2 9D 64 2A 5F 88 26 18 B8  .d*_.&..
        db   $4E,$3E,$59,$AB,$CE,$7F,$AD,$21 ; B7FA 4E 3E 59 AB CE 7F AD 21  N>Y....!
        db   $06,$C4,$03,$3E,$1D,$19,$E7,$2D ; B802 06 C4 03 3E 1D 19 E7 2D  ...>...-
        db   $20,$74,$0C,$F7,$1C,$FE,$41,$5E ; B80A 20 74 0C F7 1C FE 41 5E   t....A^
        db   $E3,$FD,$D8,$D9,$2B,$F5,$6C,$F7 ; B812 E3 FD D8 D9 2B F5 6C F7  ....+.l.
        db   $1A,$61,$E8,$FE,$2E,$13,$8F,$B6 ; B81A 1A 61 E8 FE 2E 13 8F B6  .a......
        db   $E1,$65,$DE,$A9,$C6,$3F,$DD,$94 ; B822 E1 65 DE A9 C6 3F DD 94  .e...?..
        db   $BF,$56,$CF,$71,$AB,$94,$9D,$03 ; B82A BF 56 CF 71 AB 94 9D 03  .V.q....
        db   $FA,$4C,$36,$E1,$65,$C8,$4F,$DD ; B832 FA 4C 36 E1 65 C8 4F DD  .L6.e.O.
        db   $26,$1C,$42,$03,$FD,$D8,$FC,$6E ; B83A 26 1C 42 03 FD D8 FC 6E  &.B....n
        db   $31,$3C,$FE,$BD,$64,$51,$C3,$2D ; B842 31 3C FE BD 64 51 C3 2D  1<..dQ.-
        db   $C3,$CC,$99,$3B,$2B,$F5,$B2,$AD ; B84A C3 CC 99 3B 2B F5 B2 AD  ...;+...
        db   $97,$3C,$B4,$7A,$50,$C5,$27,$46 ; B852 97 3C B4 7A 50 C5 27 46  .<.zP.'F
        db   $53,$F7,$7A,$A7,$18,$EE,$C7,$17 ; B85A 53 F7 7A A7 18 EE C7 17  S.z.....
        db   $83,$25,$7E,$B5,$75,$4E,$53,$DB ; B862 83 25 7E B5 75 4E 53 DB  .%~.uNS.
        db   $E3,$3D,$C6,$B2,$09,$EA,$D4,$23 ; B86A E3 3D C6 B2 09 EA D4 23  .=.....#
        db   $7E,$15,$35,$BC,$CD,$5A,$84,$6F ; B872 7E 15 35 BC CD 5A 84 6F  ~.5..Z.o
        db   $C2,$C6,$84,$D2,$1A,$B9,$4B,$66 ; B87A C2 C6 84 D2 1A B9 4B 66  ......Kf
        db   $4A,$FD,$6A,$D4,$44,$CA,$5F,$AF ; B882 4A FD 6A D4 44 CA 5F AF  J.j.D._.
        db   $4F,$C2,$A4,$99,$F7,$79,$1F,$42 ; B88A 4F C2 A4 99 F7 79 1F 42  O....y.B
        db   $7F,$6A,$9C,$61,$B1,$70,$BB,$F4 ; B892 7F 6A 9C 61 B1 70 BB F4  .j.a.p..
        db   $BC,$F7,$57,$29,$C4,$06,$BF,$2D ; B89A BC F7 57 29 C4 06 BF 2D  ..W)...-
        db   $A7,$A8,$63,$64,$AF,$D7,$A7,$E0 ; B8A2 A7 A8 63 64 AF D7 A7 E0  ..cd....
        db   $CA,$9E,$F6,$37,$BC,$F4,$FB,$3E ; B8AA CA 9E F6 37 BC F4 FB 3E  ...7...>
        db   $20,$32,$E8,$D2,$E3,$50,$9A,$F7 ; B8B2 20 32 E8 D2 E3 50 9A F7   2...P..
        db   $0F,$3D,$C6,$54,$FB,$C0,$71,$8C ; B8BA 0F 3D C6 54 FB C0 71 8C  .=.T..q.
        db   $F3,$EA,$D7,$87,$1E,$E3,$EC,$18 ; B8C2 F3 EA D7 87 1E E3 EC 18  ........
        db   $D9,$4B,$F5,$E9,$F8,$32,$A5,$B5 ; B8CA D9 4B F5 E9 F8 32 A5 B5  .K...2..
        db   $8D,$68,$53,$D7,$E5,$BD,$FA,$D4 ; B8D2 8D 68 53 D7 E5 BD FA D4  .hS.....
        db   $FF,$13,$53,$F3,$C0,$C5,$B5,$B6 ; B8DA FF 13 53 F3 C0 C5 B5 B6  ..S.....
        db   $6E,$AC,$11,$0B,$1B,$3A,$B5,$0C ; B8E2 6E AC 11 0B 1B 3A B5 0C  n....:..
        db   $6C,$95,$FA,$F4,$FC,$3A,$DB,$B6 ; B8EA 6C 95 FA F4 FC 3A DB B6  l....:..
        db   $FF,$28,$BB,$F7,$65,$4B,$6B,$1B ; B8F2 FF 28 BB F7 65 4B 6B 1B  .(..eKk.
        db   $DE,$7A,$7D,$9F,$10,$1A,$FC,$B7 ; B8FA DE 7A 7D 9F 10 1A FC B7  .z}.....
        db   $0E,$3D,$C7,$D8,$31,$B2,$97,$EB ; B902 0E 3D C7 D8 31 B2 97 EB  .=..1...
        db   $D3,$F0,$B1,$88,$0E,$86,$11,$32 ; B90A D3 F0 B1 88 0E 86 11 32  .......2
        db   $54,$9C,$7F,$A7,$E1,$D2,$C9,$F6 ; B912 54 9C 7F A7 E1 D2 C9 F6  T.......
        db   $7D,$64,$62,$9D,$EF,$0A,$39,$4F ; B91A 7D 64 62 9D EF 0A 39 4F  }db...9O
        db   $D6,$81,$EF,$7B,$08,$6A,$E5,$3A ; B922 D6 81 EF 7B 08 6A E5 3A  ...{.j.:
        db   $39,$37,$E1,$A4,$67,$FA,$D2,$10 ; B92A 39 37 E1 A4 67 FA D2 10  97..g...
        db   $E1,$D0,$D8,$A6,$D1,$EA,$D7,$AB ; B932 E1 D0 D8 A6 D1 EA D7 AB  ........
        db   $94,$F6,$84,$32,$1C,$3F,$75,$F9 ; B93A 94 F6 84 32 1C 3F 75 F9  ...2.?u.
        db   $6B,$06,$36,$4A,$93,$8F,$F4,$FC ; B942 6B 06 36 4A 93 8F F4 FC  k.6J....
        db   $11,$C7,$C3,$6B,$1D,$A1,$0D,$E5 ; B94A 11 C7 C3 6B 1D A1 0D E5  ...k....
        db   $6B,$D5,$CA,$72,$7C,$E7,$BF,$E5 ; B952 6B D5 CA 72 7C E7 BF E5  k..r|...
        db   $34,$5F,$3C,$FA,$B5,$F7,$F1,$BA ; B95A 34 5F 3C FA B5 F7 F1 BA  4_<.....
        db   $9B,$32,$C8,$4F,$F7,$91,$F4,$27 ; B962 9B 32 C8 4F F7 91 F4 27  .2.O...'
        db   $F6,$F0,$E8,$C8,$4F,$F2,$49,$83 ; B96A F6 F0 E8 C8 4F F2 49 83  ....O.I.
        db   $1C,$4C,$95,$FA,$E5,$3F,$73,$29 ; B972 1C 4C 95 FA E5 3F 73 29  .L...?s)
        db   $7E,$BB,$E2,$31,$CA,$43,$23,$4F ; B97A 7E BB E2 31 CA 43 23 4F  ~..1.C#O
        db   $AC,$FA,$CF,$51,$30,$F7,$79,$E0 ; B982 AC FA CF 51 30 F7 79 E0  ...Q0.y.
        db   $8C,$15,$56,$36,$4A,$93,$8F,$F4 ; B98A 8C 15 56 36 4A 93 8F F4  ..V6J...
        db   $FC,$2A,$72,$9E,$DF,$18,$A7,$79 ; B992 FC 2A 72 9E DF 18 A7 79  .*r....y
        db   $9F,$29,$82,$FF,$BD,$8C,$D2,$9B ; B99A 9F 29 82 FF BD 8C D2 9B  .)......
        db   $EA,$E5,$39,$E7,$13,$AD,$7A,$12 ; B9A2 EA E5 39 E7 13 AD 7A 12  ..9...z.
        db   $74,$0F,$B6,$B2,$97,$D6,$37,$B2 ; B9AA 74 0F B6 B2 97 D6 37 B2  t.....7.
        db   $7D,$9F,$34,$A6,$F9,$E7,$70,$DC ; B9B2 7D 9F 34 A6 F9 E7 70 DC  }.4...p.
        db   $7D,$01,$F1,$9A,$E3,$DF,$57,$29 ; B9BA 7D 01 F1 9A E3 DF 57 29  }.....W)
        db   $FE,$F2,$9F,$92,$78,$FA,$50,$DF ; B9C2 FE F2 9F 92 78 FA 50 DF  ....x.P.
        db   $14,$81,$D0,$18,$31,$B2,$54,$9C ; B9CA 14 81 D0 18 31 B2 54 9C  ....1.T.
        db   $7F,$A7,$E1,$D2,$02,$7C,$D0,$84 ; B9D2 7F A7 E1 D2 02 7C D0 84  .....|..
        db   $33,$C9,$F2,$8B,$BE,$53,$F7,$40 ; B9DA 33 C9 F2 8B BE 53 F7 40  3....S.@
        db   $2D,$21,$B8,$79,$EE,$35,$B3,$F3 ; B9E2 2D 21 B8 79 EE 35 B3 F3  -!.y.5..
        db   $E1,$D1,$DD,$1D,$69,$0C,$B8,$95 ; B9EA E1 D1 DD 1D 69 0C B8 95  ....i...
        db   $01,$9B,$E9,$4F,$CC,$56,$C2,$26 ; B9F2 01 9B E9 4F CC 56 C2 26  ...O.V.&
        db   $52,$FD,$7A,$7E,$15,$24,$CF,$BA ; B9FA 52 FD 7A 7E 15 24 CF BA  R.z~.$..
        db   $D9,$F9,$F0,$E8,$6C,$5C,$2E,$FD ; BA02 D9 F9 F0 E8 6C 5C 2E FD  ....l\..
        db   $7B,$AC,$21,$9A,$1A,$01,$69,$0C ; BA0A 7B AC 21 9A 1A 01 69 0C  {.!...i.
        db   $72,$D5,$3D,$44,$5E,$0C,$4D,$AB ; BA12 72 D5 3D 44 5E 0C 4D AB  r.=D^.M.
        db   $94,$F6,$84,$31,$81,$EE,$65,$9A ; BA1A 94 F6 84 31 81 EE 65 9A  ...1..e.
        db   $D9,$F8,$CC,$86,$5F,$C8,$FF,$01 ; BA22 D9 F8 CC 86 5F C8 FF 01  ...._...
        db   $C6,$35,$36,$78,$6E,$8D,$73,$CE ; BA2A C6 35 36 78 6E 8D 73 CE  .56xn.s.
        db   $F8,$58,$EF,$9E,$E3,$18,$65,$DF ; BA32 F8 58 EF 9E E3 18 65 DF  .X....e.
        db   $40,$52,$10,$60,$C7,$17,$85,$8C ; BA3A 40 52 10 60 C7 17 85 8C  @R.`....
        db   $D7,$0A,$FA,$B9,$4E,$5C,$4A,$80 ; BA42 D7 0A FA B9 4E 5C 4A 80  ....N\J.
        db   $CD,$F4,$A7,$E6,$2B,$61,$17,$8D ; BA4A CD F4 A7 E6 2B 61 17 8D  ....+a..
        db   $C6,$08,$20,$23,$7D,$28,$6E,$90 ; BA52 C6 08 20 23 7D 28 6E 90  .. #}(n.
        db   $79,$10,$CD,$05,$F9,$69,$41,$0E ; BA5A 79 10 CD 05 F9 69 41 0E  y....iA.
        db   $F1,$78,$DC,$60,$82,$02,$37,$D2 ; BA62 F1 78 DC 60 82 02 37 D2  .x.`..7.
        db   $86,$7B,$8C,$CB,$57,$9F,$AF,$22 ; BA6A 86 7B 8C CB 57 9F AF 22  .{..W.."
        db   $AB,$8F,$E6,$82,$FC,$B4,$A0,$87 ; BA72 AB 8F E6 82 FC B4 A0 87  ........
        db   $78,$98,$B4,$26,$59,$96,$57,$CF ; BA7A 78 98 B4 26 59 96 57 CF  x..&Y.W.
        db   $71,$8B,$94,$1E,$F3,$24,$FD,$D8 ; BA82 71 8B 94 1E F3 24 FD D8  q....$..
        db   $DB,$A9,$7D,$C7,$EC,$59,$EE,$33 ; BA8A DB A9 7D C7 EC 59 EE 33  ..}..Y.3
        db   $5F,$93,$A3,$17,$3D,$1D,$D1,$B6 ; BA92 5F 93 A3 17 3D 1D D1 B6  _...=...
        db   $F2,$9F,$67,$DF,$0B,$EE,$7B,$8D ; BA9A F2 9F 67 DF 0B EE 7B 8D  ..g...{.
        db   $68,$22,$5A,$07,$78,$BC,$6F,$C2 ; BAA2 68 22 5A 07 78 BC 6F C2  h"Z.x.o.
        db   $DC,$2C,$DC,$AB,$35,$35,$B2,$AD ; BAAA DC 2C DC AB 35 35 B2 AD  .,..55..
        db   $97,$15,$AB,$08,$67,$96,$8F,$20 ; BAB2 97 15 AB 08 67 96 8F 20  ....g..
        db   $BF,$C7,$3F,$7B,$E9,$43,$32,$0F ; BABA BF C7 3F 7B E9 43 32 0F  ..?{.C2.
        db   $D9,$FF,$76,$3A,$66,$B5,$4F,$1A ; BAC2 D9 FF 76 3A 66 B5 4F 1A  ..v:f.O.
        db   $DA,$3D,$DE,$2B,$09,$93,$D0,$E5 ; BACA DA 3D DE 2B 09 93 D0 E5  .=.+....
        db   $20,$5B,$87,$9E,$FC,$2C,$F2,$D1 ; BAD2 20 5B 87 9E FC 2C F2 D1   [...,..
        db   $F7,$63,$47,$19,$A9,$FB,$32,$C8 ; BADA F7 63 47 19 A9 FB 32 C8  .cG...2.
        db   $4F,$F1,$4D,$A2,$4C,$63,$96,$9B ; BAE2 4F F1 4D A2 4C 63 96 9B  O.M.Lc..
        db   $59,$4B,$EB,$F0,$B7,$BF,$0B,$6E ; BAEA 59 4B EB F0 B7 BF 0B 6E  YK.....n
        db   $E1,$67,$9D,$64,$47,$36,$8C,$F7 ; BAF2 E1 67 9D 64 47 36 8C F7  .g.dG6..
        db   $19,$A9,$FC,$3D,$EC,$5A,$8F,$85 ; BAFA 19 A9 FC 3D EC 5A 8F 85  ...=.Z..
        db   $70,$4F,$97,$F6,$96,$B4,$7E,$3B ; BB02 70 4F 97 F6 96 B4 7E 3B  pO....~;
        db   $A9,$BE,$29,$B4,$7A,$B5,$F7,$63 ; BB0A A9 BE 29 B4 7A B5 F7 63  ..).z..c
        db   $8B,$C3,$AE,$EA,$7E,$E7,$B8,$F8 ; BB12 8B C3 AE EA 7E E7 B8 F8  ....~...
        db   $EE,$DE,$49,$3C,$DA,$3E,$59,$AE ; BB1A EE DE 49 3C DA 3E 59 AE  ..I<.>Y.
        db   $42,$1A,$39,$B4,$67,$9D,$5C,$A5 ; BB22 42 1A 39 B4 67 9D 5C A5  B.9.g.\.
        db   $87,$55,$8E,$D0,$86,$F2,$B5,$EA ; BB2A 87 55 8E D0 86 F2 B5 EA  .U......
        db   $E5,$3A,$4F,$47,$36,$DB,$C2,$2E ; BB32 E5 3A 4F 47 36 DB C2 2E  .:OG6...
        db   $49,$E2,$9C,$D4,$FD,$9E,$BA,$FF ; BB3A 49 E2 9C D4 FD 9E BA FF  I.......
        db   $D6,$1D,$56,$3B,$42,$1A,$C8,$DE ; BB42 D6 1D 56 3B 42 1A C8 DE  ..V;B...
        db   $CB,$46,$4E,$BC,$F9,$30,$89,$94 ; BB4A CB 46 4E BC F9 30 89 94  .FN..0..
        db   $1D,$7A,$7E,$08,$AA,$CC,$64,$F9 ; BB52 1D 7A 7E 08 AA CC 64 F9  .z~...d.
        db   $EF,$53,$94,$EB,$52,$4F,$A8,$9C ; BB5A EF 53 94 EB 52 4F A8 9C  .S..RO..
        db   $F3,$9E,$E3,$15,$E7,$CE,$29,$93 ; BB62 F3 9E E3 15 E7 CE 29 93  ......).
        db   $D3,$FC,$F7,$1A,$CC,$91,$66,$B9 ; BB6A D3 FC F7 1A CC 91 66 B9  ......f.
        db   $08,$62,$8E,$61,$EE,$AE,$53,$96 ; BB72 08 62 8E 61 EE AE 53 96  .b.a..S.
        db   $85,$E1,$B0,$63,$65,$07,$5E,$9F ; BB7A 85 E1 B0 63 65 07 5E 9F  ...ce.^.
        db   $87,$4A,$BF,$87,$0E,$8A,$B5,$08 ; BB82 87 4A BF 87 0E 8A B5 08  .J......
        db   $DA,$26,$26,$50,$75,$E9,$F8,$54 ; BB8A DA 26 26 50 75 E9 F8 54  .&&Pu..T
        db   $E5,$3D,$BE,$32,$7C,$E5,$7D,$05 ; BB92 E5 3D BE 32 7C E5 7D 05  .=.2|.}.
        db   $27,$EE,$8E,$3E,$3B,$16,$AE,$53 ; BB9A 27 EE 8E 3E 3B 16 AE 53  '..>;..S
        db   $FD,$04,$9C,$77,$60,$C6,$CA,$0E ; BBA2 FD 04 9C 77 60 C6 CA 0E  ...w`...
        db   $BD,$3F,$0A,$92,$74,$A5,$F2,$9F ; BBAA BD 3F 0A 92 74 A5 F2 9F  .?..t...
        db   $BA,$E1,$7D,$CD,$02,$7E,$FD,$2C ; BBB2 BA E1 7D CD 02 7E FD 2C  ..}..~.,
        db   $9F,$67,$D6,$46,$5C,$50,$03,$CD ; BBBA 9F 67 D6 46 5C 50 03 CD  .g.F\P..
        db   $6D,$C7,$B8,$5F,$5B,$75,$A8,$CA ; BBC2 6D C7 B8 5F 5B 75 A8 CA  m.._[u..
        db   $7C,$8E,$B4,$86,$5C,$7C,$8C,$6F ; BBCA 7C 8E B4 86 5C 7C 8C 6F  |...\|.o
        db   $56,$B6,$08,$DA,$26,$20         ; BBD2 56 B6 08 DA 26 20        V...&
; Huffman-compressed text group(s): $19
; Text $0320: 'I can't believe I lost....'<4F>I'm sure other monsters will seek out and destroy the Hero....'<4F>All mankind will eventually be offered up to the Ruler of Evil.I'll see you in the Evil World....<4B>Gasp!'<43><4B>
; Text $0321: 'Hurray! Thank you,sir!'<4F>We can go home,right? I heard you can go home if you jump from the top.'
; Text $0322: 'Oh! I'm glad you're back safely.'
; Text $0323: 'Don't stand there.Come around here.'<4F>Or are you here as a customer today?'
; Text $0324: 'Oh,I see.'<44>
; Text $0325: 'If that's the case,come here quickly.'
; Text $0326: 'I've been waiting for you.You've come to work,right?'
; Text $0327: <50> was carried to the wagon.
; Text $0328: 'I see.I know you want to try many things.'<4F>No problem.Do what you want.If you want to work here again,come back.'
; Text $0329: 'Is this a weapon shop?'
; Text $032A: 'No? Sorry I bothered you.'
; Text $032B: 'Can you show me things for sale?'
; Text $032C: 'What are you? Show them to me.'
; Text $032D: 'I'll take the <48>.The price is <47> gold piece<4C>,right?'
; Text $032E: 'You like kidding people,don't you?'
; Text $032F: 'I made a good purchase.Thanks,I'll come again.'
; Text $0330: 'You'll give me a discount!? How much is the <48>? How about <47> gold piece<4C>?'
; Text $0331: 'What? You raised the price? The <48> is <47> gold piece<4C> starting today?'
; Text $0332: 'I've no choice.I'll pay it.Thanks a lot!'
; Text $0333: 'If that's the case,I won't buy it.Bye!'
; Text $0334: 'Huh? You don't seem to have brought anything back today.'
; Text $0335: 'Oops,I don't have enough money for that.'<4F>Sorry,I'll be back.'
; Text $0336: 'Excuse me,but I have too many things.'<4F>I'll sell or discard them somewhere.See you.'
; Text $0337: 'Hmm...I can't be equipped with this.Can you still sell it to me?'
; Text $0338: 'Thanks a lot.I'll give this to my friend.Bye now.'
; Text $0339: 'I knew it....Sorry I bothered you.'
; Text $033A: 'KiKeee!'<43><4B>
; Text $033B: 'No? Sorry I bothered you.'
; Text $033C: 'I have a weapon to sell.Will you buy it?'
; Text $033D: 'I see.I'll try other places then.'
; Text $033E: 'It's the <48>.How about paying <47> gold piece<4C> for it?'
; Text $033F: 'You don't want it...I see.I'll try other places.'
Bank00_TextGroup_19:
        db   $F0,$B1,$A3,$53,$EC,$FA,$C8,$87 ; BBD8 F0 B1 A3 53 EC FA C8 87  ...S....
        db   $05,$21,$AC,$68,$49,$3F,$43,$0E ; BBE0 05 21 AC 68 49 3F 43 0E  .!.hI?C.
        db   $AB,$1D,$AD,$C4,$9F,$8D,$2F,$71 ; BBE8 AB 1D AD C4 9F 8D 2F 71  ....../q
        db   $FD,$6C,$99,$38,$F9,$66,$B9,$08 ; BBF0 FD 6C 99 38 F9 66 B9 08  .l.8.f..
        db   $62,$01,$9E,$94,$BE,$53,$F7,$7A ; BBF8 62 01 9E 94 BE 53 F7 7A  b....S.z
        db   $09,$FF,$35,$E7,$B8,$C8,$E3,$F3 ; BC00 09 FF 35 E7 B8 C8 E3 F3  ..5.....
        db   $D0,$C3,$AA,$99,$08,$6B,$54,$D9 ; BC08 D0 C3 AA 99 08 6B 54 D9  .....kT.
        db   $F0,$FD,$CD,$72,$10,$C2,$90,$37 ; BC10 F0 FD CD 72 10 C2 90 37  ...r...7
        db   $4A,$C2,$15,$EB,$23,$4A,$08,$0F ; BC18 4A C2 15 EB 23 4A 08 0F  J...#J..
        db   $8F,$72,$7C,$E7,$9C,$F7,$1B,$A4 ; BC20 8F 72 7C E7 9C F7 1B A4  .r|.....
        db   $4C,$07,$F4,$A1,$99,$14,$B9,$0E ; BC28 4C 07 F4 A1 99 14 B9 0E  L.......
        db   $F6,$3B,$42,$18,$80,$D5,$CA,$77 ; BC30 F6 3B 42 18 80 D5 CA 77  .;B....w
        db   $0F,$3D,$C6,$64,$52,$E4,$32,$2C ; BC38 0F 3D C6 64 52 E4 32 2C  .=.dR.2,
        db   $FE,$1E,$F4,$77,$44,$D4,$8A,$5E ; BC40 FE 1E F4 77 44 D4 8A 5E  ...wD..^
        db   $6A,$D4,$23,$68,$98,$BC,$11,$D3 ; BC48 6A D4 23 68 98 BC 11 D3  j.#h....
        db   $FF,$AD,$75,$77,$8D,$D4,$D9,$EA ; BC50 FF AD 75 77 8D D4 D9 EA  ..uw....
        db   $E5,$2D,$8B,$9F,$AB,$51,$D4,$8A ; BC58 E5 2D 8B 9F AB 51 D4 8A  .-...Q..
        db   $34,$6A,$7A,$89,$D7,$9B,$43,$6F ; BC60 34 6A 7A 89 D7 9B 43 6F  4jz...Co
        db   $F2,$8B,$BD,$3E,$B1,$AE,$17,$FE ; BC68 F2 8B BD 3E B1 AE 17 FE  ...>....
        db   $EA,$E5,$3A,$35,$3D,$44,$EB,$CD ; BC70 EA E5 3A 35 3D 44 EB CD  ..:5=D..
        db   $A3,$71,$0D,$5C,$A7,$37,$C9,$B7 ; BC78 A3 71 0D 5C A7 37 C9 B7  .q.\.7..
        db   $CE,$43,$F3,$6E,$7B,$8C,$F3,$E5 ; BC80 CE 43 F3 6E 7B 8C F3 E5  .C.n{...
        db   $84,$5E,$1D,$6D,$EA,$EB,$1D,$AD ; BC88 84 5E 1D 6D EA EB 1D AD  .^.m....
        db   $D4,$41,$7D,$D5,$CA,$7B,$7C,$6B ; BC90 D4 41 7D D5 CA 7B 7C 6B  .A}..{|k
        db   $2B,$1B,$3C,$4A,$80,$85,$6C,$22 ; BC98 2B 1B 3C 4A 80 85 6C 22  +.<J..l"
        db   $F0,$E9,$64,$FB,$3E,$27,$53,$F7 ; BCA0 F0 E9 64 FB 3E 27 53 F7  ..d.>'S.
        db   $3D,$C7,$C7,$76,$F4,$DA,$32,$FE ; BCA8 3D C7 C7 76 F4 DA 32 FE  =..v..2.
        db   $52,$7E,$EB,$8F,$86,$1D,$5D,$6F ; BCB0 52 7E EB 8F 86 1D 5D 6F  R~....]o
        db   $F2,$FC,$6A,$E5,$3A,$E3,$E3,$29 ; BCB8 F2 FC 6A E5 3A E3 E3 29  ..j.:..)
        db   $65,$D1,$A4,$9E,$6D,$1F,$CF,$3E ; BCC0 65 D1 A4 9E 6D 1F CF 3E  e...m..>
        db   $AD,$74,$F5,$11,$78,$75,$B7,$6D ; BCC8 AD 74 F5 11 78 75 B7 6D  .t..xu.m
        db   $63,$10,$0C,$18,$E2,$F0,$B0,$86 ; BCD0 63 10 0C 18 E2 F0 B0 86  c.......
        db   $7B,$AB,$F6,$2C,$F7,$1A,$35,$20 ; BCD8 7B AB F6 2C F7 1A 35 20  {..,..5
        db   $DA,$39,$B4,$6B,$8F,$8D,$52,$93 ; BCE0 DA 39 B4 6B 8F 8D 52 93  .9.k..R.
        db   $C8,$D9,$C2,$B6,$11,$78,$58,$ED ; BCE8 C8 D9 C2 B6 11 78 58 ED  .....xX.
        db   $48,$6B,$20,$1E,$69,$78,$FC,$3A ; BCF0 48 6B 20 1E 69 78 FC 3A  Hk .ix.:
        db   $32,$13,$FD,$5C,$A7,$BD,$4E,$53 ; BCF8 32 13 FD 5C A7 BD 4E 53  2..\..NS
        db   $DA,$90,$D1,$CD,$A3,$3C,$E6,$A7 ; BD00 DA 90 D1 CD A3 3C E6 A7  .....<..
        db   $EC,$DB,$7F,$94,$5D,$E9,$EA,$22 ; BD08 EC DB 7F 94 5D E9 EA 22  ....].."
        db   $A9,$76,$69,$4B,$46,$BF,$FF,$07 ; BD10 A9 76 69 4B 46 BF FF 07  .viKF...
        db   $B9,$E7,$3D,$C6,$69,$68,$93,$EF ; BD18 B9 E7 3D C6 69 68 93 EF  ..=.ih..
        db   $17,$85,$8C,$40,$77,$B1,$99,$9C ; BD20 17 85 8C 40 77 B1 99 9C  ...@w...
        db   $B5,$AB,$94,$E6,$94,$DF,$3C,$E7 ; BD28 B5 AB 94 E6 94 DF 3C E7  ......<.
        db   $FD,$7A,$D5,$3A,$F3,$DF,$87,$41 ; BD30 FD 7A D5 3A F3 DF 87 41  .z.:...A
        db   $30,$EA,$65,$4E,$F3,$F9,$B3,$01 ; BD38 30 EA 65 4E F3 F9 B3 01  0.eN....
        db   $6F,$7E,$96,$73,$57,$57,$D5,$CA ; BD40 6F 7E 96 73 57 57 D5 CA  o~.sWW..
        db   $73,$4A,$6F,$DE,$C2,$1A,$B9,$4E ; BD48 73 4A 6F DE C2 1A B9 4E  sJo....N
        db   $69,$4D,$F3,$CE,$6A,$7E,$CF,$5C ; BD50 69 4D F3 CE 6A 7E CF 5C  iM..j~.\
        db   $7C,$65,$A1,$78,$6D,$A3,$9B,$46 ; BD58 7C 65 A1 78 6D A3 9B 46  |e.xm..F
        db   $B2,$B1,$B3,$61,$17,$85,$82,$CF ; BD60 B2 B1 B3 61 17 85 82 CF  ...a....
        db   $7E,$16,$5C,$D0,$5F,$32,$78,$AF ; BD68 7E 16 5C D0 5F 32 78 AF  ~.\._2x.
        db   $3E,$69,$EA,$22,$F0,$65,$4D,$3E ; BD70 3E 69 EA 22 F0 65 4D 3E  >i.".eM>
        db   $EB,$CF,$FF,$5E,$B1,$AC,$CB,$DC ; BD78 EB CF FF 5E B1 AC CB DC  ...^....
        db   $7C,$7B,$AB,$94,$B0,$8B,$C1,$BC ; BD80 7C 7B AB 94 B0 8B C1 BC  |{......
        db   $A7,$AB,$94,$E2,$BC,$B5,$AD,$19 ; BD88 A7 AB 94 E2 BC B5 AD 19  ........
        db   $EF,$C3,$A0,$B2,$13,$FC,$4B,$01 ; BD90 EF C3 A0 B2 13 FC 4B 01  ......K.
        db   $4F,$51,$17,$82,$2D,$D5,$F2,$FC ; BD98 4F 51 17 82 2D D5 F2 FC  OQ..-...
        db   $6A,$E5,$34,$FB,$AF,$79,$6B,$3D ; BDA0 6A E5 34 FB AF 79 6B 3D  j.4..yk=
        db   $C5,$B9,$E7,$5A,$18,$45,$E1,$63 ; BDA8 C5 B9 E7 5A 18 45 E1 63  ...Z.E.c
        db   $B4,$21,$9D,$59,$8C,$F7,$19,$B8 ; BDB0 B4 21 9D 59 8C F7 19 B8  .!.Y....
        db   $77,$F1,$B8,$DE,$7F,$C8,$C6,$E1 ; BDB8 77 F1 B8 DE 7F C8 C6 E1  w.......
        db   $66,$59,$A8,$98,$7B,$BC,$F0,$46 ; BDC0 66 59 A8 98 7B BC F0 46  fY..{..F
        db   $11,$AB,$6F,$F2,$8B,$BD,$3D,$44 ; BDC8 11 AB 6F F2 8B BD 3D 44  ..o...=D
        db   $5E,$15,$39,$4E,$87,$19,$8C,$CF ; BDD0 5E 15 39 4E 87 19 8C CF  ^.9N....
        db   $9E,$FB,$C3,$A3,$79,$13,$E6,$01 ; BDD8 9E FB C3 A3 79 13 E6 01  ....y...
        db   $B7,$B2,$7D,$9F,$57,$29,$A7,$A8 ; BDE0 B7 B2 7D 9F 57 29 A7 A8  ..}.W)..
        db   $8B,$C2,$C6,$B5,$7D,$19,$75,$13 ; BDE8 8B C2 C6 B5 7D 19 75 13  ....}.u.
        db   $3E,$EF,$29,$FC,$77,$52,$1D,$FC ; BDF0 3E EF 29 FC 77 52 1D FC  >.).wR..
        db   $6E,$A6,$CC,$9B,$58,$ED,$08,$68 ; BDF8 6E A6 CC 9B 58 ED 08 68  n...X..h
        db   $E6,$D1,$96,$85,$E1,$B0,$8B,$C2 ; BE00 E6 D1 96 85 E1 B0 8B C2  ........
        db   $A7,$29,$ED,$08,$6A,$39,$48,$6B ; BE08 A7 29 ED 08 6A 39 48 6B  .)..j9Hk
        db   $46,$5D,$EF,$0A,$39,$49,$BD,$5A ; BE10 46 5D EF 0A 39 49 BD 5A  F]..9I.Z
        db   $7C,$8F,$2D,$6B,$53,$1D,$F7,$0B ; BE18 7C 8F 2D 6B 53 1D F7 0B  |.-kS...
        db   $3D,$C6,$6E,$14,$F9,$1E,$5A,$CB ; BE20 3D C6 6E 14 F9 1E 5A CB  =.n...Z.
        db   $66,$52,$F9,$96,$6A,$26,$1E,$EF ; BE28 66 52 F9 96 6A 26 1E EF  fR..j&..
        db   $3C,$11,$84,$6B,$4F,$51,$17,$82 ; BE30 3C 11 84 6B 4F 51 17 82  <..kOQ..
        db   $2D,$D5,$E9,$F5,$4E,$53,$BE,$BC ; BE38 2D D5 E9 F5 4E 53 BE BC  -...NS..
        db   $21,$EE,$7B,$8D,$E7,$FC,$8C,$53 ; BE40 21 EE 7B 8D E7 FC 8C 53  !.{....S
        db   $EF,$1B,$8C,$DC,$37,$0B,$32,$CD ; BE48 EF 1B 8C DC 37 0B 32 CD  ....7.2.
        db   $44,$C3,$DD,$E7,$82,$30,$8D,$71 ; BE50 44 C3 DD E7 82 30 8D 71  D....0.q
        db   $3A,$FD,$F8,$74,$67,$9F,$56,$BA ; BE58 3A FD F8 74 67 9F 56 BA  :..tg.V.
        db   $7A,$88,$BC,$2C,$76,$A4,$31,$CE ; BE60 7A 88 BC 2C 76 A4 31 CE  z..,v.1.
        db   $8E,$F3,$C8,$C7,$7B,$1D,$A1,$0D ; BE68 8E F3 C8 C7 7B 1D A1 0D  ....{...
        db   $E5,$6B,$DC,$7E,$FE,$37,$53,$66 ; BE70 E5 6B DC 7E FE 37 53 66  .k.~.7Sf
        db   $59,$74,$25,$EA,$D4,$45,$E1,$61 ; BE78 59 74 25 EA D4 45 E1 61  Yt%..E.a
        db   $0C,$F7,$57,$EC,$59,$EE,$34,$6A ; BE80 0C F7 57 EC 59 EE 34 6A  ..W.Y.4j
        db   $41,$B5,$8C,$D4,$9F,$67,$D6,$53 ; BE88 41 B5 8C D4 9F 67 D6 53  A....g.S
        db   $5E,$E3,$F7,$6E,$D6,$2A,$D4,$45 ; BE90 5E E3 F7 6E D6 2A D4 45  ^..n.*.E
        db   $E0,$8E,$9B,$D3,$EA,$9C,$A7,$7B ; BE98 E0 8E 9B D3 EA 9C A7 7B  .......{
        db   $27,$D9,$F1,$01,$6E,$79,$D7,$5A ; BEA0 27 D9 F1 01 6E 79 D7 5A  '...ny.Z
        db   $43,$59,$FC,$A6,$8B,$BE,$53,$AD ; BEA8 43 59 FC A6 8B BE 53 AD  CY....S.
        db   $EF,$C3,$A3,$59,$58,$D9,$E7,$9F ; BEB0 EF C3 A3 59 58 D9 E7 9F  ...YX...
        db   $56,$B6,$11,$78,$75,$B3,$E4,$9B ; BEB8 56 B6 11 78 75 B3 E4 9B  V..xu...
        db   $58,$DE,$C9,$F6,$7D,$75,$A4,$30 ; BEC0 58 DE C9 F6 7D 75 A4 30  X...}u.0
        db   $39,$4D,$17,$D6,$C9,$8A,$F2,$13 ; BEC8 39 4D 17 D6 C9 8A F2 13  9M......
        db   $FC,$F7,$57,$61,$D5,$D7,$9F,$FE ; BED0 FC F7 57 61 D5 D7 9F FE  ..Wa....
        db   $B6,$D6,$3B,$42,$1A,$C8,$D6,$56 ; BED8 B6 D6 3B 42 1A C8 D6 56  ..;B...V
        db   $36,$6C,$22,$F0,$64,$32,$F1,$A4 ; BEE0 36 6C 22 F0 64 32 F1 A4  6l".d2..
        db   $86,$B4,$36,$B2,$97,$D6,$35,$D6 ; BEE8 86 B4 36 B2 97 D6 35 D6  ..6...5.
        db   $90,$CF,$33,$AD,$53,$AF,$3D,$F8 ; BEF0 90 CF 33 AD 53 AF 3D F8  ..3.S.=.
        db   $74,$13,$0E,$AB,$1D,$A1,$0C,$42 ; BEF8 74 13 0E AB 1D A1 0C 42  t......B
        db   $10,$D3,$FD,$EF,$0A,$35,$FF,$B9 ; BF00 10 D3 FD EF 0A 35 FF B9  .....5..
        db   $EE,$2D,$C5,$36,$86,$AE,$3E,$3B ; BF08 EE 2D C5 36 86 AE 3E 3B  .-.6..>;
        db   $F5,$C0,$D5,$CA,$58,$45,$E0,$8F ; BF10 F5 C0 D5 CA 58 45 E0 8F  ....XE..
        db   $6D,$BD,$16,$34,$6A,$7D,$9F,$59 ; BF18 6D BD 16 34 6A 7D 9F 59  m..4j}.Y
        db   $18,$54,$A4,$F3,$CF,$91,$EE,$6B ; BF20 18 54 A4 F3 CF 91 EE 6B  .T.....k
        db   $8F,$7C,$F7,$E1,$77,$6F,$29,$EA ; BF28 8F 7C F7 E1 77 6F 29 EA  .|..wo).
        db   $E5,$38,$9F,$90,$86,$21,$08,$6E ; BF30 E5 38 9F 90 86 21 08 6E  .8...!.n
        db   $3E,$79,$D6,$8A,$7A,$88,$BC,$3C ; BF38 3E 79 D6 8A 7A 88 BC 3C  >y..z..<
        db   $6E,$A6,$CC,$B2,$E8,$4B,$F7,$B1 ; BF40 6E A6 CC B2 E8 4B F7 B1  n....K..
        db   $DA,$10,$D4,$72,$90,$CF,$7E,$16 ; BF48 DA 10 D4 72 90 CF 7E 16  ...r..~.
        db   $79,$D6,$D7,$90,$FF,$01,$FB,$DD ; BF50 79 D6 D7 90 FF 01 FB DD  y.......
        db   $BB,$58,$C7,$2D,$30,$8B,$C2,$C6 ; BF58 BB 58 C7 2D 30 8B C2 C6  .X.-0...
        db   $66,$61,$AD,$C7,$E8,$EF,$D7,$9F ; BF60 66 61 AD C7 E8 EF D7 9F  fa......
        db   $FE,$BD,$63,$59,$97,$B8,$F8,$F7 ; BF68 FE BD 63 59 97 B8 F8 F7  ..cY....
        db   $57,$29,$61,$17,$82,$33,$88,$C0 ; BF70 57 29 61 17 82 33 88 C0  W)a..3..
        db   $05,$5A,$84,$6D,$13,$17,$83,$2A ; BF78 05 5A 84 6D 13 17 83 2A  .Z.m...*
        db   $69,$F7,$5E,$7F,$FA,$F5,$8D,$66 ; BF80 69 F7 5E 7F FA F5 8D 66  i.^....f
        db   $5E,$E3,$E3,$DD,$5C,$A5,$84,$5E ; BF88 5E E3 E3 DD 5C A5 84 5E  ^...\..^
        db   $16,$35,$D6,$90,$CB,$9A,$0B,$E6 ; BF90 16 35 D6 90 CB 9A 0B E6  .5......
        db   $4F,$3C,$E2,$10,$87,$74,$5E,$42 ; BF98 4F 3C E2 10 87 74 5E 42  O<...t^B
        db   $1A,$B9,$4E,$B2,$9A,$F7,$1E,$9E ; BFA0 1A B9 4E B2 9A F7 1E 9E  ..N.....
        db   $A2,$2F,$0B,$18,$80,$EF,$63,$B4 ; BFA8 A2 2F 0B 18 80 EF 63 B4  ./....c.
        db   $21,$9F,$F5,$E9,$7B,$8F,$EF,$30 ; BFB0 21 9F F5 E9 7B 8F EF 30  !...{..0
        db   $58,$C1,$67,$B8,$36,$11,$78,$58 ; BFB8 58 C1 67 B8 36 11 78 58  X.g.6.xX
        db   $7E,$C5,$9E,$E3,$37,$0E,$E8,$F2 ; BFC0 7E C5 9E E3 37 0E E8 F2  ~...7...
        db   $D6,$5B,$32,$97,$DE,$56,$BE,$1D ; BFC8 D6 5B 32 97 DE 56 BE 1D  .[2..V..
        db   $19,$96,$6A,$26,$1E,$EF,$3C,$11 ; BFD0 19 96 6A 26 1E EF 3C 11  ..j&..<.
Bank00_TextStreamRollover:
        db   $78,$EE,$DF,$BF,$4C,$8E,$FF,$80 ; BFD8 78 EE DF BF 4C 8E FF 80  x...L...
Bank00_TitleSignature:
        db   $20,$44,$52,$41,$47,$4F,$4E,$20 ; BFE0 20 44 52 41 47 4F 4E 20   DRAGON
        db   $51,$55,$45,$53,$54,$20,$49,$56 ; BFE8 51 55 45 53 54 20 49 56  QUEST IV
        db   $00,$00,$00,$00,$48,$04,$01,$0E ; BFF0 00 00 00 00 48 04 01 0E  ....H...
        db   $07,$9E                         ; BFF8 07 9E                    ..
Bank00_CompatibilityVectors:
        db   $D8,$BF,$D8,$BF,$D8,$BF         ; BFFA D8 BF D8 BF D8 BF        ......
Bank00_End:
