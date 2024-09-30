extends CharacterBody2D

var move_speed : float = 100
var jump_force : float = 200
var gravity : float = 500

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	
	velocity.x = 0
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= move_speed
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += move_speed
	
	if Input.is_key_pressed(KEY_UP) and is_on_floor():
		velocity.y = -jump_force
	
	move_and_slide()
