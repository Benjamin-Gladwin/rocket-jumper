extends Sprite2D

@export var speed = 5
@export var power = 0
@export var bounces = 5
var bullethit = load("res://explosion.tscn")

func _process(d):
	move_local_y(-speed)
	if (abs(position).x > get_viewport().size.x or abs(position).y > get_viewport().size.y):
		reparent(null)
		queue_free()

func _on_bullet_area_entered(area: Area2D) -> void:
	print(area)

func _on_bullet_body_entered(body: Node2D):
	bullethit.instantiate()
	queue_free()
	
