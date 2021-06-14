extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if $Panel/MusicOnBtn.is_visible_in_tree():
		get_node("Panel/MusicOffBtn").visible = false
		get_node("Panel/MusicOnBtn").visible = true
	elif $Panel/MusicOffBtn.is_visible_in_tree():
		get_node("Panel/MusicOnBtn").visible = false
		get_node("Panel/MusicOffBtn").visible = true


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
	get_tree().change_scene("res://main_menu/MainMenu.tscn")
