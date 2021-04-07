extends Control

var highScore : int = 100
var score : int = 0
var congratulation_screen = preload("res://trivia_question/TQCongratulationScreen.tscn").instance()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _process(delta):
	pass


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
	


func _on_AnswerA2Btn_pressed():
	get_node("Question2/AnswerA2Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerB2Btn_pressed():
	get_node("Question2/AnswerA2Btn").disabled = true
	get_node("Question2/AnswerB2Btn").disabled = true
	get_node("Question2/AnswerC2Btn").disabled = true
	get_node("Question2/AnswerD2Btn").disabled = true
	print(highScore)
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Question2").hide()
	get_node("Question3").show()

func _on_AnswerC2Btn_pressed():
	get_node("Question2/AnswerC2Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerD2Btn_pressed():
	get_node("Question2/AnswerD2Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerA3Btn_pressed():
	get_node("Question3/AnswerA3Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerB3Btn_pressed():
	get_node("Question3/AnswerB3Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerC3Btn_pressed():
	get_node("Question3/AnswerA3Btn").disabled = true
	get_node("Question3/AnswerB3Btn").disabled = true
	get_node("Question3/AnswerC3Btn").disabled = true
	get_node("Question3/AnswerD3Btn").disabled = true
	print(highScore)
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Question3").hide()
	get_node("Question4").show()


func _on_AnswerD3Btn_pressed():
	get_node("Question3/AnswerD3Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerA4Btn_pressed():
	get_node("Question4/AnswerA4Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerB4Btn_pressed():
	get_node("Question4/AnswerB4Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerC4Btn_pressed():
	get_node("Question4/AnswerC4Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerD4Btn_pressed():
	get_node("Question4/AnswerA4Btn").disabled = true
	get_node("Question4/AnswerB4Btn").disabled = true
	get_node("Question4/AnswerC4Btn").disabled = true
	get_node("Question4/AnswerD4Btn").disabled = true
	print(highScore)
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Question4").hide()
	get_node("Question5").show()


func _on_AnswerA5Btn_pressed():
	get_node("Question5/AnswerA5Btn").disabled = true
	get_node("Question5/AnswerB5Btn").disabled = true
	get_node("Question5/AnswerC5Btn").disabled = true
	get_node("Question5/AnswerD5Btn").disabled = true
	print(highScore)
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Question5").hide()
	# Next question show
	get_tree().get_root().add_child(congratulation_screen)


func _on_AnswerB5Btn_pressed():
	get_node("Question5/AnswerB5Btn").disabled = true
	highScore -= 5
	print(highScore)

func _on_AnswerC5Btn_pressed():
	get_node("Question5/AnswerC5Btn").disabled = true
	highScore -= 5
	print(highScore)


func _on_AnswerD5Btn_pressed():
	get_node("Question5/AnswerD5Btn").disabled = true
	highScore -= 5
	print(highScore)
