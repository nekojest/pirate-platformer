extends AnimatedSprite2D
signal start_timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_animation_finished() -> void:
	emit_signal("start_timer")
	

func _on_timer_timeout() -> void:
	if self.animation == "in":
		self.play(&"out")
	else:
		self.play(&"in")
