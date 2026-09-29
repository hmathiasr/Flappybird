class_name Obstacle
extends StaticBody2D

signal scored


func _physics_process(delta: float) -> void:
	position.x += -300 * delta


func _on_score_area_body_entered(body: Node2D) -> void:
	scored.emit()
	
	
