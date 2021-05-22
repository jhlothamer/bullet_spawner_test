extends Control


func _on_BulletHellWithNodesBtn_pressed():
	Globals.set("WhichTest", "With Nodes")
	get_tree().change_scene("res://slow_way/game_slow_way.tscn")


func _on_BulletHellWithoutNodesBtn_pressed():
	Globals.set("WhichTest", "Without Nodes")
	get_tree().change_scene("res://Game.tscn")
