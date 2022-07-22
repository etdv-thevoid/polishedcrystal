	db  70,  70, 115,  60, 130,  90 ; 535 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 30 ; catch rate
	db 211 ; base exp
	db NO_ITEM, METAL_COAT ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/magnezone/front.dimensions"
if DEF(FAITHFUL)
	abilities_for MAGNEZONE, STURDY, MAGNET_PULL, ANALYTIC
else
	abilities_for MAGNEZONE, LEVITATE, MAGNET_PULL, ANALYTIC
endc
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SWIFT, SUBSTITUTE, FACADE, REST, WILD_CHARGE, EXPLOSION, GIGA_IMPACT, FLASH, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL, DOUBLE_EDGE, ENDURE, IRON_HEAD, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
