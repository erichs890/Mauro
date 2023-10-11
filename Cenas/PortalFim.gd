extends Area2D



func _on_PortalFim_body_entered(body):
	Global.level += 1
	get_tree().change_scene("res://Cenas/Level" + str(Global.level) + ".tscn")
