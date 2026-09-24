extends Node2D

var score = 0

func _on_screen_exited() -> void:
	get_tree().quit()
	
@onready var score_label: Label = $HUD/ScoreLabel


func _on_obstacle_spawner_scored() -> void:
	score += 1
	score_label.text = str(score)
	
 
