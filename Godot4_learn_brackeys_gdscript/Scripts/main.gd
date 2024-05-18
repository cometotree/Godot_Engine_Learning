extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Hello, World!"
	$Label.modulate = Color.ROYAL_BLUE
	print("Hello World!")


func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.BLUE_VIOLET
	if event.is_action_released("my_action"):
		$Label.modulate = Color.ROYAL_BLUE

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
