if DEF(FAITHFUL)
	db  55,  35,  50,  85,  55, 110 ; 390 BST
	;   hp  atk  def  spd  sat  sdf
else
	db  55,  95,  50,  85,  35, 110 ; 430 BST
	;   hp  atk  def  spd  sat  sdf
endc

if DEF(FAITHFUL)
	db BUG, FLYING ; type
else
	db BUG, FIGHTING ; type
endc
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ledian/front.dimensions"
if DEF(FAITHFUL)
	abilities_for LEDIAN, SWARM, EARLY_BIRD, IRON_FIST
else
	abilities_for LEDIAN, LEVITATE, EARLY_BIRD, IRON_FIST
endc
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROOST, FOCUS_BLAST, DRAIN_PUNCH, ACROBATICS, GIGA_IMPACT, U_TURN, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, KNOCK_OFF, ROLLOUT, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
