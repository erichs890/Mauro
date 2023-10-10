extends CanvasLayer

func _ready():
	update_hud()

func update_hud():
	$Moiada.text = str(Global.score)
	$vidas.text = str(Global.vidas)
