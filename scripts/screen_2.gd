extends Node2D

var osc_not = bool
var not_a = bool
var not_b = bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if Input.is_action_just_pressed("switch") and visible == false:
		set_visible(true)
		visible = true
	elif Input.is_action_just_pressed("switch") and visible == true:
		set_visible(false)
		visible = false
