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


func _on_PreviousPage2Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage1.tscn")


func _on_NextPage2Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage3.tscn")


func _on_PreviousPage3Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage2.tscn")


func _on_NextPage3Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage4.tscn")


func _on_PreviousPage4Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage3.tscn")


func _on_NextPage4Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage5.tscn")


func _on_PreviousPage5Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage4.tscn")


func _on_NextPage5Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage6.tscn")


func _on_PreviousPage6Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage5.tscn")


func _on_NextPage6Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage7.tscn")


func _on_PreviousPage7Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage6.tscn")


func _on_NextPage7Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage8.tscn")


func _on_PreviousPage8Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage7.tscn")


func _on_NextPage8Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage9.tscn")


func _on_PreviousPage9Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage8.tscn")


func _on_NextPage9Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage10.tscn")


func _on_PreviousPage10Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage9.tscn")


func _on_NextPage10Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage11.tscn")


func _on_PreviousPage11Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage10.tscn")


func _on_NextPage11Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage12.tscn")


func _on_PreviousPage12Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage11.tscn")


func _on_NextPage12Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage13.tscn")


func _on_PreviousPage13Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage12.tscn")


func _on_NextPage13Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage14.tscn")


func _on_PreviousPage14Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage13.tscn")


func _on_NextPage14Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage15.tscn")


func _on_PreviousPage15Button_pressed():
	get_tree().change_scene("res://learning_section/LearningSectionPage14.tscn")


func _on_BackToMenuBtn_pressed():
	get_tree().change_scene("res://main_menu/MainMenu.tscn")
