extends StaticBody2D
var life = 3

func _on_areaImpacto_body_entered(body):
	life-=1
	$animador.play("bateu")
	if life == 0:
		queue_free()
