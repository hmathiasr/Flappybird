extends Node2D

var score = 0
@onready var score_label: Label = $HUD/ScoreLabel
@onready var score_sound: AudioStreamPlayer = $Scoresound



func _on_screen_exited() -> void:
	get_tree().quit()
	
	
func _ready() -> void:
	score_label.text = str(score)

func _on_obstacle_spawner_scored() -> void:
	score += 1
	score_label.text = str(score)
	score_sound.play()
	  
