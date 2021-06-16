extends Control


var name_matched = false
var title = "a"


# Called when the node enters the scene tree for the first time.
func _ready():
	if MusicController.isSoundPlay == true:
		MusicController.play_congratulations_sound()
	print(int(global.highScoreDAD))
	get_node("Score").text = str("Markah Anda: ", int(global.highScoreDAD))
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
	global.highScoreDAD = 0


func leaderboard_sortingTQ():
	name_matched()


# If no name is same when sorting
func no_name_matched_sorting():
	global.arrayDAD[0].name = title
	global.arrayDAD[0].score = int(global.highScoreDAD)
	
	var new_name
	var new_score
	var k = global.arrayDAD.size() - 1
	
	for i in range(global.arrayDAD.size()):
		if i < global.arrayDAD.size():
			if k > 0:
				if global.arrayDAD[0].score > global.arrayDAD[k].score:
					new_name = global.arrayDAD[0].name
					new_score = global.arrayDAD[0].score
					global.arrayDAD[0].score = global.arrayDAD[k].score
					global.arrayDAD[0].name = global.arrayDAD[k].name
					global.arrayDAD[k].score = new_score
					global.arrayDAD[k].name = new_name
				print(global.arrayDAD[0])
			k = k - 1


# If name matched, it will only sort if the previous score will be less than the new score of the same name
func name_matched():
	name_matched = false
	global.arrayDAD[0].name = title
	global.arrayDAD[0].score = int(global.highScoreDAD)
	
	var new_name
	var new_score
	var k = global.arrayDAD.size() - 1
	var j = k - 1
	
	for i in range(global.arrayDAD.size()):
		if i < global.arrayDAD.size():
			if k > 0:
				if global.arrayDAD[0].name == global.arrayDAD[k].name and global.arrayDAD[0].score > global.arrayDAD[k].score:
					global.arrayDAD[k].name = global.arrayDAD[0].name
					global.arrayDAD[k].score = global.arrayDAD[0].score
					name_matched = true
				elif global.arrayDAD[0].name == global.arrayDAD[k].name and global.arrayDAD[0].score <= global.arrayDAD[k].score:
					name_matched=true
				print(global.arrayDAD[0])
			k = k - 1
	print(name_matched)
	if !name_matched:
		no_name_matched_sorting()
	else:
		name_matched_sorting()


func name_matched_sorting():
	global.arrayDAD[0].name = "title"
	global.arrayDAD[0].score = 0
	
	var new_name
	var new_score
	
	for j in range(global.arrayDAD.size()):
		if j < global.arrayDAD.size() - 1:
			if global.arrayDAD[j].score >= global.arrayDAD[j + 1].score:
				new_name = global.arrayDAD[j].name
				new_score = global.arrayDAD[j].score
				global.arrayDAD[j].score = global.arrayDAD[j + 1].score
				global.arrayDAD[j].name = global.arrayDAD[j + 1].name
				global.arrayDAD[j + 1].score = new_score
				global.arrayDAD[j + 1].name = new_name
