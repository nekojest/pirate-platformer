extends Area2D
signal start_introduction
var is_intro_started = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if !is_intro_started:
		start_introduction.emit()
		is_intro_started = true
