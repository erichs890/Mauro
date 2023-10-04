extends Area2D

func _on_moiada_body_entered(body):
	if body is Player:
		Global.score += 1
		get_node("/root/Level/Control").update_score()
		queue_free()
	
