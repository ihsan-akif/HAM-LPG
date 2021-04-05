extends Control

var highScore : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Question1").hide()
	get_node("Question2").show()
	

# Gameplay
func trivia_question() -> void:
	pass
