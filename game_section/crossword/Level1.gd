extends Control


export(int) var LIMIT = 1
var current_text = ''
var cursor_line = 0
var cursor_column = 0
var textEditName


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
	textEditName = $Panel/IbanI
	limitWord()


func _on_IbanB_text_changed():
	textEditName = $Panel/IbanB
	limitWord()


func _on_IbanA_text_changed():
	textEditName = $Panel/IbanA
	limitWord()


func _on_IbanN_text_changed():
	textEditName = $Panel/IbanN
	limitWord()


func _on_IpokP_text_changed():
	textEditName = $Panel/IpokP
	limitWord()


func _on_IpokO_text_changed():
	textEditName = $Panel/IpokO
	limitWord()


func _on_IpokK_text_changed():
	textEditName = $Panel/IpokK
	limitWord()


func _on_CinaC_text_changed():
	textEditName = $Panel/CinaC
	limitWord()


func _on_CinaI_text_changed():
	textEditName = $Panel/CinaI
	limitWord()


func _on_CinaA_text_changed():
	textEditName = $Panel/CinaA
	limitWord()


func _on_CeongsamE_text_changed():
	textEditName = $Panel/CeongsamE
	limitWord()


func _on_CeongsamO_text_changed():
	textEditName = $Panel/CeongsamO
	limitWord()


func _on_CeongsamN_text_changed():
	textEditName = $Panel/CeongsamN
	limitWord()


func _on_CeongsamG_text_changed():
	textEditName = $Panel/CeongsamG
	limitWord()


func _on_CeongsamS_text_changed():
	textEditName = $Panel/CeongsamS
	limitWord()


func _on_CeongsamA_text_changed():
	textEditName = $Panel/CeongsamA
	limitWord()


func _on_CeongsamM_text_changed():
	textEditName = $Panel/CeongsamM
	limitWord()


func _on_SariA_text_changed():
	textEditName = $Panel/SariA
	limitWord()


func _on_SariR_text_changed():
	textEditName = $Panel/SariR
	limitWord()


func _on_SariI_text_changed():
	textEditName = $Panel/SariI
	limitWord()


func _on_TangyuanT_text_changed():
	textEditName = $Panel/TangyuanT
	limitWord()


func _on_TangyuanN_text_changed():
	textEditName = $Panel/TangyuanN
	limitWord()


func _on_TangyuanG_text_changed():
	textEditName = $Panel/TangyuanG
	limitWord()


func _on_TangyuanY_text_changed():
	textEditName = $Panel/TangyuanY
	limitWord()


func _on_TangyuanU_text_changed():
	textEditName = $Panel/TangyuanU
	limitWord()


func _on_TangyuanA_text_changed():
	textEditName = $Panel/TangyuanA
	limitWord()


func _on_TangyuanN2_text_changed():
	textEditName = $Panel/TangyuanN2
	limitWord()


func _on_QuestionBtn_pressed():
	get_node("Panel2").show()


func _on_Button_pressed():
	get_node("Panel2").hide()


func _on_BackBtn_pressed():
	# score
	get_tree().change_scene("res://game_section/GameMenu.tscn")


func _on_ClearBtn_pressed():
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
