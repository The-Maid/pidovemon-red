	db DEX_PIDOVE ; pokedex id

	db  50,  55,  50,  43,  35
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 53 ; base exp

	INCBIN "gfx/pokemon/front/pidove.pic", 0, 1 ; sprite dimensions
	dw PidovePicFront, PidovePicBack

	db GROWL, GUST, HYPNOSIS, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_TEAM,  SKY_ATTACK,   RAZOR_WIND,   SWIFT,        SUBSTITUTE,   \
	     REST,         TOXIC,        WORK_UP,      RETURN,       FLY
	; end

	db BANK(PidovePicFront)
	assert BANK(PidovePicFront) == BANK(PidovePicBack)
