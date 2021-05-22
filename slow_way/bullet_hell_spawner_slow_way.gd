extends Node2D

#var _bullet_class := preload("res://slow_way/bullet_slow_way.tscn")
#this second bullet is closer to the diagram from the article
var _bullet_class := preload("res://slow_way2/bullet_slow_way.tscn")



func spawn_bullet(i_movement: Vector2, speed := 200.0) -> void:
	var bullet = _bullet_class.instance()
	bullet.movement_vector = i_movement
	bullet.speed = speed
	#bullet.global_position  = global_position
	add_child(bullet)
