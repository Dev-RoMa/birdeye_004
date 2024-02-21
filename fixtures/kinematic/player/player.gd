extends KinematicBody2D

# Declare member variables here. Examples:
var speed = 100
var rotation_speed = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	handle_movement(delta)

func handle_movement(delta):
	var move_vector = Vector2(0, 0)

	if Input.is_action_pressed("ui_up"):
		move_vector += Vector2(0, -1)

	if Input.is_action_pressed("ui_down"):
		move_vector += Vector2(0, 1)

	if Input.is_action_pressed("ui_left"):
		rotation -= rotation_speed * delta
		rotation = fmod(rotation, 360) # Normalize rotation between 0 and 360 degrees

	if Input.is_action_pressed("ui_right"):
		rotation += rotation_speed * delta
		rotation = fmod(rotation, 360) # Normalize rotation between 0 and 360 degrees

	move_and_slide(move_vector.rotated(rotation) * speed)
