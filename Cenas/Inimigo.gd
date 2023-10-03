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
	queue_free()
func _on_Hurtbox_body_entered(body):
	if body is Player:
		body.die()

