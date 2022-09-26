extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween := get_tree().create_tween()
	tween.tween_property(self, "position", position + Vector2(0.0, -200.0), 0.1).set_trans(Tween.EASE_IN)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_target_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var tween := get_tree().create_tween()
		tween.tween_property($Sprite, "modulate", Color.WHITE, 0.05)
		tween.tween_property($Sprite, "modulate", Color.RED, 0.05)
		tween.parallel().tween_property(self, "position", position + Vector2(0.0, 200.0), 0.1).set_trans(Tween.EASE_OUT)
		tween.tween_callback(self.queue_free)
