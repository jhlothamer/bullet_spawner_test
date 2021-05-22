extends Node2D


var movement_vector := Vector2.RIGHT
var speed := 100.0


func _physics_process(delta):
	var v = movement_vector * speed * delta
	global_position += v


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
