extends Node


var background_music = load("res://Audio/bensound-buddy.ogg")
var mouse_click_sound = load("res://Audio/ButtonClick.ogg")
var quiz_correct_sound = load("res://Audio/QuizCorrect.ogg")
var quiz_incorrect_sound = load("res://Audio/QuizIncorrect.ogg")
var congratulations_sound = load("res://Audio/Congratulations.ogg")
var isMusicPlay : bool = false
var isSoundPlay : bool = true
onready var music = get_node("Music")
onready var sound = get_node("Sound")

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

func stop_sound_setting():
	$Sound.stop()
	isSoundPlay = false

func play_mouse_click_sound():
	$Sound.stream = mouse_click_sound
	$Sound.play()
	isSoundPlay = true

func play_correct_sound():
	$Sound.stream = quiz_correct_sound
	$Sound.play()
	isSoundPlay = true

func play_incorrect_sound():
	$Sound.stream = quiz_incorrect_sound
	$Sound.play()
	isSoundPlay = true

func play_congratulations_sound():
	$Sound.stream = congratulations_sound
	$Sound.play()
	isSoundPlay = true
