extends Node2D

# Exports
@export var hole_scene: PackedScene

# Constants
const width : int = 100
const height : int = 100

# Variables
var holes = []

func _ready():
	for x in range(3):
		holes.append([])
		for y in range(4):
			holes[x].append(hole_scene.instance())
			holes.position = Vector2(x * width, y * height)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
