extends Node


var background_music = load("res://Audio/bensound-buddy.ogg")

func _ready():
	pass

func play_music():
	if $Music.stream == background_music:
		return
	
	$Music.stream = background_music
	$Music.play()
	$Music.volume_db = -12

func pause_music():
	$Music.stream_paused = true

func resume_music():
	$Music.stream_paused = false

func stop_music_setting():
	$Music.stop()

func play_music_setting():
	$Music.stream = background_music
	$Music.play()
	$Music.volume_db = -12
