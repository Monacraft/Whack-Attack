extends Node2D

@onready var swinging : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if !swinging and event.pressed == true and event.button_index == MOUSE_BUTTON_LEFT:
			$Swing.start()
			swinging = true
			$HammerSprite.rotation = deg_to_rad(-80)
	
	elif event is InputEventMouseMotion:
		position = get_viewport().get_mouse_position()

   # Print the size of the viewport.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_swing_timeout():
	$HammerSprite.rotation = deg_to_rad(-40)
	swinging = false
