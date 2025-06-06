extends Control

var Fullscreen = false

func _ready() -> void:
	$".".hide()

func _on_back_pressed() -> void:
	$".".hide()

func _on_fullscreen_toggle_button_up():
	pass

func _process(delta: float):
	if Input.is_action_pressed("pause"):
		$"../Options".show()

func _on_fullscreen_toggle_button_down():
	pass


func _on_fullscreen_toggle_pressed() -> void:
	
	if Fullscreen:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		Fullscreen = false
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		Fullscreen = true

func ResolutionSelected(index: int) -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_hidden() -> void:
	if Input.is_action_pressed("pause"):
		$"../Options".hide()
