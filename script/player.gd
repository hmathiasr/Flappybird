extends CharacterBody2D


func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		velocity.y = -500
	var gravity = get_gravity()
	velocity += gravity * 0.02
	move_and_slide()
	
	if get_last_slide_collision() != null:
		get_tree().quit()
