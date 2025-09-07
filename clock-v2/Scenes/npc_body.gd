extends CharacterBody2D

var speed = 50

func _process(delta: float) -> void:
	_move(delta)
	
func _move(delta):
	var position_change = _get_direction() * speed * delta
	velocity = position_change * speed
	move_and_slide()
	return position_change

func _get_direction():
	return Vector2(1, 1)
