extends CharacterBody2D

@export var speed = 400
const GRAVITY = 980.0
const JUMP_VELOCITY = -300

const player_start_position := Vector2(33, 9)

func get_input():
	velocity.x = Input.get_axis("Left", "Right") * speed

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	
	if is_on_floor() and Input.is_action_just_pressed("Up"):
		velocity.y = JUMP_VELOCITY
	
	if position.y > 2000:
		position = player_start_position
		
	get_input()
	move_and_slide()

	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		
		if c.get_collider() is StaticBody2D:
			position = player_start_position
			velocity = Vector2.ZERO
			break

		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * 20)
			
			
			
	
