if DEF(FAITHFUL)
	db  40,  20,  30,  55,  40,  80 ; 265 BST
	;   hp  atk  def  spd  sat  sdf
else
	db  40,  40,  30,  55,  20,  80 ; 265 BST
	;   hp  atk  def  spd  sat  sdf
endc

if DEF(FAITHFUL)
	db BUG, FLYING ; type
else
	db BUG, FIGHTING ; type
endc
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ledyba/front.dimensions"
if DEF(FAITHFUL)
	abilities_for LEDYBA, SWARM, EARLY_BIRD, RATTLED
else
	abilities_for LEDYBA, LEVITATE, EARLY_BIRD, IRON_FIST
endc
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROOST, DRAIN_PUNCH, ACROBATICS, U_TURN, FLASH, SWORDS_DANCE, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, KNOCK_OFF, ROLLOUT, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
