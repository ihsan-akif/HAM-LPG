extends Control

var scene_path_to_load

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MusicController.play_music()
	
	# Keyboard support
	$Menu/UpperButton/ButtonIcon1/Buttons/LearningSectionButton.grab_focus()
	
	# Mouse click function
	for button in $Menu/UpperButton/ButtonIcon1/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $Menu/UpperButton/ButtonIcon2/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $Menu/UpperButton/ButtonIcon3/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $Menu/LowerButton/ButtonIcon4/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $Menu/LowerButton/ButtonIcon5/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])

func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finished() -> void:
	get_tree().change_scene(scene_path_to_load)
