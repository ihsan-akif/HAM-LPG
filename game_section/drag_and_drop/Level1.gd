extends Node2D


onready var dd = false
onready var n = 1
onready var on_move = ""
onready var is_empty = false
onready var status = 0 # 1 - selected button part
var nasiLemakImg = preload("res://learning_section/Images/TraditionalFood/NasiLemak.png")
var mooncakeImg = preload("res://learning_section/Images/TraditionalFood/Mooncake.png")
var rotiCanaiImg = preload("res://learning_section/Images/TraditionalFood/RotiCanai.png")
var blankImg = preload("res://game_section/Images/Blank.png")


func _process(delta):
	if dd == true:
		var pos = .get_local_mouse_position()
		get_node("Sprite" + str(n)).set_position(pos)

func play_sound():
	if MusicController.isSoundPlay == true:
		MusicController.play_mouse_click_sound()

func status():
	# status 0 is when nothing being click 
	if status == 0:
		status = 1
	
	var ipc = .get_node("Button" + str(n)).get_text()
	
	# Check if text is empty inside button
	if len(ipc) >= 1:
		is_empty = false
	else:
		is_empty = true
	
	# status 2 is after we click the button
	if status == 2:	
		if on_move == "1":
			get_node("Button" + str(n)).set_text(str(on_move))
			get_node("Sprite1").set_visible(false)
			print("on_move 1 = " + str(n))
			get_node("Button" + str(n)).set_button_icon(nasiLemakImg)
			if n == 4:
				get_node("Button4").disabled = true
				get_node("Button1").disabled = true
			elif n == 5:
				get_node("Button5").disabled = true
				get_node("Button1").disabled = true
			elif n == 6:
				get_node("Button6").disabled = true
				get_node("Button1").disabled = true
			status = 0
		
		elif on_move == "2":
			get_node("Button" + str(n)).set_text(str(on_move))
			get_node("Sprite2").set_visible(false)
			print("on_move 2 = " + str(n))
			get_node("Button" + str(n)).set_button_icon(rotiCanaiImg)
			if n == 4:
				get_node("Button4").disabled = true
				get_node("Button2").disabled = true
			elif n == 5:
				get_node("Button5").disabled = true
				get_node("Button2").disabled = true
			elif n == 6:
				get_node("Button6").disabled = true
				get_node("Button2").disabled = true
			status = 0
			
		elif on_move == "3":
			get_node("Button" + str(n)).set_text(str(on_move))
			get_node("Sprite3").set_visible(false)
			print("on_move 3 = " + str(n))
			get_node("Button" + str(n)).set_button_icon(mooncakeImg)
			if n == 4:
				get_node("Button4").disabled = true
				get_node("Button3").disabled = true
			elif n == 5:
				get_node("Button5").disabled = true
				get_node("Button3").disabled = true
			elif n == 6:
				get_node("Button6").disabled = true
				get_node("Button3").disabled = true
			status = 0

	# status 1 is when we first click the button
	if status == 1:
		on_move = ipc
		.get_node("Sprite" + str(n)).set_visible(true)
		.get_node("Button" + str(n)).set_text("")
		status = 2
		print("on_move " + on_move)

func _on_Button1_pressed():
	play_sound()
	n = 1
	status()
	if dd == false:
		var pos = get_node("Button1").get_local_mouse_position()
		get_node("Sprite1").set_position(pos)
		get_node("Sprite1").set_visible(true)
		get_node("Button1").set_button_icon(blankImg)
		dd = true
	else:
		get_node("Sprite1").set_visible(false)
		get_node("Button1").set_button_icon(nasiLemakImg)
		dd = false


func _on_Button4_pressed():
	n = 4
	status()


func _on_Button2_pressed():
	play_sound()
	n = 2
	status()
	if dd == false:
		var pos = get_node("Button2").get_local_mouse_position()
		get_node("Sprite2").set_position(pos)
		get_node("Sprite2").set_visible(true)
		get_node("Button2").set_button_icon(blankImg)
		dd = true
	else:
		get_node("Sprite2").set_visible(false)
		get_node("Button2").set_button_icon(rotiCanaiImg)
		dd = false


func _on_Button3_pressed():
	play_sound()
	n = 3
	status()
	if dd == false:
		var pos = get_node("Button3").get_local_mouse_position()
		get_node("Sprite3").set_position(pos)
		get_node("Sprite3").set_visible(true)
		get_node("Button3").set_button_icon(blankImg)
		dd = true
	else:
		get_node("Sprite3").set_visible(false)
		get_node("Button3").set_button_icon(rotiCanaiImg)
		dd = false


func _on_Button5_pressed():
	n = 5
	status()


func _on_Button6_pressed():
	n = 6
	status()


func _on_TextureButton_pressed():
	play_sound()
	global.highScoreDAD = 0
	get_tree().change_scene("res://game_section/GameMenu.tscn")


func _on_ClearBtn_pressed():
	play_sound()
	get_node("Button1").set_text("1")
	get_node("Button2").set_text("2")
	get_node("Button3").set_text("3")
	get_node("Button4").set_text("")
	get_node("Button5").set_text("")
	get_node("Button6").set_text("")
	
	get_node("Button1").set_button_icon(nasiLemakImg)
	get_node("Button2").set_button_icon(rotiCanaiImg)
	get_node("Button3").set_button_icon(mooncakeImg)
	get_node("Button4").set_button_icon(blankImg)
	get_node("Button5").set_button_icon(blankImg)
	get_node("Button6").set_button_icon(blankImg)
	
	get_node("Button1").disabled = false
	get_node("Button2").disabled = false
	get_node("Button3").disabled = false
	get_node("Button4").disabled = false
	get_node("Button5").disabled = false
	get_node("Button6").disabled = false
	
#	global.highScoreDAD = 0


func _on_NextLvlBtn_pressed():
	play_sound()
	if get_node("Button4").get_text() == "2":
		global.highScoreDAD += 1
		print("Score: " + str(global.highScoreDAD))

	if get_node("Button5").get_text() == "3":
		global.highScoreDAD += 1
		print("Score: " + str(global.highScoreDAD))

	if get_node("Button6").get_text() == "1":
		global.highScoreDAD += 1
		print("Score: " + str(global.highScoreDAD))

	print("Score Lvl 1: " + str(int(global.highScoreDAD)))
	
	get_tree().change_scene("res://game_section/drag_and_drop/Level2.tscn")
