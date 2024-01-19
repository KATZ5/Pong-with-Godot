extends Area2D

var platMovespeed = 250


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input = Input.get_action_strength("_down") - Input.get_action_strength("_up")
	position.y = position.y + input * delta * platMovespeed
	


func _on_StaticBody2D_area_entered(area):
	if area.name == "Sprite":
		area.Direction = Vector2(1, randf() * 2 - 1).normalized()
		area.speed = area.speed * 1.1

