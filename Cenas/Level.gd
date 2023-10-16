extends Node2D
func _ready():
	Hud.update_hud()
	if not MusicManager.is_playing():
		MusicManager.play()
