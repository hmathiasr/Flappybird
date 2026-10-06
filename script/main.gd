extends Node2D

signal game_started

var score = 0
var is_game_started: bool = false

@onready var score_label: Label = $HUD/ScoreLabel
@onready var score_sound: AudioStreamPlayer = $Scoresound
@onready var game_over_screen: Control = $HUD/GameOverScreen
@onready var tutorial: RichTextLabel = %Tutorial


func _on_screen_exited() -> void:
	finish_game()


func _ready() -> void:
	score_label.text = str(score)
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		if is_game_started == false:
			is_game_started = true
			game_started.emit()
			tutorial.hide()

func finish_game():
	game_over_screen.show()
	EventBus.scored.emit(score)
	EventBus.game_ended.emit()

func _on_obstacle_spawner_scored() -> void:
	score += 1

	score_label.text = str(score)
	score_sound.play()  



func _on_player_died() -> void:
	finish_game()
	
	
