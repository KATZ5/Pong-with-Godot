extends Area2D

const DEFAULT_SPEED = 300

var speed = DEFAULT_SPEED
var Direction = Vector2.LEFT

onready var initial_pos = position



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	speed = speed + delta
	position = position + speed * delta * Direction

func reset():
	speed = DEFAULT_SPEED
	position = initial_pos
	Direction = Vector2.LEFT
	
	
