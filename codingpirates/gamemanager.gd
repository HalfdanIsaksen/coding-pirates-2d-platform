extends Node

var max_health := 3
var health := 3

func player_died(player: Node2D):
	health -= 1
	
	
