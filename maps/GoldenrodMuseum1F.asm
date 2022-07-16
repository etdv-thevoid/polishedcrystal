GoldenrodMuseum1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  7, GOLDENROD_CITY, 18
	warp_event  7,  7, GOLDENROD_CITY, 18
	warp_event 13,  7, GOLDENROD_MUSEUM_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_SLOWPOKETAIL, SPRITEMOVEDATA_ARCH_TREE_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1
	object_event  2,  2, SPRITE_SLOWPOKETAIL, SPRITEMOVEDATA_ARCH_TREE_UP, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1
	object_event  3,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodMuseumReceptionistText, -1
	object_event  4,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodMuseumOfficerText, -1
	

GoldenrodMuseumReceptionistText:
	text "Welcome to the"
	line "Goldenrod City"
	cont "Museum!"

	para "In celebration of"
	line "our grand opening,"
	
	para "admission is free"
	line "of charge."

	para "Please, feel free"
	line "to look around."

	para "And we hope you"
	line "enjoy your visit."
	done

GoldenrodMuseumOfficerText:
	text "I'm keeping my eye"
	line "on you kid!"

	para "Hahaha! Just"
	line "messing with ya!"

	para "I'm keeping an eye"
	line "on everyone."
	done

