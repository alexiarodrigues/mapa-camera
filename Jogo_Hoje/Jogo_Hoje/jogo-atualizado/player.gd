extends CharacterBody2D


const SPEED = 88.0
func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO

	if Input.is_action_pressed('ui_left'):
		velocity.x = -1 * SPEED
	if Input.is_action_pressed('ui_right'):
		velocity.x = 1 * SPEED
	if Input.is_action_pressed('ui_up'):
		velocity.y = -1 * SPEED
	if Input.is_action_pressed('ui_down'):
		velocity.y = 1 * SPEED
	move_and_slide()

	if velocity == Vector2.ZERO: $"Animação".play("idle")
	else: $"Animação".play("walk")

	if velocity.x < 0.0: $"Animação".flip_h = true
	else: $"Animação".flip_h = false
