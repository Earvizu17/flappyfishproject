extends RigidBody2D

# May remove this if not used
var tracking := false
var start_position: Vector2


func _ready() -> void:
	freeze = true


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("flyfish"):
		_mouse_flick(event.position)
	elif event.is_action_released("flyfish"):
		_launch(event.position)


func _mouse_flick(mouse_start_position: Vector2) -> void:
	tracking = true
	start_position = mouse_start_position


func _launch(mouse_end_position: Vector2) -> void:
	var kick_direction = start_position - mouse_end_position
	apply_force(900 * kick_direction)
	tracking = false
	freeze = false
