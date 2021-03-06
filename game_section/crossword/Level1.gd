extends Control


export(int) var LIMIT = 1
var current_text = ''
var cursor_line = 0
var cursor_column = 0
var textEditName

func play_sound():
	if MusicController.isSoundPlay == true:
		MusicController.play_mouse_click_sound()

func limitWord():
	var new_text : String = textEditName.text
	if new_text.length() > LIMIT:
		textEditName.text = current_text
		# when replacing the text, the cursor will get moved to the beginning of the
		# text, so move it back to where it was 
		textEditName.cursor_set_line(cursor_line)
		textEditName.cursor_set_column(cursor_column)

	current_text = textEditName.text
	# save current position of cursor for when we have reached the limit
	cursor_line = textEditName.cursor_get_line()
	cursor_column = textEditName.cursor_get_column()


func _on_IbanI_text_changed():
	play_sound()
	textEditName = $Panel/IbanI
	limitWord()


func _on_IbanB_text_changed():
	play_sound()
	textEditName = $Panel/IbanB
	limitWord()


func _on_IbanA_text_changed():
	play_sound()
	textEditName = $Panel/IbanA
	limitWord()


func _on_IbanN_text_changed():
	play_sound()
	textEditName = $Panel/IbanN
	limitWord()


func _on_IpokP_text_changed():
	play_sound()
	textEditName = $Panel/IpokP
	limitWord()


func _on_IpokO_text_changed():
	play_sound()
	textEditName = $Panel/IpokO
	limitWord()


func _on_IpokK_text_changed():
	play_sound()
	textEditName = $Panel/IpokK
	limitWord()


func _on_CinaC_text_changed():
	play_sound()
	textEditName = $Panel/CinaC
	limitWord()


func _on_CinaI_text_changed():
	play_sound()
	textEditName = $Panel/CinaI
	limitWord()


func _on_CinaA_text_changed():
	play_sound()
	textEditName = $Panel/CinaA
	limitWord()


func _on_CeongsamE_text_changed():
	play_sound()
	textEditName = $Panel/CeongsamE
	limitWord()


func _on_CeongsamO_text_changed():
	play_sound()
	textEditName = $Panel/CeongsamO
	limitWord()


func _on_CeongsamN_text_changed():
	play_sound()
	textEditName = $Panel/CeongsamN
	limitWord()


func _on_CeongsamG_text_changed():
	play_sound()
	textEditName = $Panel/CeongsamG
	limitWord()


func _on_CeongsamS_text_changed():
	play_sound()
	textEditName = $Panel/CeongsamS
	limitWord()


func _on_CeongsamA_text_changed():
	play_sound()
	textEditName = $Panel/CeongsamA
	limitWord()


func _on_CeongsamM_text_changed():
	play_sound()
	textEditName = $Panel/CeongsamM
	limitWord()


func _on_SariA_text_changed():
	play_sound()
	textEditName = $Panel/SariA
	limitWord()


func _on_SariR_text_changed():
	play_sound()
	textEditName = $Panel/SariR
	limitWord()


func _on_SariI_text_changed():
	play_sound()
	textEditName = $Panel/SariI
	limitWord()


func _on_TangyuanT_text_changed():
	play_sound()
	textEditName = $Panel/TangyuanT
	limitWord()


func _on_TangyuanN_text_changed():
	play_sound()
	textEditName = $Panel/TangyuanN
	limitWord()


func _on_TangyuanG_text_changed():
	play_sound()
	textEditName = $Panel/TangyuanG
	limitWord()


func _on_TangyuanY_text_changed():
	play_sound()
	textEditName = $Panel/TangyuanY
	limitWord()


func _on_TangyuanU_text_changed():
	play_sound()
	textEditName = $Panel/TangyuanU
	limitWord()


func _on_TangyuanA_text_changed():
	play_sound()
	textEditName = $Panel/TangyuanA
	limitWord()


func _on_TangyuanN2_text_changed():
	play_sound()
	textEditName = $Panel/TangyuanN2
	limitWord()


func _on_QuestionBtn_pressed():
	play_sound()
	get_node("Panel2").show()


func _on_Button_pressed():
	play_sound()
	get_node("Panel2").hide()


func _on_BackBtn_pressed():
	play_sound()
	global.highScoreCW = 0
	get_tree().change_scene("res://game_section/GameMenu.tscn")


func _on_ClearBtn_pressed():
	play_sound()
	get_node("Panel/IbanI").set_text("")
	get_node("Panel/IbanB").set_text("")
	get_node("Panel/IbanA").set_text("")
	get_node("Panel/IbanN").set_text("")
	get_node("Panel/IpokP").set_text("")
	get_node("Panel/IpokO").set_text("")
	get_node("Panel/IpokK").set_text("")
	get_node("Panel/CinaC").set_text("")
	get_node("Panel/CinaI").set_text("")
	get_node("Panel/CinaA").set_text("")
	get_node("Panel/CeongsamE").set_text("")
	get_node("Panel/CeongsamO").set_text("")
	get_node("Panel/CeongsamN").set_text("")
	get_node("Panel/CeongsamG").set_text("")
	get_node("Panel/CeongsamS").set_text("")
	get_node("Panel/CeongsamA").set_text("")
	get_node("Panel/CeongsamM").set_text("")
	get_node("Panel/SariA").set_text("")
	get_node("Panel/SariR").set_text("")
	get_node("Panel/SariI").set_text("")
	get_node("Panel/TangyuanT").set_text("")
	get_node("Panel/TangyuanN").set_text("")
	get_node("Panel/TangyuanG").set_text("")
	get_node("Panel/TangyuanY").set_text("")
	get_node("Panel/TangyuanU").set_text("")
	get_node("Panel/TangyuanA").set_text("")
	get_node("Panel/TangyuanN2").set_text("")


func _on_SubmitBtn_pressed():
	play_sound()
	if get_node("Panel/IbanI").get_text() == "i" or get_node("Panel/IbanI").get_text() == "I":
		global.highScoreCW += 1

	if get_node("Panel/IbanB").get_text() == "b" or get_node("Panel/IbanB").get_text() == "B":
		global.highScoreCW += 1
	
	if get_node("Panel/IbanA").get_text() == "a" or get_node("Panel/IbanA").get_text() == "A":
		global.highScoreCW += 1
	
	if get_node("Panel/IbanN").get_text() == "n" or get_node("Panel/IbanN").get_text() == "N":
		global.highScoreCW += 1
	
	if get_node("Panel/IpokP").get_text() == "p" or get_node("Panel/IpokP").get_text() == "P":
		global.highScoreCW += 1
	
	if get_node("Panel/IpokO").get_text() == "o" or get_node("Panel/IpokO").get_text() == "O":
		global.highScoreCW += 1
	
	if get_node("Panel/IpokK").get_text() == "k" or get_node("Panel/IpokK").get_text() == "K":
		global.highScoreCW += 1
	
	if get_node("Panel/CinaC").get_text() == "c" or get_node("Panel/CinaC").get_text() == "C":
		global.highScoreCW += 1
	
	if get_node("Panel/CinaI").get_text() == "i" or get_node("Panel/CinaI").get_text() == "I":
		global.highScoreCW += 1
	
	if get_node("Panel/CinaA").get_text() == "a" or get_node("Panel/CinaA").get_text() == "A":
		global.highScoreCW += 1
	
	if get_node("Panel/CeongsamE").get_text() == "e" or get_node("Panel/CeongsamE").get_text() == "E":
		global.highScoreCW += 1
	
	if get_node("Panel/CeongsamO").get_text() == "o" or get_node("Panel/CeongsamO").get_text() == "O":
		global.highScoreCW += 1
	
	if get_node("Panel/CeongsamN").get_text() == "n" or get_node("Panel/CeongsamN").get_text() == "N":
		global.highScoreCW += 1
	
	if get_node("Panel/CeongsamG").get_text() == "g" or get_node("Panel/CeongsamG").get_text() == "G":
		global.highScoreCW += 1
	
	if get_node("Panel/CeongsamS").get_text() == "s" or get_node("Panel/CeongsamS").get_text() == "S":
		global.highScoreCW += 1
	
	if get_node("Panel/CeongsamA").get_text() == "a" or get_node("Panel/CeongsamA").get_text() == "A":
		global.highScoreCW += 1
	
	if get_node("Panel/CeongsamM").get_text() == "m" or get_node("Panel/CeongsamM").get_text() == "M":
		global.highScoreCW += 1
	
	if get_node("Panel/SariA").get_text() == "a" or get_node("Panel/SariA").get_text() == "A":
		global.highScoreCW += 1
	
	if get_node("Panel/SariR").get_text() == "r" or get_node("Panel/SariR").get_text() == "R":
		global.highScoreCW += 1
	
	if get_node("Panel/SariI").get_text() == "i" or get_node("Panel/SariI").get_text() == "I":
		global.highScoreCW += 1
	
	if get_node("Panel/TangyuanT").get_text() == "t" or get_node("Panel/TangyuanT").get_text() == "T":
		global.highScoreCW += 1
	
	if get_node("Panel/TangyuanN").get_text() == "n" or get_node("Panel/TangyuanN").get_text() == "N":
		global.highScoreCW += 1
	
	if get_node("Panel/TangyuanG").get_text() == "g" or get_node("Panel/TangyuanG").get_text() == "G":
		global.highScoreCW += 1
	
	if get_node("Panel/TangyuanY").get_text() == "y" or get_node("Panel/TangyuanY").get_text() == "Y":
		global.highScoreCW += 1
	
	if get_node("Panel/TangyuanU").get_text() == "u" or get_node("Panel/TangyuanU").get_text() == "U":
		global.highScoreCW += 1
	
	if get_node("Panel/TangyuanA").get_text() == "a" or get_node("Panel/TangyuanA").get_text() == "A":
		global.highScoreCW += 1
	
	if get_node("Panel/TangyuanN2").get_text() == "n" or get_node("Panel/TangyuanN2").get_text() == "N":
		global.highScoreCW += 1
	
	global.highScoreCW = (global.highScoreCW / 27) * 100
	print("Final Score: " + str(int(global.highScoreCW)))
	
	get_tree().change_scene("res://game_section/crossword/CWCongratulationScreen.tscn")
