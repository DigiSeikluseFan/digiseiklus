extends Area2D


func _physics_process(_delta):
	var bodies= get_overlapping_bodies()
	for body in bodies:
		if body.name=="Player":			
			body.set_position(Vector2(0, 0))
