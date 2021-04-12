extends Control



func _on_TextureButton_pressed():
	get_tree().change_scene("res://main_menu/MainMenu.tscn")


func _on_DragAndDropBtn_pressed():
	get_tree().change_scene("res://game_section/drag_and_drop/Level1.tscn")
