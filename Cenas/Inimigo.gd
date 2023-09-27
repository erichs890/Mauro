extends KinematicBody2D
var direcao = 1
var speed = 50
func _physics_process(delta):
	translate(Vector2(speed*direcao*delta, 0))

func _on_timerPatrulha_timeout():
	direcao*=-1
 

func _on_areaImpacto_body_entered(body):
	#queue_free()
	$pisaramEmMim.play()
	
func _on_Hurtbox_body_entered(body):
	if body is Player:
		body.die()
