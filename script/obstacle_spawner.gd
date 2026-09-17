extends Marker2D

const OBSTACLE = preload("uid://chmgp4osyf2p3")



func _on_timer_timeout() -> void:
	print(0101010)
	var instance :=OBSTACLE.instantiate()
	add_child(instance)
