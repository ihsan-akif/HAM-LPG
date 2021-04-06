extends Control

var highScore : int = 100
var score : int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	#trivia_question()
	#print(score)
	pass


func _process(delta):
	pass


# Gameplay
func trivia_question() -> void:
	print(score)


func _on_AnswerA1Btn_pressed():
	get_node("Question1/AnswerA1Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerB1Btn_pressed():
	get_node("Question1/AnswerB1Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerC1Btn_pressed():
	get_node("Question1/AnswerC1Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerD1Btn_pressed():
	get_node("Question1/AnswerA1Btn").disabled = true
	get_node("Question1/AnswerB1Btn").disabled = true
	get_node("Question1/AnswerC1Btn").disabled = true
	get_node("Question1/AnswerD1Btn").disabled = true
	print(highScore)
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Question1").hide()
	get_node("Question2").show()
	
