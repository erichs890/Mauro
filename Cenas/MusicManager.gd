extends Node

func play():
	$Tema.play()


func stop():
	$Tema.playing = false

func is_playing():
	return $Tema.playing
