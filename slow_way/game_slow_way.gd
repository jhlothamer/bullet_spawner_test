extends Node2D

onready var _timer: Timer = $Timer
onready var bullet_spawner_area := $BulletHellpSpawnerSlowWay

var original_vector = Vector2(-1, 0)
var rotation_difference = (2.0 * PI) / 20.0


func _on_StartTimer_timeout():
	_timer.start()


func _on_Timer_timeout():
	for i in range(0, 20):
		var movement = original_vector.rotated(rotation_difference * i)
		bullet_spawner_area.spawn_bullet(movement)
	original_vector = original_vector.rotated(PI/32.0)
