extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	print(global.highScoreTQ)
	get_node("Score").text = str("Markah Anda: ", global.highScoreTQ)


