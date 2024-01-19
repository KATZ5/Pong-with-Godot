extends Area2D

export var bounce_Direction = 1

func _on_StaticBody2D_area_entered(area):
	if area.name == "Sprite":
		area.Direction = (area.Direction + Vector2(0, bounce_Direction)).normalized()
