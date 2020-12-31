extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _init():
	OS.min_window_size = OS.window_size
	print(OS.window_size)
	OS.max_window_size = OS.get_screen_size()
	print(OS.get_screen_size())

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass






	


