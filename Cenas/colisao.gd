extends CollisionShape2D
signal pegou_moiada


func _on_moiada_body_entered(body):
	if body.name == "Player":
		emit_signal("pegou_moiada")
		queue_free()
