extends Area2D

func _on_moiada_body_entered(body):
	if body is Player:
		$MoiadaSom.play()
		Global.score += 1
		get_node("/root/Level/Control").update_hud()
		position.y = 8329
		yield($MoiadaSom, "finished")
		queue_free()
