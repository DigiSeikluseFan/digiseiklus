extends Node2D
export (PackedScene) var player

func _ready():
	var location = TeleporterData.player_location
	var p = player.instance()
	add_child(p)
	p.set_position(location)
	print(p.get_position())
	
