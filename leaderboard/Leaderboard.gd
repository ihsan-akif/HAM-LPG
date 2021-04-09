extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/TQHighScore/Name1.text = str(global.arrayTQ[7].name)
	$Panel/TQHighScore/Score1.text = str(global.arrayTQ[7].score)
	$Panel/TQHighScore/Name2.text = str(global.arrayTQ[6].name)
	$Panel/TQHighScore/Score2.text = str(global.arrayTQ[6].score)
	$Panel/TQHighScore/Name3.text = str(global.arrayTQ[5].name)
	$Panel/TQHighScore/Score3.text = str(global.arrayTQ[5].score)
	$Panel/TQHighScore/Name4.text = str(global.arrayTQ[4].name)
	$Panel/TQHighScore/Score4.text = str(global.arrayTQ[4].score)
	$Panel/TQHighScore/Name5.text = str(global.arrayTQ[3].name)
	$Panel/TQHighScore/Score5.text = str(global.arrayTQ[3].score)
	$Panel/TQHighScore/Name6.text = str(global.arrayTQ[2].name)
	$Panel/TQHighScore/Score6.text = str(global.arrayTQ[2].score)
	$Panel/TQHighScore/Name7.text = str(global.arrayTQ[1].name)
	$Panel/TQHighScore/Score7.text = str(global.arrayTQ[1].score)


func _on_BackBtn_pressed():
	get_tree().change_scene("res://main_menu/MainMenu.tscn")
