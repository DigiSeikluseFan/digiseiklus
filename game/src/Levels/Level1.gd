extends Node2D
export (PackedScene) var player
var isGreenVisible = false
func _ready():
	var location = TeleporterData.player_location
	var p = player.instance()
	add_child(p)
	p.set_position(location)
	
	if location >= get_node("Checkpoint_red1").teleport_location and location < get_node("Checkpoint_red2").teleport_location:
		print("Chips 1",location)
		get_node("Checkpoint_green1").visible = true
		get_node("Checkpoint_red1").visible = false
	if location >= get_node("Checkpoint_red2").teleport_location and location <= get_node("Checkpoint_red3").teleport_location:
		print("Chippy location2: ", location)
		get_node("Checkpoint_green2").visible = true
		get_node("Checkpoint_red2").visible = false
	if location >= CheckpointRed3.teleport_location:
		print("Chippy location3: ", location)
		get_node("Checkpoint_green3").visible = true
		get_node("Checkpoint_red3").visible = false
		
	
