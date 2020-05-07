extends Node2D

func _on_Play_pressed():
	
	if  CheckpointRed1.isCheckpoint1:
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		TeleporterData.player_location = CheckpointRed1.teleport_location
		print("Checkpoint1 läbitud")
	elif CheckpointRed2.isCheckpoint2:
		print("Checkpoint2 läbitud")
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		TeleporterData.player_location = CheckpointRed2.teleport_location
		
	elif CheckpointRed3.isCheckpoint3:
		print("Checkpoint3 läbitud")
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		TeleporterData.player_location = CheckpointRed3.teleport_location
	
func _on_Again_pressed():
	if CheckpointRed1.isCheckpoint1:
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		TeleporterData.player_location = CheckpointRed1.teleport_location
	elif CheckpointRed2.isCheckpoint2:
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		TeleporterData.player_location = CheckpointRed2.teleport_location
	elif CheckpointRed3.isCheckpoint3:
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		TeleporterData.player_location = CheckpointRed3.teleport_location
#	elif CheckpointRed4.isCheckpoint4:
#		get_tree().change_scene("res://src/Levels/Level1.tscn")
#		TeleporterData.player_location = CheckpointRed4.teleport_location
