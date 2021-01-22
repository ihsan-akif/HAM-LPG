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


func _on_NextPageButton_pressed() -> void:
	get_tree().change_scene("res://learning_section/LearningSection2.tscn")


func _on_PreviousPageButton_pressed() -> void:
	get_tree().change_scene("res://learning_section/LearningSection.tscn")


func _on_TextureButton6_pressed() -> void:
	get_tree().change_scene("res://trivia_question/TriviaQuestion2.tscn")
