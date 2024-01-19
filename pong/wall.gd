extends Area2D



func _on_StaticBody2D_area_entered(area):
	if area.name == "Sprite":
		area.reset()
