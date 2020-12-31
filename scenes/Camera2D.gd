extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var zoomOutSpeed=50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var shake_amount = 1.0

func _process(delta):
	if Input.is_action_pressed("ui_select"):
		self.zoom=Vector2(0.5,0.5)
	else:
		self.zoom=Vector2(0.2,0.2)
#	self.set_offset(Vector2( \
#		rand_range(-1.0, 1.0) * shake_amount, \
#		rand_range(-1.0, 1.0) * shake_amount \
#	))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
