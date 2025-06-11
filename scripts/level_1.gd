extends Node2D

@onready() var pause = preload("res://scenes/pause.tscn")

func _process(_delta: float):
	if Input.is_action_just_pressed("pause"):
		get_parent().add_child(pause.instantiate())