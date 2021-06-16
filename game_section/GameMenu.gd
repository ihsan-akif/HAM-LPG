extends Control

func play_sound():
	if MusicController.isSoundPlay == true:
		MusicController.play_mouse_click_sound()

func _on_TextureButton_pressed():
	play_sound()
	get_tree().change_scene("res://main_menu/MainMenu.tscn")


func _on_DragAndDropBtn_pressed():
	play_sound()
	get_tree().change_scene("res://game_section/drag_and_drop/Level1.tscn")


func _on_CrosswordBtn_pressed():
	play_sound()
	get_tree().change_scene("res://game_section/crossword/Level1.tscn")
