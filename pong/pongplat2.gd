extends Sprite

var platMovespeed = 125


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_UP):
		position = position + Vector2.UP * platMovespeed * delta
	elif Input.is_key_pressed(KEY_DOWN):
		position = position + Vector2.DOWN * platMovespeed * delta
