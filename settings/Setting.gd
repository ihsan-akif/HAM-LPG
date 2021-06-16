extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(MusicController.isMusicPlay)
	print(MusicController.isSoundPlay)
	if (MusicController.isMusicPlay == true):
		get_node("Panel/MusicOnBtn").visible = true
		get_node("Panel/MusicOffBtn").visible = false
	else:
		get_node("Panel/MusicOnBtn").visible = false
		get_node("Panel/MusicOffBtn").visible = true
	
	if (MusicController.isSoundPlay == true):
		get_node("Panel/SoundOnBtn").visible = true
		get_node("Panel/SoundOffBtn").visible = false
	else:
		get_node("Panel/SoundOnBtn").visible = false
		get_node("Panel/SoundOffBtn").visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_MusicOnBtn_pressed():
	MusicController.stop_music_setting()
	get_node("Panel/MusicOnBtn").visible = false
	get_node("Panel/MusicOffBtn").visible = true


func _on_MusicOffBtn_pressed():
	MusicController.play_music_setting()
	get_node("Panel/MusicOffBtn").visible = false
	get_node("Panel/MusicOnBtn").visible = true


func _on_TextureButton_pressed():
	play_sound()
	get_tree().change_scene("res://main_menu/MainMenu.tscn")


func _on_SoundOnBtn_pressed():
	MusicController.stop_sound_setting()
	get_node("Panel/SoundOnBtn").visible = false
	get_node("Panel/SoundOffBtn").visible = true


func _on_SoundOffBtn_pressed():
	MusicController.isSoundPlay = true
	play_sound()
	get_node("Panel/SoundOffBtn").visible = false
	get_node("Panel/SoundOnBtn").visible = true

func play_sound():
	if MusicController.isSoundPlay == true:
		MusicController.play_mouse_click_sound()
