extends Area2D




func _on_portal_body_entered(body):
	if body is Player:
		get_tree().change_scene("res://Cenas/Level.tscn")
