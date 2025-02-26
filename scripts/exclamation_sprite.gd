extends AnimatedSprite2D
signal start_timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_animation_finished() -> void:
	start_timer.emit()
	

func _on_timer_timeout() -> void:
	if self.animation == "in":
		self.play(&"out")
	else:
		self.play(&"in")
