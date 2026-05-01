extends Area2D

@export_file("*.tscn") var next_level_path: String

func _on_body_entered(body):
	print("Hit")
	if body.is_in_group("player"):
		print("Next Level")
		get_tree().change_scene_to_file(next_level_path)
