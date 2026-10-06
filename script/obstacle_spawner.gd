extends Marker2D

signal  scored

const OBSTACLE = preload("uid://chmgp4osyf2p3")

func _ready() -> void:
	EventBus.game_ended.connect($Timer.stop)


func _on_timer_timeout() -> void:
	var instance : Obstacle = OBSTACLE.instantiate()
	instance.position.y = randf_range(-100, 100)
	add_child(instance)
	
	instance.scored.connect(scored.emit)
 
