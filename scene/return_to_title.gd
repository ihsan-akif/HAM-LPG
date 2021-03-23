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
	get_tree().change_scene("res://learning_section/LearningSectionPage2.tscn")


func _on_PreviousPageButton_pressed() -> void:
	get_tree().change_scene("res://learning_section/LearningSectionPage1.tscn")

func _on_Q2NextBtn_pressed() -> void:
	get_tree().change_scene("res://trivia_question/TriviaQuestion3.tscn")

func _on_Q1NextBtn_pressed() -> void:
	get_tree().change_scene("res://trivia_question/TriviaQuestion2.tscn")

func _on_Q3NextBtn_pressed() -> void:
	get_tree().change_scene("res://trivia_question/TriviaQuestion4.tscn")

func _on_Q4NextBtn_pressed() -> void:
	get_tree().change_scene("res://trivia_question/TriviaQuestion5.tscn")

func _on_Q5NextBtn_pressed() -> void:
	get_tree().change_scene("res://trivia_question/Congrats.tscn")
