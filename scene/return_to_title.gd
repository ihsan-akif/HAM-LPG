extends Control

func _on_Button_pressed() -> void:
	get_tree().change_scene("res://main_menu/MainMenu.tscn")


func _on_TextureButton_pressed() -> void:
	get_tree().change_scene("res://main_menu/MainMenu.tscn")


func _on_PlayButton_pressed():
	if $Panel/VideoPlayer.paused:
		$Panel/VideoPlayer.paused = false
	else:
		$Panel/VideoPlayer.play()


func _on_PauseButton_pressed() -> void:
	$Panel/VideoPlayer.paused = true


func _on_NextPage1Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage2.tscn")


func _on_NextPage2Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage3.tscn")


func _on_PreviousPage2Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage1.tscn")


func _on_NextPage3Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage4.tscn")


func _on_PreviousPage3Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage2.tscn")


func _on_PreviousPage4Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage3.tscn")
