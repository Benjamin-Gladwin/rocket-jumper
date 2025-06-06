extends Node2D

func _process(delta: float):
	if Input.is_action_pressed("pause"):
		$PlayerV2/CanvasLayer/Options.show()
