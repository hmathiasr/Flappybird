extends Control

@onready var final_score_label: RichTextLabel = %FinalScoreLabel


func _ready() -> void:
	hide() 
	EventBus.scored.connect(_on_scored)

func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()



func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/game_over_screen.tscn") # Replace with function body.

func _on_scored(value: int) -> void:
	final_score_label.text = str("Pontuação: ", value)
