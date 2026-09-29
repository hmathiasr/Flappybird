extends Control


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/main.tscn") # Replace with function body.


func _on_fullscreen_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN) # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit() # Replace with function body.
