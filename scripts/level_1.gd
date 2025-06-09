extends Node2D

@onready() var pause = preload("res://scenes/pause.tscn")
@onready() var switch = preload("res://scenes/level 1/screen2.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if Input.is_action_just_pressed("pause"):
		get_parent().add_child(pause.instantiate())
	if Input.is_action_pressed("switch"):
		get_parent().add_child(switch.instantiate())