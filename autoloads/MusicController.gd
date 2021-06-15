extends Node


var background_music = load("res://Audio/bensound-buddy.ogg")
var isMusicPlay : bool = false
var isSoundPlay : bool = false
onready var music = get_node("Music")

func _ready():
	pass

func play_music():
	if $Music.stream == background_music:
		return
	
	$Music.stream = background_music
	$Music.play()
	$Music.volume_db = -12
	isMusicPlay = true

func pause_music():
	$Music.stream_paused = true

func resume_music():
	$Music.stream_paused = false

func stop_music_setting():
	$Music.stop()
	isMusicPlay = false

func play_music_setting():
	$Music.stream = background_music
	$Music.play()
	$Music.volume_db = -12
	isMusicPlay = true
