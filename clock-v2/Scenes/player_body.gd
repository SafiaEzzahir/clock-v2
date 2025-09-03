extends CharacterBody2D

var speed = 100

func _process(delta: float) -> void:
	var position_change = _move(delta)
	_animate()
	
func _move(delta):
	#get direction from player input:
	var position_change = _get_direction() * speed * delta
	velocity = position_change * speed
	move_and_slide()
	return position_change
	
func _get_direction():
	if Input.is_action_pressed("w_direction"):
		return Vector2(-1, -1)
	elif Input.is_action_pressed("r_direction"):
		return Vector2(1, -1)
	elif Input.is_action_pressed("s_direction"):
		return Vector2(-1, 1)
	elif Input.is_action_pressed("f_direction"):
		return Vector2(1, 1)
	else:
		return Vector2(0, 0)
	
func _animate():
	pass
