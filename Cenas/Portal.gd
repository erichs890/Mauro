extends Area2D


func _on_Portal_body_entered(body):
	if body is Player:
		
		
		if Global.level + 1 > 2:
			get_tree().change_scene("res://Cenas/menu.tscn")
		
		Global.level += 1
		get_tree().change_scene("res://Cenas/Level" + str(Global.level) + ".tscn")
