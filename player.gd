extends CharacterBody2D

@export var player_id: int = 1

const SPEED = 300.0
const JUMP_VELOCITY = -900.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	var left_action = "p%d_left" % player_id
	var right_action = "p%d_right" % player_id
	var jump_action = "p%d_jump" % player_id

	if Input.is_action_just_pressed(jump_action) and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis(left_action, right_action)
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
