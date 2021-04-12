extends Position2D


func _draw():
	draw_circle(Vector2.ZERO, 75, Color.blanchedalmond)


func select():
	for child in get_tree().get_nodes_in_group("nasi_lemak"):
		child.deselect()
	modulate = Color.green


func deselect():
	modulate = Color.white
