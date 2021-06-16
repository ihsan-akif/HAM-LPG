extends Control


var name_matched = false
var title = "a"


# Called when the node enters the scene tree for the first time.
func _ready():
	if MusicController.isSoundPlay == true:
		MusicController.play_congratulations_sound()
	print(int(global.highScoreCW))
	get_node("Score").text = str("Markah Anda: ", int(global.highScoreCW))
	leaderboard_sortingTQ()
	pass

func play_sound():
	if MusicController.isSoundPlay == true:
		MusicController.play_mouse_click_sound()

func _on_SendBtn_pressed():
	play_sound()
	title = str($PlayerName.text)
	print(title)
	leaderboard_sortingTQ()
	get_tree().change_scene("res://main_menu/MainMenu.tscn")
	global.highScoreCW = 0


func leaderboard_sortingTQ():
	name_matched()


# If no name is same when sorting
func no_name_matched_sorting():
	global.arrayCW[0].name = title
	global.arrayCW[0].score = int(global.highScoreCW)
	
	var new_name
	var new_score
	var k = global.arrayCW.size() - 1
	
	for i in range(global.arrayCW.size()):
		if i < global.arrayCW.size():
			if k > 0:
				if global.arrayCW[0].score > global.arrayCW[k].score:
					new_name = global.arrayCW[0].name
					new_score = global.arrayCW[0].score
					global.arrayCW[0].score = global.arrayCW[k].score
					global.arrayCW[0].name = global.arrayCW[k].name
					global.arrayCW[k].score = new_score
					global.arrayCW[k].name = new_name
				print(global.arrayCW[0])
			k = k - 1


# If name matched, it will only sort if the previous score will be less than the new score of the same name
func name_matched():
	name_matched = false
	global.arrayCW[0].name = title
	global.arrayCW[0].score = int(global.highScoreCW)
	
	var new_name
	var new_score
	var k = global.arrayCW.size() - 1
	var j = k - 1
	
	for i in range(global.arrayCW.size()):
		if i < global.arrayCW.size():
			if k > 0:
				if global.arrayCW[0].name == global.arrayCW[k].name and global.arrayCW[0].score > global.arrayCW[k].score:
					global.arrayCW[k].name = global.arrayCW[0].name
					global.arrayCW[k].score = global.arrayCW[0].score
					name_matched = true
				elif global.arrayCW[0].name == global.arrayCW[k].name and global.arrayCW[0].score <= global.arrayCW[k].score:
					name_matched=true
				print(global.arrayCW[0])
			k = k - 1
	print(name_matched)
	if !name_matched:
		no_name_matched_sorting()
	else:
		name_matched_sorting()


func name_matched_sorting():
	global.arrayCW[0].name = "title"
	global.arrayCW[0].score = 0
	
	var new_name
	var new_score
	
	for j in range(global.arrayCW.size()):
		if j < global.arrayCW.size() - 1:
			if global.arrayCW[j].score >= global.arrayCW[j + 1].score:
				new_name = global.arrayCW[j].name
				new_score = global.arrayCW[j].score
				global.arrayCW[j].score = global.arrayCW[j + 1].score
				global.arrayCW[j].name = global.arrayCW[j + 1].name
				global.arrayCW[j + 1].score = new_score
				global.arrayCW[j + 1].name = new_name
