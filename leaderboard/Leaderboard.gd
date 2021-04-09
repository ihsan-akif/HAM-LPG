extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/TQHighScore/Name1.text = str(global.arrayTQ[0].name)
	$Panel/TQHighScore/Score1.text = str(global.arrayTQ[0].score)
	#$Panel/TQHighScore/Name2.text = str(global.arrayTQ[1].name)
	#$Panel/TQHighScore/Score2.text = str(global.arrayTQ[1].score)


func _on_BackBtn_pressed():
	get_tree().change_scene("res://main_menu/MainMenu.tscn")
