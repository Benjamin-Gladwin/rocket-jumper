extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_action_pressed("pause"):
		$"../Options".show()


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_start_pressed():
	get_tree().change_scene_to_file("res://level_0.tscn")


func _on_options_pressed() -> void:
	$"../Options".show()
