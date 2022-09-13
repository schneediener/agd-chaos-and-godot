extends KinematicBody2D

# THIS TOO SHALL PASS AS ALL THINGS DO

func _process(delta):
	rotation_degrees = rotation_degrees+4
	if scale < Vector2(10,10):
		scale.x += 0.1
		scale.y += 0.1
	else:
		scale = Vector2(0.5,0.5)
		
