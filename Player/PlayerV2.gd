extends CharacterBody2D
#Make Line above apply to your desired node

#DON'T FORGET TO ADD THE INDENTATION!
var crosshair = load("res://WhiteCrosshair.png")
const SPEED = 400
const GRAVITY = 500
const Jumpheight = 300

func _physics_process(delta: float):
	velocity.x = 0
	_draw()
	if Input.is_action_pressed("walk_right"):
		velocity.x += SPEED
		$Player .play("walk")
	if Input.is_action_pressed("walk_left"):
		velocity.x += -SPEED
		$Player .play("walk")
	if Input.is_action_pressed("action_jump") and is_on_floor():
		velocity.y -= Jumpheight
	if Input.is_action_pressed("input_quit"):
		get_tree().quit()
	if Input.is_action_pressed("crosshair"):
		Input.set_custom_mouse_cursor(crosshair, 0, Vector2(25,25))
	if is_on_floor():
		$Player .play("idle")
		
	velocity.y += GRAVITY * delta
	

	move_and_slide()


func _ready() -> void:
	pass

var gunz = [
	load("res://Assets/PixelRocketLauncher.png"),
	]

var count = 0
#Input
#func _physics_process(delta):
	#velocity.x = 0


	

	
func _draw():
	var mouse = get_viewport().get_mouse_position()
	var pos = position + Vector2(0,-25)
	$RocketLauncher.rotation = -atan2(pos.x-mouse.x,pos.y-mouse.y) - deg_to_rad(90)
	
#func _holycraplois(mleh):
#	health = mleh
	
