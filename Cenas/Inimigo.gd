extends KinematicBody2D
var direcao = 1
var speed = 50
export var gravity = 10

func _physics_process(delta):
	translate(Vector2(speed*direcao*delta, 0))

func _on_timerPatrulha_timeout():
	direcao*=-1
	$animacao.flip_h = not $animacao.flip_h
func _on_areaImpacto_body_entered(body):
	$pisaramEmMim.play()
	$animacao.scale.y -= 0.5 * $animacao.scale.y
	$animacao.position.y *= -3
	$colisao.disabled = true
	set_physics_process(false)
	body.velocity.y = body.jump_force
	$Timer.start()
func _on_Hurtbox_body_entered(body):
	if body is Player:
		body.die()



func _on_Timer_timeout():
	queue_free()
