extends Label

@onready() var win = preload("res://scenes/winscreen.tscn")

func _on_area_2d_area_entered(area: Area2D) -> void:
	if true:
		get_parent().add_child(win.instantiate())
	else:
		pass