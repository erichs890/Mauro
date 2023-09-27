extends Area2D

func _on_Buraco_body_entered(body):
	if body is Player:
		emit_signal("morreu")
		body.die()
