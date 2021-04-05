extends Control

var question = create_instance("res://trivia_question/Questions.tscn")

func _ready() -> void:
	add_child(question)


func _process(delta: float) -> void:
	pass


# Create a node
func create_instance(add):
	var scene = load(add)
	var scene_instance = scene.instance()
	return scene_instance
