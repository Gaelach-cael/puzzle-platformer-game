extends CharacterBody2D

const SPEED = 80
const CR_SPEED = 40
@onready var _animated_sprite = $AnimatedSprite2D

func _process(_delta: float):
	#these functions control animations
	if Input.is_action_pressed("crouch"):
		_animated_sprite.play("Crouch start")
		_animated_sprite.set_frame_and_progress(1, 0.0)
	elif Input.is_action_just_released("crouch"):
		_animated_sprite.play("Crouch end")
	elif Input.is_action_pressed("left"):
		_animated_sprite.play("Walk")
	elif Input.is_action_pressed("right"):
		_animated_sprite.play("Walk")
	else:
		_animated_sprite.play("Idle")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if Input.is_action_pressed("crouch"):
		
		if direction:
			velocity.x = direction * CR_SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, CR_SPEED)
	else:
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
