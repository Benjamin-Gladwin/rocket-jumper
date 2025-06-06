extends OptionButton

func _ready():
	add_items()

func add_items():
	$".".add_item("320 x 240")
	$".".add_item("1152 x 648")
	$".".add_item("1280 x 720")
	$".".add_item("1920 x 1080")
	$".".add_item("2960 x 1440")
	$".".add_item("3840 x 2160")
	$".".add_item("7680 x 4320")

func _on_item_selected(index):
	var current_selected = index
	if current_selected == 0:
		DisplayServer.window_set_size(Vector2(320,240))
	if current_selected == 1:
		DisplayServer.window_set_size(Vector2(1152,648))
	if current_selected == 2:
		DisplayServer.window_set_size(Vector2(1280,720))
	if current_selected == 3:
		DisplayServer.window_set_size(Vector2(1920,1080))
	if current_selected == 4:
		DisplayServer.window_set_size(Vector2(2960,1440))
	if current_selected == 5:
		DisplayServer.window_set_size(Vector2(3840,2160))
	if current_selected == 6:
		DisplayServer.window_set_size(Vector2(7680,4320))
