extends Node2D

# Declare member variables here. Examples:
var player

# Called when the node enters the scene tree for the first time.
func _ready():
	player = preload("res://fixtures/kinematic/player/player.tscn")
	spawn_player()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func spawn_player():
	print("spawning player")
	var new_player = player.instance()
	add_child(new_player)
	print(new_player.name)
	print("player loaded!")
