extends Node2D

#spawns player location to scene
var player_location = Vector2(236.82,789.579)
var player_spawn = load("res://src/Actors/Player.tscn")

func _ready():
	set_process(true)
	set_process_input(true)
	player_spawn = player_spawn.instance()

	TeleporterData.set("player_location", player_location)
	TeleporterData.set("player_spawn", player_spawn)
