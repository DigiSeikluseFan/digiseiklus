extends Area2D
export(String, FILE, "*.tscn") var level_scene

export (Vector2) var teleport_location = Vector2(3884.2, 806.156)

var isCheckpoint1 = true

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(level_scene)
			
