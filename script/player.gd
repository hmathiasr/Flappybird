extends CharacterBody2D

signal died

var alive: bool = true
var is_game_started: bool = false

@onready var jump_sound: AudioStreamPlayer2D = $JumpSound
@onready var death_sound: AudioStreamPlayer = $DeathSound

func _physics_process(delta: float) -> void:
	if is_game_started == false:
		return

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
	died.emit()


func _on_main_game_started() -> void:
	is_game_started = true
