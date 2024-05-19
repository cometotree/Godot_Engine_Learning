extends Node

@export var health = 100
@export var damage: int = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = str(health)
	$Label.modulate = Color.ROYAL_BLUE
	print("Hello World!")

func _input(event):
	if event.is_action_pressed("action_space"):
		$Label.modulate = Color.BLUE_VIOLET
		health -= damage
		if health > 0:
			$Label.text = str(health)
		else:
			$Label.text = "You died!"
		
	if event.is_action_released("action_space"):
		$Label.modulate = Color.ROYAL_BLUE
