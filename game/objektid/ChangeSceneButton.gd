tool
extends TextureButton

export (String, FILE) var next_scene_path = ""

func _on_button_up():
	get_tree().change_scene("res://src/Levels/Level1.tscn")


func _get_configuration_warning()-> String:
	return "Next scene path must be set to button to work" if next_scene_path == "" else ""
