ItemPocketNames:
	table_width 2, ItemPocketNames
	dw .Item
	dw .Medicine
	dw .Ball
	dw .Berry
	dw .TM ; impossible
	dw .Key ; impossible
	assert_table_length NUM_POCKETS

.Item:
	db "Item Pocket@"
.Medicine:
	db "Med.Pocket@"
.Ball:
	db "Ball Pocket@"
.Berry:
	db "Berry Pocket@"
.TM:
	db "TM Pocket@"
.Key:
	db "Key Pocket@"
