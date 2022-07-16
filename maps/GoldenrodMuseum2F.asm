GoldenrodMuseum2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13,  7, GOLDENROD_MUSEUM_1F, 3

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, LugiaPaintingScript
	bg_event  2,  0, BGEVENT_READ, LugiaPaintingScript
	bg_event  4,  0, BGEVENT_READ, BellTowerPaintingScript
	bg_event  5,  0, BGEVENT_READ, BellTowerPaintingScript
	bg_event  7,  0, BGEVENT_READ, HoOhPaintingScript
	bg_event  8,  0, BGEVENT_READ, HoOhPaintingScript
	bg_event  0,  4, BGEVENT_READ, KabutoPuzzleScript
	bg_event  0,  5, BGEVENT_READ, KabutoPuzzleScript
	bg_event  3,  4, BGEVENT_READ, OmanytePuzzleScript
	bg_event  3,  5, BGEVENT_READ, OmanytePuzzleScript
	bg_event  0,  6, BGEVENT_READ, AerodactylPuzzleScript
	bg_event  0,  7, BGEVENT_READ, AerodactylPuzzleScript
	bg_event  3,  6, BGEVENT_READ, HoOhPuzzleScript
	bg_event  3,  7, BGEVENT_READ, HoOhPuzzleScript

	def_object_events
	object_event  4,  2, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FSightseerMScript, -1
	pokemon_event 5,  2, SMEARGLE, SPRITEMOVEDATA_POKEMON, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, GoldenrodMuseum2FSmeargleText, -1
	object_event  1,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodMuseum2FScientistText, -1
	object_event  6,  3, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_COMMAND, jumptext, GoldenrodMuseum2FBigPearlText, -1
	object_event  6,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FRocketScoutScript, EVENT_GOLDENROD_CITY_ROCKET_SCOUT

LugiaPaintingScript:
	checkevent EVENT_FOUGHT_LUGIA
	iffalse_jumptext EmptyDisplayText
	refreshscreen
	paintingpic LUGIA_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "  The Leviathan"
	line "     Awakens"
	done

HoOhPaintingScript:
	checkevent EVENT_FOUGHT_HO_OH
	iffalse_jumptext EmptyDisplayText
	refreshscreen
	paintingpic HO_OH_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "   The Phoenix"
	line "    Ascending"
	done

BellTowerPaintingScript:
	checkevent EVENT_FOUGHT_SUICUNE
	iffalse_jumptext EmptyDisplayText
	refreshscreen
	paintingpic BELL_TOWER_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "    Friendship"
	line "     and Hope"
	done

KabutoPuzzleScript:
	checkevent EVENT_SOLVED_KABUTO_PUZZLE
	iffalse_jumptext EmptyDisplayText
	refreshscreen
	paintingpic KABUTO_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Kabuto panel!"
	done

OmanytePuzzleScript:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iffalse_jumptext EmptyDisplayText
	refreshscreen
	paintingpic OMANYTE_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Omanyte panel!"
	done

AerodactylPuzzleScript:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse_jumptext EmptyDisplayText
	refreshscreen
	paintingpic AERODACTYL_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Aerodactyl panel!"
	done

HoOhPuzzleScript:
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iffalse_jumptext EmptyDisplayText
	refreshscreen
	paintingpic HO_OH_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Ho-Oh panel!"
	done

EmptyDisplayText:
	text "The display is"
	line "still empty…"
	done

GoldenrodMuseum2FScientistText:
	text "These artifacts"
	line "are fascinating!"
	
	para "Its a shame they're"
	line "just replicas."

	para "I'd love to study"
	line "the real thing"
	cont "up close."
	done

GoldenrodMuseum2FBigPearlText:
	text "It's a huge pearl"
	line "fished up from"
	cont "Goldenrod Harbor."
	done

GoldenrodMuseum2FRocketScoutScript:
	opentext
	writetext GoldenrodMuseum2FRocketScoutText1
	promptbutton
	faceplayer
	writetext GoldenrodMuseum2FRocketScoutText2
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

GoldenrodMuseum2FRocketScoutText1:
	text "Hmm… This would"
	line "fetch quite a"
	cont "heavy price."

	para "Now… how do I get"
	line "it out of here"

	para "without getting"
	line "caught?"
	done

GoldenrodMuseum2FRocketScoutText2:
	text "Don't you know it's"
	line "rude to stare?"
	cont "Beat it kid!"
	done

GoldenrodMuseum2FSightseerMScript:
	checkevent EVENT_FOUGHT_SUICUNE
	iffalse_jumptextfaceplayer GoldenrodMuseum2FSightseerMNoPaintingText
	jumpthistextfaceplayer

	text "Wow! This painting"
	line "is beautiful!"

	para "One day, I hope my"
	line "art is hung in a"
	
	para "museum for all to"
	line "see too."
	done

GoldenrodMuseum2FSightseerMNoPaintingText:
	text "Aww…! Smeargle and"
	line "I came from Ecru-"

	para "teak City because"
	line "we heard an art"

	para "exhibit would be"
	line "here for the grand"
	cont "opening."

	para "But it seems we"
	line "heard wrong…"

	para "All the displays"
	line "are empty!"
	done

GoldenrodMuseum2FSmeargleText:
	text "Smeargle: Smeer!"
	done
