extends Node

signal health_changed(current_health)

var max_health := 3
var health := 3

func player_died(player: Node2D):
	health -= 1
	emit_signal("health_changed", health)
	
	if health <= 0:
		health = max_health
		emit_signal("health_changed", health)
		print("Game Over")
		get_tree().reload_current_scene()
		return
	
	get_tree().reload_current_scene()
