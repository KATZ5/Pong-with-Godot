extends Area2D

var moveSpeed = 250


func _process(delta):
	var input = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	position.y = position.y + input * delta * moveSpeed




func _on_StaticBody2D2_area_entered(area):
	if area.name == "Sprite":
		area.Direction = Vector2(-1, randf() *2 -1).normalized()
		area.speed = area.speed * 1.1
