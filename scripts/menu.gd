extends Control

func _process(_delta: float):
    if Input.is_action_pressed("start"):
        get_tree().change_scene_to_file("res://scenes/levelselect.tscn")