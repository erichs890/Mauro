extends KinematicBody2D
class_name Player
export var gravity = 15
export var walk_speed = 150
export var jump_force = - 450
export var velocity = Vector2()
export var can_double_jump = true
export var jump_count = 2
export var coins = 0
signal morreu


func _physics_process(delta):
	var mov_horizontal = Input. get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = mov_horizontal * walk_speed
	velocity.y += gravity
	if is_on_floor():
		if abs(velocity.x)>0:
			$animacao.play("walk")
		else:
			$animacao.play("idol")
	else:
		$animacao.play("jump")
	if velocity.x>0:
		$animacao.flip_h = false
	elif velocity.x<0:
		$animacao.flip_h=true
	if is_on_ceiling():
		velocity.y = 0
		
	if is_on_floor():
		jump_count = 2
#		velocity.y = 0


	if Input.is_action_just_pressed("jump") and jump_count > 0:
		jump_count -= 1
		velocity.y = jump_force
		$audioPaulo.play()
	move_and_slide(velocity, Vector2.UP)

func die():
	$AnimationPlayer.play("MORREU")
	$audioMorre.play()
	set_physics_process(false)
	$Timer.start()
func _on_notificador_screen_exited():
	emit_signal("morreu")


func _on_Timer_timeout():
	get_tree().reload_current_scene()
