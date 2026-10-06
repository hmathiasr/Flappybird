class_name Obstacle
extends StaticBody2D

signal scored


func _ready() -> void:
	EventBus.game_ended.connect(_on_game_ended)

func _physics_process(delta: float) -> void:
	position.x += -300 * delta


func _on_score_area_body_entered(body: Node2D) -> void:
	scored.emit()


func _on_game_ended() -> void:
	set_physics_process(false)
	
	
