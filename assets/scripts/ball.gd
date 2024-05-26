extends RigidBody2D

func _input(event):
	if event.is_action_pressed("begin"):
		linear_velocity = Vector2(50, -200)
