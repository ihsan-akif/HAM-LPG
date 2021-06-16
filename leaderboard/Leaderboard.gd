extends Control


## Called when the node enters the scene tree for the first time.
#func _ready():
#

func play_sound():
	if MusicController.isSoundPlay == true:
		MusicController.play_mouse_click_sound()

func _on_BackBtn_pressed():
	play_sound()
	get_tree().change_scene("res://main_menu/MainMenu.tscn")


func _on_TQButton_pressed():
	play_sound()
	get_node("Panel/PickLeaderboard").set_visible(false)
	get_node("Panel/NameTxt").set_visible(true)
	get_node("Panel/ScoreTxt").set_visible(true)
	get_node("Panel/HighScore").set_visible(true)
	$Panel/HighScore/Name1.text = str(global.arrayTQ[7].name)
	$Panel/HighScore/Score1.text = str(global.arrayTQ[7].score)
	$Panel/HighScore/Name2.text = str(global.arrayTQ[6].name)
	$Panel/HighScore/Score2.text = str(global.arrayTQ[6].score)
	$Panel/HighScore/Name3.text = str(global.arrayTQ[5].name)
	$Panel/HighScore/Score3.text = str(global.arrayTQ[5].score)
	$Panel/HighScore/Name4.text = str(global.arrayTQ[4].name)
	$Panel/HighScore/Score4.text = str(global.arrayTQ[4].score)
	$Panel/HighScore/Name5.text = str(global.arrayTQ[3].name)
	$Panel/HighScore/Score5.text = str(global.arrayTQ[3].score)
	$Panel/HighScore/Name6.text = str(global.arrayTQ[2].name)
	$Panel/HighScore/Score6.text = str(global.arrayTQ[2].score)
	$Panel/HighScore/Name7.text = str(global.arrayTQ[1].name)
	$Panel/HighScore/Score7.text = str(global.arrayTQ[1].score)


func _on_DragAndDropButton_pressed():
	play_sound()
	get_node("Panel/PickLeaderboard").set_visible(false)
	get_node("Panel/NameTxt").set_visible(true)
	get_node("Panel/ScoreTxt").set_visible(true)
	get_node("Panel/HighScore").set_visible(true)
	$Panel/HighScore/Name1.text = str(global.arrayDAD[7].name)
	$Panel/HighScore/Score1.text = str(global.arrayDAD[7].score)
	$Panel/HighScore/Name2.text = str(global.arrayDAD[6].name)
	$Panel/HighScore/Score2.text = str(global.arrayDAD[6].score)
	$Panel/HighScore/Name3.text = str(global.arrayDAD[5].name)
	$Panel/HighScore/Score3.text = str(global.arrayDAD[5].score)
	$Panel/HighScore/Name4.text = str(global.arrayDAD[4].name)
	$Panel/HighScore/Score4.text = str(global.arrayDAD[4].score)
	$Panel/HighScore/Name5.text = str(global.arrayDAD[3].name)
	$Panel/HighScore/Score5.text = str(global.arrayDAD[3].score)
	$Panel/HighScore/Name6.text = str(global.arrayDAD[2].name)
	$Panel/HighScore/Score6.text = str(global.arrayDAD[2].score)
	$Panel/HighScore/Name7.text = str(global.arrayDAD[1].name)
	$Panel/HighScore/Score7.text = str(global.arrayDAD[1].score)


func _on_CrosswordButton_pressed():
	play_sound()
	get_node("Panel/PickLeaderboard").set_visible(false)
	get_node("Panel/NameTxt").set_visible(true)
	get_node("Panel/ScoreTxt").set_visible(true)
	get_node("Panel/HighScore").set_visible(true)
	$Panel/HighScore/Name1.text = str(global.arrayCW[7].name)
	$Panel/HighScore/Score1.text = str(global.arrayCW[7].score)
	$Panel/HighScore/Name2.text = str(global.arrayCW[6].name)
	$Panel/HighScore/Score2.text = str(global.arrayCW[6].score)
	$Panel/HighScore/Name3.text = str(global.arrayCW[5].name)
	$Panel/HighScore/Score3.text = str(global.arrayCW[5].score)
	$Panel/HighScore/Name4.text = str(global.arrayCW[4].name)
	$Panel/HighScore/Score4.text = str(global.arrayCW[4].score)
	$Panel/HighScore/Name5.text = str(global.arrayCW[3].name)
	$Panel/HighScore/Score5.text = str(global.arrayCW[3].score)
	$Panel/HighScore/Name6.text = str(global.arrayCW[2].name)
	$Panel/HighScore/Score6.text = str(global.arrayCW[2].score)
	$Panel/HighScore/Name7.text = str(global.arrayCW[1].name)
	$Panel/HighScore/Score7.text = str(global.arrayCW[1].score)
