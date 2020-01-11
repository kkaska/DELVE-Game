extends Area2D

func _on_Exit_body_entered(body):
	get_tree().change_scene("res://Scenes/Game.tscn")
