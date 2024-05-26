extends CharacterBody2D

const SPEED = 10.0

func _physics_process(delta):
	## Get the input direction and handle the movement/deceleration.
	#var direction = Input.get_axis("move_left", "move_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#
	#var movement = Vector2(direction, 0)
#
	##move_and_collide(movement)
	#move_and_slide()
	
	#if Input.is_action_pressed("move_right"):
		#position.x += SPEED
	#if Input.is_action_pressed("move_left"):
		#position.x -= SPEED
		#
		
	var direction = 0
	if Input.is_action_pressed("move_right"):
		direction = 1
	if Input.is_action_pressed("move_left"):
		direction = -1
	var movement = Vector2(direction * SPEED, 0)	
	move_and_collide(movement)

