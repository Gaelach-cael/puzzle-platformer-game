extends Control


# Called when the node enters the scene tree for the first time.
func _on_ret_lselect_pressed():
	get_tree().change_scene_to_file("res://scenes/levelselect.tscn")
	queue_free()

func _on_ret_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
	queue_free()
