extends Node2D

var points: float = 32.0
var diameter: float = 20.0
var color: Color = Color(1.0, 0.0, 0.0)

func _draw() -> void:
	"""
	Draws an arc from center -> radius
	"""
	var points_arc = PoolVector2Array()


	for i in range(points + 1):
		var angle_point = deg2rad(i * 360 / points - 90)
		points_arc.push_back(position + Vector2(cos(angle_point), sin(angle_point)) * diameter)


	for i in range(points):
		draw_line(points_arc[i], points_arc[i + 1], color)
