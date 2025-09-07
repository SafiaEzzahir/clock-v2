extends Node2D

var filled : bool = false

func _process(delta: float) -> void:
	$Sprite2D/AnimationPlayer.play("blob", -1, 10.0)
	
	if filled:
		if Input.is_action_pressed("e_function"):
			print("collect")

func _on_area_2d_body_entered(body: Node2D) -> void:
	filled = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	filled = false
