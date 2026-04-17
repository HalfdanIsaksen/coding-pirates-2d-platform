extends CanvasLayer

@onready var hearts = [
	$bar/heart,
	$bar/heart2,
	$bar/heart3
]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func update_hearts(current_health: int) -> void:
	for i in range(hearts.size()):
		hearts[i].visible = i < current_health
