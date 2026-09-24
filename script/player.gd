extends CharacterBody2D


var alive: bool = true

@onready var jump_sound: AudioStreamPlayer2D = $JumpSound
@onready var death_sound: AudioStreamPlayer = $DeathSound

func _physics_process(delta: float) -> void:
	var gravity = get_gravity()
	velocity += gravity * 0.02
	
	if alive == false:
		move_and_slide()
		return
	
	if Input.is_action_just_pressed("jump"):
		velocity.y = -500
		jump_sound.play()
	
	move_and_slide()      

	if get_last_slide_collision() != null:
		die()
	
func die() -> void:
	alive = false
	death_sound.play()
	await get_tree().create_timer(1.0).timeout
	get_tree().quit()
