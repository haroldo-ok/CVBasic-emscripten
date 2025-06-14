	rem
	rem Bank-switching example
	rem by Oscar Toledo G. http://nanochess.org
	rem Apr/27/2024
	rem Apr/27/2025. Adapted for Sega Master System.
	rem

	BANK ROM 128	' Select a 128KB target ROM size.
			' Now it is in bank 0.

	PLAY FULL
	BANK SELECT 1	' Select bank 1 to access.
	PLAY tune_2

	BANK SELECT 2	' Select bank 2 to access.

	' Notice bank 2 is selected, but the
	' music is being played from bank 1.

	DEFINE CHAR PLETTER 64,185,image_char
	PALETTE 9,$0B
	PALETTE 11,$1B
	PALETTE 14,$2B
	SCREEN image_pattern,0,200,16,12,16

	WHILE 1: WEND

	BANK 1		' Start of bank 1 data

	' Mecha-8 level 5: alone
	' Fragment
tune_2: DATA BYTE 5
	MUSIC G5#Y,C3#,-,M1
	MUSIC S,S,-,M2
	MUSIC F5#,G3#,-,M2
	MUSIC S,S,-,M2
	MUSIC E5,C3#,-,M1
	MUSIC S,S,-,M2
	MUSIC D5#,G3#,-,M2
	MUSIC S,S,-,M2
	MUSIC E5,C3#,-,M1
	MUSIC S,S,-,M2
	MUSIC F5#,G3#,-,M2
	MUSIC S,S,-,M2
	MUSIC G5#,C3#,-,M1
	MUSIC S,S,-,M2
	MUSIC S,G3#,-,M2
	MUSIC S,S,-,M2
	MUSIC S,C3#,-,M1
	MUSIC S,S,-,M2
	MUSIC C5#,G3#,-,M2
	MUSIC -,S,-,M2
	MUSIC G5#,C3#,-,M1
	MUSIC S,S,-,M2
	MUSIC E5,G3#,-,M2
	MUSIC -,S,-,M2
	MUSIC F5#,B2,-,M1
	MUSIC S,S,-,M2
	MUSIC S,F3#,-,M2
	MUSIC S,S,-,M2
	MUSIC S,B2,-,M1
	MUSIC S,S,-,M2
	MUSIC -,F3#,-,M2
	MUSIC -,S,-,M2
	MUSIC -,B2,-,M1
	MUSIC -,S,-,M2
	MUSIC -,F3#,-,M2
	MUSIC -,S,-,M2
	MUSIC -,B2,-,M1
	MUSIC -,S,-,M2
	MUSIC -,F3#,-,M1
	MUSIC -,S,-,M2
	MUSIC C5#,B2,-,M1
	MUSIC S,S,-,M2
	MUSIC F5#,F3#,-,M1
	MUSIC S,S,-,M2
	MUSIC C5#,B2,-,M1
	MUSIC S,S,-,M2
	MUSIC E5,A2,-,M1
	MUSIC S,S,-,M2
	MUSIC S,E3,-,M1
	MUSIC S,S,-,M2
	MUSIC S,A2,-,M1
	MUSIC S,S,-,M2
	MUSIC S,E3,-,M1
	MUSIC S,S,-,M2
	MUSIC S,A2,-,M1
	MUSIC S,S,-,M2
	MUSIC S,E3,-,M1
	MUSIC S,S,-,M2
	MUSIC S,A2,-,M1
	MUSIC S,S,-,M2
	MUSIC F5#,E3,-,M1
	MUSIC S,S,-,M2
	MUSIC E5,A2,-,M2
	MUSIC S,S,-,M2
	MUSIC D5#,E3,-,M1
	MUSIC S,S,-,M2
	MUSIC S,A2,-,M2
	MUSIC S,S,-,M2
	MUSIC C5,G2#,-,M1
	MUSIC S,S,-,M2
	MUSIC S,D3#,-,M2
	MUSIC S,S,-,M2
	MUSIC S,G2#,-,M1
	MUSIC S,S,-,M2
	MUSIC S,D3#,-,M2
	MUSIC S,S,-,M2
	MUSIC S,G2#,-,M1
	MUSIC S,S,-,M2
	MUSIC -,D3#,-,M2
	MUSIC -,S,-,M2
	MUSIC -,G2#,-,M1
	MUSIC -,S,-,M2
	MUSIC -,D3#,-,M2
	MUSIC -,S,-,M2
	MUSIC -,G2#,-,M1
	MUSIC -,S,-,M2
	MUSIC -,D3#,-,M1
	MUSIC -,S,-,M3
	MUSIC -,G2#,-,M1
	MUSIC -,S,-,M2
	MUSIC -,D3#,-,M1
	MUSIC -,S,-,M3
	MUSIC -,G2#,-,M1
	MUSIC -,S,-,M1
	MUSIC -,D3#,-,M1
	MUSIC -,S,-,M1
	MUSIC REPEAT

	BANK 2		' Start of bank 2 data.

	' Start tile = 64. Total_tiles = 185
image_char:
	DATA BYTE $69,$b4,$ff,$00,$24,$8f,$03,$00
	DATA BYTE $e4,$03,$7f,$00,$00,$41,$1f,$00
	DATA BYTE $01,$ff,$fe,$ff,$dd,$03,$1f,$ba
	DATA BYTE $61,$03,$00,$80,$80,$00,$02,$c0
	DATA BYTE $c0,$00,$c0,$40,$f0,$b0,$17,$f0
	DATA BYTE $00,$f0,$00,$01,$03,$04,$f0,$f4
	DATA BYTE $f4,$00,$f4,$33,$00,$79,$23,$de
	DATA BYTE $03,$27,$80,$f9,$00,$80,$6f,$07
	DATA BYTE $22,$03,$f7,$00,$80,$f3,$00,$26
	DATA BYTE $80,$fb,$00,$34,$69,$0f,$03,$81
	DATA BYTE $8f,$a2,$03,$bf,$00,$f9,$13,$04
	DATA BYTE $8f,$03,$2a,$c7,$03,$ab,$e3,$03
	DATA BYTE $2f,$71,$03,$4f,$ae,$6a,$03,$f3
	DATA BYTE $00,$fe,$ec,$03,$00,$6e,$fc,$11
	DATA BYTE $03,$f8,$fd,$00,$00,$3f,$71,$00
	DATA BYTE $03,$04,$3b,$9c,$07,$b3,$29,$7b
	DATA BYTE $00,$00,$de,$17,$01,$03,$0f,$b3
	DATA BYTE $b3,$bf,$07,$3f,$33,$1c,$03,$1b
	DATA BYTE $64,$03,$7d,$03,$ff,$10,$fd,$ff
	DATA BYTE $c0,$2e,$f9,$a0,$70,$30,$70,$f0
	DATA BYTE $a3,$60,$03,$ee,$ee,$e8,$00,$0e
	DATA BYTE $e2,$e2,$e0,$80,$03,$44,$ec,$00
	DATA BYTE $80,$cc,$00,$00,$84,$96,$f8,$00
	DATA BYTE $5b,$f1,$00,$a0,$f3,$e6,$7b,$a2
	DATA BYTE $0b,$0f,$00,$20,$00,$07,$00,$80
	DATA BYTE $0f,$8f,$0f,$e0,$03,$a0,$1f,$bf
	DATA BYTE $3f,$20,$b0,$0f,$03,$a0,$0f,$af
	DATA BYTE $2f,$ed,$03,$51,$3b,$cf,$11,$00
	DATA BYTE $00,$c7,$00,$10,$c1,$18,$00,$04
	DATA BYTE $c0,$b5,$48,$f5,$00,$00,$fc,$bb
	DATA BYTE $00,$07,$bb,$6f,$07,$8b,$b7,$bb
	DATA BYTE $0b,$03,$e2,$a7,$61,$69,$03,$63
	DATA BYTE $e7,$30,$00,$61,$97,$98,$60,$17
	DATA BYTE $44,$40,$e8,$a7,$06,$41,$ec,$b8
	DATA BYTE $f1,$b3,$1a,$e8,$97,$c4,$bf,$cc
	DATA BYTE $44,$83,$63,$66,$99,$07,$02,$46
	DATA BYTE $1d,$bf,$24,$c2,$cb,$77,$30,$03
	DATA BYTE $17,$bb,$c5,$cb,$e1,$f3,$bc,$74
	DATA BYTE $a3,$27,$aa,$85,$bb,$cf,$07,$ae
	DATA BYTE $ce,$03,$a3,$27,$6f,$84,$87,$ef
	DATA BYTE $f1,$0b,$68,$8f,$03,$48,$35,$07
	DATA BYTE $e6,$00,$7f,$e7,$03,$17,$a3,$31
	DATA BYTE $03,$f4,$0b,$e0,$8f,$03,$e4,$39
	DATA BYTE $03,$0f,$f2,$c2,$8f,$eb,$98,$00
	DATA BYTE $00,$e7,$64,$00,$ef,$00,$00,$5a
	DATA BYTE $ed,$00,$2f,$03,$af,$00,$84,$af
	DATA BYTE $20,$f0,$03,$d0,$f0,$20,$e1,$c1
	DATA BYTE $e0,$bb,$03,$0b,$8b,$03,$00,$e8
	DATA BYTE $00,$12,$f4,$f5,$4c,$bf,$12,$40
	DATA BYTE $e3,$00,$60,$00,$97,$b5,$80,$84
	DATA BYTE $e3,$fd,$02,$00,$7d,$7d,$7b,$07
	DATA BYTE $fb,$f9,$7f,$07,$1e,$ff,$fa,$ef
	DATA BYTE $82,$fb,$df,$b7,$00,$18,$0f,$fe
	DATA BYTE $9f,$6f,$f9,$8b,$a7,$88,$b7,$80
	DATA BYTE $2f,$88,$07,$30,$0f,$c7,$f8,$cf
	DATA BYTE $83,$00,$03,$23,$23,$95,$db,$02
	DATA BYTE $c5,$a3,$bd,$03,$84,$b7,$20,$00
	DATA BYTE $c1,$e1,$e1,$60,$80,$e0,$e0,$40
	DATA BYTE $04,$08,$48,$48,$00,$78,$00,$00
	DATA BYTE $44,$79,$00,$80,$79,$b0,$7a,$2d
	DATA BYTE $0b,$7d,$00,$11,$87,$7e,$69,$00
	DATA BYTE $0b,$c6,$ab,$ee,$98,$00,$00,$a7
	DATA BYTE $04,$41,$a7,$a7,$00,$27,$97,$b3
	DATA BYTE $b7,$17,$01,$af,$a8,$b7,$27,$ff
	DATA BYTE $f9,$f7,$10,$87,$fb,$ff,$0b,$46
	DATA BYTE $0c,$bf,$0c,$c0,$8f,$22,$06,$8f
	DATA BYTE $00,$00,$87,$00,$01,$c0,$fb,$bb
	DATA BYTE $d3,$f0,$fe,$0e,$07,$e3,$83,$cb
	DATA BYTE $c4,$a3,$64,$c7,$03,$40,$9d,$03
	DATA BYTE $17,$c9,$f3,$c2,$af,$f0,$c7,$0b
	DATA BYTE $a8,$85,$b7,$fd,$03,$f3,$8f,$3c
	DATA BYTE $78,$03,$26,$7a,$fd,$03,$b8,$1b
	DATA BYTE $07,$bc,$ff,$30,$07,$b8,$93,$99
	DATA BYTE $98,$03,$bc,$ab,$4c,$3e,$03,$63
	DATA BYTE $1e,$03,$5f,$1e,$03,$1c,$7f,$03
	DATA BYTE $17,$d7,$ce,$00,$3f,$03,$ff,$9b
	DATA BYTE $af,$c2,$f3,$63,$c0,$03,$88,$1c
	DATA BYTE $03,$08,$e7,$5e,$03,$c3,$12,$e0
	DATA BYTE $cb,$c7,$cf,$f4,$d7,$5e,$03,$5a
	DATA BYTE $fa,$00,$72,$03,$97,$a2,$81,$00
	DATA BYTE $00,$89,$00,$2c,$00,$ad,$00,$23
	DATA BYTE $07,$ce,$01,$de,$de,$df,$d3,$93
	DATA BYTE $d8,$03,$e3,$46,$ff,$03,$70,$07
	DATA BYTE $03,$83,$7f,$7c,$22,$ff,$c2,$f7
	DATA BYTE $00,$fb,$c0,$f1,$b1,$f0,$c0,$f8
	DATA BYTE $b8,$3a,$f8,$c0,$8f,$78,$9f,$e5
	DATA BYTE $ee,$00,$c4,$00,$d8,$d8,$18,$00
	DATA BYTE $f8,$f8,$64,$20,$9b,$b0,$40,$63
	DATA BYTE $e0,$0c,$00,$3f,$31,$2f,$0c,$6f
	DATA BYTE $61,$6f,$00,$4f,$01,$00,$00,$93
	DATA BYTE $00,$40,$90,$b7,$00,$fb,$00,$8b
	DATA BYTE $e3,$b8,$03,$fb,$96,$30,$00,$88
	DATA BYTE $4f,$03,$00,$01,$03,$11,$02,$03
	DATA BYTE $05,$03,$07,$31,$80,$d7,$21,$dc
	DATA BYTE $83,$48,$8f,$5e,$1f,$8f,$03,$f8
	DATA BYTE $07,$a3,$7e,$df,$a6,$3c,$31,$03
	DATA BYTE $0e,$03,$03,$ae,$20,$1b,$07,$cf
	DATA BYTE $d0,$e3,$98,$0a,$03,$02,$c6,$03
	DATA BYTE $82,$f1,$a3,$f3,$8b,$c9,$86,$16
	DATA BYTE $e7,$0b,$cf,$9c,$37,$0b,$e6,$03
	DATA BYTE $1f,$1b,$03,$9f,$7f,$37,$07,$0f
	DATA BYTE $1d,$03,$07,$73,$f8,$e7,$4f,$3f
	DATA BYTE $e3,$8f,$fc,$eb,$2e,$cb,$06,$f0
	DATA BYTE $e3,$0f,$fc,$7a,$a7,$77,$e9,$c7
	DATA BYTE $e6,$cb,$4a,$e1,$00,$01,$a2,$1c
	DATA BYTE $f5,$b5,$21,$01,$67,$66,$67,$b2
	DATA BYTE $ff,$dd,$00,$ff,$80,$10,$6f,$6f
	DATA BYTE $7f,$18,$c7,$f9,$56,$80,$51,$03
	DATA BYTE $00,$2f,$18,$fe,$e6,$fc,$08,$fe
	DATA BYTE $f6,$09,$fe,$08,$e6,$e6,$d3,$57
	DATA BYTE $ce,$00,$16,$e3,$84,$e7,$b8,$0b
	DATA BYTE $b8,$38,$00,$18,$00,$f8,$03,$0e
	DATA BYTE $2f,$54,$21,$83,$2f,$70,$2f,$03
	DATA BYTE $27,$00,$37,$8b,$00,$00,$b7,$00
	DATA BYTE $45,$07,$27,$00,$a5,$bb,$6f,$66
	DATA BYTE $00,$c7,$82,$e0,$f3,$01,$f3,$f1
	DATA BYTE $a9,$43,$f7,$97,$01,$a1,$c0,$81
	DATA BYTE $f1,$aa,$12,$ef,$e0,$00,$60,$60
	DATA BYTE $71,$f0,$f8,$e0,$00,$f8,$70,$fe
	DATA BYTE $ee,$fe,$03,$07,$04,$80,$ac,$0f
	DATA BYTE $08,$0e,$07,$05,$0f,$0a,$4d,$00
	DATA BYTE $0f,$07,$1f,$18,$0f,$05,$1f,$1a
	DATA BYTE $0e,$0f,$0d,$17,$12,$03,$7f,$1f
	DATA BYTE $17,$ef,$7d,$53,$03,$13,$ab,$bf
	DATA BYTE $d6,$9b,$1d,$c2,$e3,$5e,$0f,$6d
	DATA BYTE $89,$03,$05,$9a,$74,$1b,$43,$01
	DATA BYTE $8e,$00,$47,$3b,$3b,$fb,$f0,$0d
	DATA BYTE $0d,$f9,$ca,$03,$e7,$40,$04,$04
	DATA BYTE $fc,$f0,$0c,$0c,$70,$f0,$03,$20
	DATA BYTE $dc,$dc,$80,$a8,$1c,$1c,$7c,$e0
	DATA BYTE $e7,$4f,$bc,$18,$07,$1a,$87,$f0
	DATA BYTE $c3,$ca,$00,$10,$0b,$07,$f0,$e3
	DATA BYTE $9b,$01,$90,$6f,$f9,$63,$ab,$22
	DATA BYTE $77,$03,$98,$67,$03,$35,$10,$ef
	DATA BYTE $89,$e7,$3f,$ae,$73,$07,$03,$f4
	DATA BYTE $1c,$4b,$f4,$eb,$5d,$0b,$b8,$03
	DATA BYTE $f0,$e4,$d7,$cf,$1b,$9b,$d3,$e2
	DATA BYTE $ef,$72,$02,$ab,$3c,$3f,$ab,$ee
	DATA BYTE $03,$ee,$0b,$83,$75,$bc,$00,$14
	DATA BYTE $c3,$00,$00,$5c,$a0,$00,$e3,$3a
	DATA BYTE $4a,$eb,$46,$00,$e2,$e3,$c9,$bf
	DATA BYTE $16,$e6,$00,$66,$00,$88,$03,$2e
	DATA BYTE $00,$00,$3e,$b8,$00,$bb,$98,$01
	DATA BYTE $9f,$65,$00,$08,$00,$a1,$eb,$7c
	DATA BYTE $00,$60,$b8,$00,$cf,$c3,$c7,$ef
	DATA BYTE $e8,$ef,$9c,$f9,$0c,$1f,$45,$13
	DATA BYTE $95,$38,$26,$0f,$2f,$04,$0f,$00
	DATA BYTE $0b,$0f,$24,$7e,$5a,$2e,$e4,$fe
	DATA BYTE $38,$1a,$e6,$03,$e0,$f6,$18,$16
	DATA BYTE $e6,$f4,$c5,$00,$b7,$fc,$7f,$fc
	DATA BYTE $97,$8c,$03,$fe,$82,$d9,$06,$df
	DATA BYTE $3e,$0f,$cf,$a3,$2c,$f1,$a6,$10
	DATA BYTE $13,$e3,$11,$11,$03,$05,$87,$16
	DATA BYTE $e4,$11,$f2,$81,$f0,$19,$64,$64
	DATA BYTE $18,$03,$0d,$d7,$03,$8c,$77,$02
	DATA BYTE $76,$00,$12,$2f,$2d,$1f,$b1,$0e
	DATA BYTE $0e,$3f,$40,$a7,$0b,$3f,$b6,$19
	DATA BYTE $09,$3e,$10,$9f,$70,$60,$d0,$00
	DATA BYTE $60,$40,$7f,$3c,$63,$43,$7c,$04
	DATA BYTE $70,$ce,$8e,$70,$40,$da,$1c,$87
	DATA BYTE $dd,$ab,$98,$df,$70,$06,$cc,$33
	DATA BYTE $33,$68,$fc,$0f,$c5,$1c,$c5,$00
	DATA BYTE $28,$af,$1d,$8b,$c0,$db,$db,$ff
	DATA BYTE $3d,$42,$17,$42,$3f,$1d,$ff,$c1
	DATA BYTE $a9,$04,$fa,$bd,$60,$e5,$e5,$1e
	DATA BYTE $32,$cd,$3b,$cd,$3e,$03,$94,$1f
	DATA BYTE $c0,$51,$cb,$38,$19,$80,$82,$da
	DATA BYTE $37,$ba,$1f,$33,$f2,$0a,$ca,$ca
	DATA BYTE $1f,$03,$9e,$5c,$07,$e7,$40,$60
	DATA BYTE $98,$98,$e0,$01,$82,$9f,$b2,$52
	DATA BYTE $38,$38,$03,$c0,$93,$43,$02,$92
	DATA BYTE $60,$03,$0f,$82,$7c,$7c,$30,$80
	DATA BYTE $20,$e3,$58,$04,$03,$0c,$cf,$03
	DATA BYTE $87,$f3,$e3,$df,$eb,$c3,$e2,$e3
	DATA BYTE $f8,$f7,$89,$04,$f3,$84,$8b,$10
	DATA BYTE $e3,$df,$ed,$5b,$6e,$13,$e3,$26
	DATA BYTE $3b,$3c,$03,$1b,$97,$76,$1f,$6f
	DATA BYTE $3f,$3c,$9f,$c7,$39,$cc,$3d,$f7
	DATA BYTE $fb,$d8,$03,$13,$80,$ce,$c7,$67
	DATA BYTE $80,$5f,$f2,$cf,$71,$6f,$10,$0f
	DATA BYTE $85,$b7,$c5,$f7,$d8,$f7,$4f,$99
	DATA BYTE $00,$0e,$97,$c5,$02,$cf,$00,$9d
	DATA BYTE $3b,$9f,$dc,$43,$fd,$ec,$07,$9f
	DATA BYTE $52,$f7,$01,$26,$8b,$b8,$0c,$cd
	DATA BYTE $1d,$ff,$01,$e2,$ff,$0d,$b3,$b2
	DATA BYTE $af,$10,$18,$8b,$f0,$e0,$c7,$00
	DATA BYTE $07,$e3,$80,$e1,$61,$a1,$c0,$e3
	DATA BYTE $38,$23,$e1,$a9,$bb,$59,$af,$8d
	DATA BYTE $04,$9a,$e0,$10,$c1,$d2,$54,$86
	DATA BYTE $82,$07,$fb,$5f,$15,$f3,$f7,$8c
	DATA BYTE $03,$e7,$db,$d2,$07,$90,$6a,$26
	DATA BYTE $97,$78,$07,$ff,$0e,$b7,$8b,$d7
	DATA BYTE $c2,$cf,$c0,$c0,$33,$c0,$dc,$00
	DATA BYTE $dc,$63,$c7,$43,$9f,$3b,$03,$07
	DATA BYTE $a9,$4f,$07,$a1,$43,$2f,$ff,$d0
	DATA BYTE $3f,$88,$e3,$08,$14,$01,$14,$08
	DATA BYTE $0c,$f1,$f1,$ac,$1c,$1b,$d6,$fd
	DATA BYTE $4a,$03,$d2,$d8,$fd,$a7,$57,$b0
	DATA BYTE $a0,$e0,$7b,$48,$f7,$b7,$f8,$06
	DATA BYTE $71,$ff,$8e,$ff,$60,$23,$3d,$20
	DATA BYTE $bd,$bf,$3d,$24,$ff,$00,$04,$b1
	DATA BYTE $00,$a7,$81,$e1,$e4,$1b,$1b,$e7
	DATA BYTE $f6,$17,$68,$0f,$83,$1c,$03,$30
	DATA BYTE $81,$f6,$3c,$84,$e7,$be,$4c,$f2
	DATA BYTE $bf,$fe,$01,$e2,$1d,$1d,$fe,$c2
	DATA BYTE $3d,$3d,$a2,$03,$82,$d2,$b2,$fe
	DATA BYTE $83,$bf,$2a,$2f,$92,$28,$cb,$82
	DATA BYTE $d0,$d0,$10,$50,$96,$50,$50,$64
	DATA BYTE $9b,$9b,$11,$64,$7c,$83,$15,$3f
	DATA BYTE $c0,$1f,$91,$d9,$03,$a3,$b0,$f0
	DATA BYTE $49,$8f,$50,$03,$3f,$03,$9c,$9c
	DATA BYTE $00,$e1,$0f,$fc,$02,$02,$22,$05
	DATA BYTE $03,$5d,$f8,$07,$e5,$0f,$34,$e3
	DATA BYTE $3f,$20,$02,$b3,$b3,$33,$20,$bd
	DATA BYTE $bd,$e3,$51,$a7,$a7,$27,$c0,$0f
	DATA BYTE $00,$a3,$a3,$22,$00,$25,$a1,$a1
	DATA BYTE $eb,$5c,$f9,$00,$e7,$45,$00,$9f
	DATA BYTE $00,$a8,$bb,$13,$df,$be,$f2,$ce
	DATA BYTE $57,$03,$36,$af,$f7,$a3,$22,$84
	DATA BYTE $00,$00,$44,$00,$d1,$9f,$bb,$03
	DATA BYTE $96,$13,$f7,$00,$a2,$1f,$41,$00
	DATA BYTE $30,$00,$10,$85,$80,$f6,$f6,$e0
	DATA BYTE $68,$7e,$76,$29,$78,$08,$1a,$13
	DATA BYTE $af,$40,$00,$43,$bd,$bf,$02,$d7
	DATA BYTE $d5,$10,$d7,$00,$83,$00,$40,$0a
	DATA BYTE $6a,$0b,$0a,$40,$02,$42,$aa,$50
	DATA BYTE $40,$00,$ca,$ff,$75,$b8,$d4,$ff
	DATA BYTE $71,$c5,$f3,$5d,$30,$bb,$2d,$85
	DATA BYTE $f3,$e1,$eb,$e3,$fe,$0c,$10,$3d
	DATA BYTE $0c,$43,$b6,$9d,$00,$f3,$ee,$28
	DATA BYTE $e7,$eb,$b8,$d7,$95,$e0,$a1,$b3
	DATA BYTE $e1,$bb,$95,$20,$5b,$00,$ca,$fb
	DATA BYTE $e3,$c9,$03,$10,$08,$00,$82,$3c
	DATA BYTE $3c,$f8,$f1,$db,$4c,$80,$3e,$2f
	DATA BYTE $e7,$03,$9e,$04,$b8,$8b,$a1,$30
	DATA BYTE $78,$7c,$04,$74,$93,$9b,$d0,$0b
	DATA BYTE $68,$68,$40,$c6,$3b,$70,$8f,$9b
	DATA BYTE $6d,$49,$03,$54,$0a,$13,$17,$82
	DATA BYTE $b8,$e7,$41,$21,$27,$06,$27,$dd
	DATA BYTE $32,$bb,$cc,$0c,$03,$76,$de,$03
	DATA BYTE $30,$0e,$1e,$07,$17,$88,$4b,$88
	DATA BYTE $e7,$1e,$63,$1f,$43,$12,$af,$03
	DATA BYTE $e3,$10,$9f,$13,$2c,$2c,$92,$94
	DATA BYTE $1e,$30,$0f,$03,$9e,$77,$89,$ef
	DATA BYTE $bd,$36,$c3,$62,$08,$8b,$4e,$36
	DATA BYTE $fe,$fb,$14,$f1,$7b,$f1,$5e,$27
	DATA BYTE $f7,$ff,$0c,$7e,$81,$81,$ff,$8f
	DATA BYTE $28,$9d,$c0,$20,$20,$df,$26,$d9
	DATA BYTE $d9,$07,$3e,$44,$bb,$bb,$7c,$51
	DATA BYTE $4b,$0d,$af,$f1,$e3,$77,$0b,$07
	DATA BYTE $07,$c6,$39,$39,$fe,$10,$df,$38
	DATA BYTE $c6,$c6,$2f,$38,$80,$ce,$22,$80
	DATA BYTE $40,$a3,$71,$c0,$e3,$02,$1b,$e4
	DATA BYTE $e4,$1f,$5f,$ff,$26,$5f,$53,$fb
	DATA BYTE $0f,$90,$03,$07,$db,$57,$e6,$00
	DATA BYTE $bf,$1f,$0a,$f5,$3b,$f5,$0a,$11
	DATA BYTE $c6,$03,$f1,$3b,$a3,$e1,$b0,$03
	DATA BYTE $99,$dc,$c1,$03,$02,$04,$fd,$fd
	DATA BYTE $03,$04,$c1,$e8,$e0,$0c,$91,$9d
	DATA BYTE $9d,$7c,$44,$81,$0c,$2d,$90,$80
	DATA BYTE $64,$3c,$81,$03,$3e,$61,$81,$80
	DATA BYTE $a2,$80,$03,$1d,$80,$17,$d2,$bf
	DATA BYTE $6b,$63,$00,$a7,$f3,$00,$03,$30
	DATA BYTE $e1,$f1,$e1,$18,$e1,$00,$fb,$e1
	DATA BYTE $09,$d0,$df,$d0,$04,$18,$48,$1e
	DATA BYTE $fc,$e2,$92,$00,$02,$f3,$13,$e2
	DATA BYTE $83,$21,$c3,$09,$bb,$80,$c3,$e7
	DATA BYTE $c8,$03,$0c,$0f,$80,$04,$18,$31
	DATA BYTE $31,$11,$cf,$e2,$79,$00,$77,$00
	DATA BYTE $d2,$03,$c2,$30,$1f,$40,$8f,$8f
	DATA BYTE $87,$9a,$06,$03,$02,$0d,$0f,$8c
	DATA BYTE $03,$01,$5a,$63,$01,$2f,$18,$33
	DATA BYTE $2f,$67,$a3,$bf,$63,$b7,$f3,$03
	DATA BYTE $8b,$e3,$e2,$03,$40,$24,$00,$21
	DATA BYTE $00,$7c,$00,$00,$74,$74,$12,$ab
	DATA BYTE $34,$00,$e6,$c3,$65,$e0,$b7,$23
	DATA BYTE $e2,$47,$0d,$60,$b4,$dd,$5f,$5f
	DATA BYTE $09,$4f,$00,$17,$17,$db,$96,$47
	DATA BYTE $00,$31,$cf,$86,$08,$0a,$d3,$02
	DATA BYTE $eb,$73,$7e,$80,$b2,$03,$db,$ee
	DATA BYTE $40,$03,$5e,$70,$3a,$a2,$00,$01
	DATA BYTE $01,$e2,$e4,$e2,$0a,$0e,$70,$00
	DATA BYTE $12,$2f,$70,$50,$2c,$11,$00,$0d
	DATA BYTE $18,$bf,$a7,$bf,$2c,$fb,$fc,$ec
	DATA BYTE $68,$fc,$97,$16,$51,$87,$cf,$dc
	DATA BYTE $07,$e3,$48,$03,$07,$83,$01,$00
	DATA BYTE $c2,$c2,$c3,$01,$62,$62,$63,$01
	DATA BYTE $96,$db,$12,$89,$db,$06,$96,$cf
	DATA BYTE $0e,$c0,$03,$02,$f9,$06,$06,$72
	DATA BYTE $f9,$eb,$f1,$f7,$53,$cc,$91,$dd
	DATA BYTE $d5,$9d,$77,$61,$03,$13,$f7,$7f
	DATA BYTE $47,$83,$a1,$0d,$ee,$82,$bb,$8b
	DATA BYTE $a0,$c7,$c7,$e0,$13,$ad,$c3,$f3
	DATA BYTE $dd,$c3,$cf,$83,$d8,$07,$ff,$c0
	DATA BYTE $f0,$3c,$c3,$c3,$fc,$c8,$97,$64
	DATA BYTE $78,$27,$72,$7e,$83,$cb,$88,$cf
	DATA BYTE $d8,$27,$3b,$27,$f8,$4b,$15,$bf
	DATA BYTE $08,$dd,$17,$03,$84,$cf,$02,$0c
	DATA BYTE $06,$0b,$09,$06,$f7,$22,$0e,$88
	DATA BYTE $ee,$10,$8c,$8c,$73,$73,$63,$8c
	DATA BYTE $17,$03,$4a,$03,$b6,$b6,$03,$1a
	DATA BYTE $fb,$fb,$0b,$46,$03,$6b,$07,$18
	DATA BYTE $70,$03,$cf,$31,$1e,$03,$17,$8f
	DATA BYTE $03,$05,$08,$03,$24,$c8,$00,$04
	DATA BYTE $da,$89,$00,$04,$db,$00,$c0,$84
	DATA BYTE $e3,$80,$00,$39,$3d,$39,$84,$3a
	DATA BYTE $3e,$3a,$08,$c1,$ef,$e6,$03,$10
	DATA BYTE $f5,$b3,$04,$71,$71,$01,$08,$03
	DATA BYTE $09,$53,$00,$af,$08,$8c,$ba,$ba
	DATA BYTE $aa,$af,$5b,$00,$4a,$d3,$40,$2f
	DATA BYTE $00,$02,$21,$23,$23,$02,$43,$01
	DATA BYTE $84,$61,$7c,$90,$20,$c1,$cc,$e1
	DATA BYTE $bb,$22,$38,$fc,$00,$1d,$fc,$b0
	DATA BYTE $0e,$0b,$de,$03,$7c,$40,$8b,$58
	DATA BYTE $87,$05,$f9,$7c,$23,$91,$bb,$42
	DATA BYTE $bc,$4e,$00,$b0,$ac,$82,$80,$2e
	DATA BYTE $01,$90,$00,$9c,$2d,$08,$a0,$26
	DATA BYTE $26,$b1,$22,$83,$d8,$38,$0a,$72
	DATA BYTE $05,$07,$05,$06,$e0,$06,$00,$ce
	DATA BYTE $16,$bf,$b2,$dc,$03,$63,$7f,$03
	DATA BYTE $3f,$7c,$e6,$27,$c0,$3f,$b7,$8c
	DATA BYTE $27,$0f,$f2,$67,$07,$46,$c7,$31
	DATA BYTE $03,$5b,$03,$1b,$8f,$03,$1f,$3b
	DATA BYTE $1b,$03,$03,$b2,$3e,$70,$96,$39
	DATA BYTE $00,$20,$f6,$44,$47,$9b,$71,$03
	DATA BYTE $c3,$73,$83,$61,$a3,$32,$3f,$f7
	DATA BYTE $8a,$1f,$0e,$87,$c9,$0f,$06,$a7
	DATA BYTE $80,$07,$03,$0c,$0c,$03,$41,$41
	DATA BYTE $02,$f5,$c5,$c3,$85,$97,$e9,$f7
	DATA BYTE $5f,$57,$fb,$76,$b7,$68,$63,$03
	DATA BYTE $67,$bb,$a3,$4b,$f3,$ef,$2f,$b2
	DATA BYTE $03,$c3,$d8,$ff,$c7,$4d,$88,$3f
	DATA BYTE $8f,$ec,$29,$c3,$47,$01,$60,$03
	DATA BYTE $9a,$f7,$d3,$2b,$38,$77,$d6,$a5
	DATA BYTE $f7,$09,$03,$7d,$83,$82,$03,$03
	DATA BYTE $1b,$fb,$fd,$ce,$03,$97,$50,$e1
	DATA BYTE $1f,$1e,$1f,$e2,$c3,$60,$00,$03
	DATA BYTE $80,$db,$5b,$85,$03,$fb,$7b,$fb
	DATA BYTE $bb,$b7,$77,$d9,$03,$4f,$ba,$3c
	DATA BYTE $03,$01,$03,$6b,$1f,$8c,$1b,$40
	DATA BYTE $03,$ee,$cf,$78,$f0,$03,$1c,$ce
	DATA BYTE $cb,$23,$3f,$fe,$07,$7e,$ff,$67
	DATA BYTE $03,$7f,$99,$03,$12,$46,$d3,$22
	DATA BYTE $00,$b8,$c3,$5d,$7c,$03,$07,$30
	DATA BYTE $03,$bc,$03,$3c,$7e,$98,$00,$3d
	DATA BYTE $03,$3e,$c6,$00,$1e,$68,$03,$ca
	DATA BYTE $32,$af,$d3,$ee,$15,$cb,$03,$11
	DATA BYTE $07,$04,$c2,$cb,$00,$07,$c1,$2f
	DATA BYTE $2e,$2f,$c2,$23,$03,$21,$22,$c3
	DATA BYTE $23,$20,$23,$89,$8b,$07,$bd,$03
	DATA BYTE $46,$e7,$b4,$0b,$b2,$7c,$a7,$5b
	DATA BYTE $a3,$03,$7f,$ef,$17,$f1,$03,$01
	DATA BYTE $e3,$07,$fe,$c6,$03,$fc,$26,$03
	DATA BYTE $ee,$fd,$cb,$a7,$8e,$bd,$e9,$58
	DATA BYTE $a6,$78,$e4,$b9,$e8,$bd,$67,$b3
	DATA BYTE $7a,$01,$31,$0e,$04,$01,$02,$96
	DATA BYTE $01,$15,$ca,$17,$60,$f3,$01,$7f
	DATA BYTE $12,$ed,$ed,$1e,$1c,$d4,$8a,$5f
	DATA BYTE $d5,$3a,$57,$01,$94,$e3,$e0,$c1
	DATA BYTE $d7,$d8,$df,$a4,$c2,$f6,$20,$aa
	DATA BYTE $e3,$4d,$2c,$f0,$f1,$16,$f2,$7e
	DATA BYTE $ef,$0c,$d3,$bd,$44,$ab,$52,$05
	DATA BYTE $67,$0b,$20,$83,$56,$61,$13,$e3
	DATA BYTE $01,$14,$03,$80,$5f,$ae,$78,$e2
	DATA BYTE $ac,$f1,$03,$66,$d0,$97,$31,$f0
	DATA BYTE $23,$e1,$81,$83,$c5,$e7,$12,$b3
	DATA BYTE $bf,$eb,$3f,$4d,$03,$89,$c7,$60
	DATA BYTE $e1,$e3,$74,$03,$89,$9b,$b1,$00
	DATA BYTE $fc,$fe,$8f,$00,$ff,$59,$00,$1e
	DATA BYTE $84,$cb,$1e,$c7,$07,$3c,$9d,$03
	DATA BYTE $0b,$bc,$9f,$e0,$41,$33,$32,$23
	DATA BYTE $00,$4c,$30,$00,$01,$03,$48,$05
	DATA BYTE $02,$20,$b3,$2e,$00,$bf,$05,$06
	DATA BYTE $83,$fc,$03,$10,$63,$02,$e7,$31
	DATA BYTE $73,$0f,$d2,$8f,$03,$d0,$18,$03
	DATA BYTE $d3,$03,$d8,$c6,$03,$49,$6f,$2b
	DATA BYTE $13,$cf,$1f,$ab,$97,$c6,$03,$bf
	DATA BYTE $b8,$cb,$4d,$3f,$70,$f7,$99,$fc
	DATA BYTE $05,$cc,$03,$e0,$03,$68,$60,$11
	DATA BYTE $be,$c6,$03,$d7,$31,$03,$d6,$03
	DATA BYTE $db,$c5,$85,$f9,$03,$f4,$81,$7d
	DATA BYTE $0f,$ac,$00,$10,$f1,$07,$02,$e1
	DATA BYTE $83,$7c,$f9,$4c,$20,$01,$a6,$1b
	DATA BYTE $01,$18,$2e,$01,$0c,$01,$ff,$2d
	DATA BYTE $6f,$34,$9b,$e1,$a8,$03,$ee,$f4
	DATA BYTE $4f,$71,$20,$c7,$00,$62,$67,$02
	DATA BYTE $04,$c3,$c7,$03,$f4,$03,$21,$83
	DATA BYTE $87,$5e,$87,$8f,$07,$15,$e0,$ca
	DATA BYTE $dd,$a7,$1d,$b1,$8c,$30,$9b,$91
	DATA BYTE $70,$80,$c0,$4d,$b7,$88,$d6,$af
	DATA BYTE $e7,$87,$45,$e0,$46,$00,$9b,$f8
	DATA BYTE $11,$f0,$a1,$7f,$e0,$14,$01,$3f
	DATA BYTE $82,$5d,$f0,$31,$00,$01,$03,$8b
	DATA BYTE $8c,$03,$8f,$03,$79,$af,$03,$bc
	DATA BYTE $ab,$56,$2a,$ac,$00,$fe,$f9,$ab
	DATA BYTE $b1,$03,$f8,$e3,$03,$fc,$ef,$03
	DATA BYTE $f1,$9f,$f9,$03,$06,$94,$93,$02
	DATA BYTE $ce,$03,$07,$22,$00,$98,$00,$00
	DATA BYTE $f9,$00,$d2,$df,$30,$03,$90,$ff
	DATA BYTE $b1,$ee,$4d,$84,$c3,$0f,$c2,$fb
	DATA BYTE $e6,$03,$0c,$34,$03,$06,$b7,$0b
	DATA BYTE $00,$8b,$07,$00,$f1,$00,$5e,$b7
	DATA BYTE $66,$0d,$31,$03,$29,$03,$55,$ae
	DATA BYTE $13,$e3,$fe,$c3,$ab,$63,$f6,$03
	DATA BYTE $88,$3f,$03,$ff,$ff,$ff,$f0

	' Width = 16, height = 12
image_pattern:
	DATA BYTE $40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$47,$00,$48,$00,$48,$00,$48,$00,$49,$00,$4a,$00,$4b,$00,$4c,$00,$4d,$00
	DATA BYTE $4e,$00,$4f,$00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$00,$55,$00,$56,$00,$48,$00,$48,$00,$57,$00,$58,$00,$59,$00,$5a,$00,$5b,$00
	DATA BYTE $5c,$00,$5d,$00,$5e,$00,$5f,$00,$60,$00,$61,$00,$62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6a,$00,$6b,$00
	DATA BYTE $6c,$00,$6d,$00,$6e,$00,$6f,$00,$70,$00,$71,$00,$72,$00,$73,$00,$74,$00,$75,$00,$76,$00,$77,$00,$78,$00,$79,$00,$7a,$00,$7b,$00
	DATA BYTE $7c,$00,$7d,$00,$7e,$00,$7f,$00,$80,$00,$81,$00,$82,$00,$83,$00,$84,$00,$85,$00,$86,$00,$87,$00,$88,$00,$89,$00,$8a,$00,$8b,$00
	DATA BYTE $8c,$00,$8d,$00,$8e,$00,$8f,$00,$90,$00,$91,$00,$92,$00,$93,$00,$94,$00,$95,$00,$96,$00,$97,$00,$98,$00,$99,$00,$9a,$00,$9b,$00
	DATA BYTE $9c,$00,$9d,$00,$9e,$00,$9f,$00,$a0,$00,$a1,$00,$a2,$00,$a3,$00,$a4,$00,$a5,$00,$a6,$00,$a7,$00,$a8,$00,$a9,$00,$aa,$00,$ab,$00
	DATA BYTE $ac,$00,$ad,$00,$ae,$00,$af,$00,$b0,$00,$b1,$00,$b2,$00,$b3,$00,$b4,$00,$b5,$00,$b6,$00,$b7,$00,$b8,$00,$b9,$00,$ba,$00,$bb,$00
	DATA BYTE $bc,$00,$bd,$00,$be,$00,$bf,$00,$c0,$00,$c1,$00,$c2,$00,$c3,$00,$c4,$00,$c5,$00,$c6,$00,$c7,$00,$c8,$00,$c9,$00,$ca,$00,$cb,$00
	DATA BYTE $6d,$00,$cc,$00,$cd,$00,$ce,$00,$cf,$00,$d0,$00,$d1,$00,$d2,$00,$d3,$00,$d4,$00,$d5,$00,$d6,$00,$d7,$00,$d8,$00,$d9,$00,$da,$00
	DATA BYTE $db,$00,$dc,$00,$dd,$00,$de,$00,$df,$00,$e0,$00,$e1,$00,$e2,$00,$e3,$00,$48,$00,$e4,$00,$e5,$00,$e6,$00,$e7,$00,$e8,$00,$e9,$00
	DATA BYTE $ea,$00,$eb,$00,$ec,$00,$ed,$00,$ee,$00,$ef,$00,$f0,$00,$f1,$00,$f2,$00,$48,$00,$f3,$00,$f4,$00,$f5,$00,$f6,$00,$f7,$00,$f8,$00
