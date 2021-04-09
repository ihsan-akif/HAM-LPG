extends Control

var name_matched = false
var title = "a"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(global.highScoreTQ)
	get_node("Score").text = str("Markah Anda: ", global.highScoreTQ)
	leaderboard_sorting()
	pass


func _on_SendBtn_pressed():
	title = str($PlayerName.text)
	print(title)
	leaderboard_sorting()


func leaderboard_sorting():
	name_matched()


# If no name is same when sorting
func no_name_matched_sorting():
	global.arrayTQ[0].name = title
	global.arrayTQ[0].score = global.highScoreTQ
	
	var new_name
	var new_score
	var k = global.arrayTQ.size() - 1
	
	for i in range(global.arrayTQ.size()):
		if i < global.arrayTQ.size():
			if k > 0:
				if global.arrayTQ[0].score > global.arrayTQ[k].score:
					new_name = global.arrayTQ[0].name
					new_score = global.arrayTQ[0].score
					global.arrayTQ[0].score = global.arrayTQ[k].score
					global.arrayTQ[0].name = global.arrayTQ[k].name
					global.arrayTQ[k].score = new_score
					global.arrayTQ[k].name = new_name
				print(global.arrayTQ[0])
			k = k + 1



# If name matched, it will only sort if the previous score will be less than the new scire if the same name
func name_matched():
	name_matched = false
	global.arrayTQ[0].name = title
	global.arrayTQ[0].score = global.highScoreTQ
	
	var new_name
	var new_score
	var k = global.arrayTQ.size() - 1
	var j = k - 1
	
	for i in range(global.arrayTQ.size()):
		if i < global.arrayTQ.size():
			if k > 0:
				if global.arrayTQ[0].name == global.arrayTQ[k].name and global.arrayTQ[0].score > global.arrayTQ[k].score:
					global.arrayTQ[k].name = global.arrayTQ[0].name
					global.arrayTQ[k].score = global.arrayTQ[0].score
					name_matched = true
				elif global.arrayTQ[0].name == global.arrayTQ[k].name and global.arrayTQ[0].score <= global.arrayTQ[k].score:
					name_matched=true
				print(global.arrayTQ[0])
			k = k - 1
	print(name_matched)
	if !name_matched:
		no_name_matched_sorting()
	else:
		name_matched_sorting()


func name_matched_sorting():
	global.arrayTQ[0].name = "title"
	global.arrayTQ[0].score = 0
	
	var new_name
	var new_score
	
	for j in range(global.arrayTQ.size()):
		if j < global.arrayTQ.size() - 1:
			if global.arrayTQ[j].score >= global.arrayTQ[j + 1].score:
				new_name = global.arrayTQ[j].name
				new_score = global.arrayTQ[j].score
				global.arrayTQ[j].score = global.arrayTQ[j + 1].score
				global.arrayTQ[j].name = global.arrayTQ[j + 1].name
				global.arrayTQ[j + 1].score = new_score
				global.arrayTQ[j + 1].name = new_name
