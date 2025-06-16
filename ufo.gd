extends CharacterBody2D


const SPEED = 80
const JUMP_VELOCITY = -180
@onready var _animated_sprite = $AnimatedSprite2D

func _process(_delta: float):
	#these functions control animations
	if Input.is_action_just_pressed("crouch"):
		_animated_sprite.play("Crouch start")
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

	# Handle jump.
	if Input.is_action_just_pressed("crouch") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
