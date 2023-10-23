extends Node


func _ready():
	Hud.visible = false
	MusicManager.stop()
	$theme.play()


func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Global.reset()
		get_tree().change_scene("res://Cenas/Level.tscn")
		Hud.visible = true
		$theme.stop()


func _on_Button_pressed():
	Hud.visible = true
	get_tree().change_scene("res://Cenas/Level.tscn")
	$theme.stop()
	MusicManager.play()
