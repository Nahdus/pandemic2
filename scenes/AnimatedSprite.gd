extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed : = 50
var path : = PoolVector2Array() setget set_path
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func move_along_path(distance:float):
	var start_point =position
	for i in range(path.size()):
		var distance_to_next= start_point.distance_to(path[0])
		if distance<=distance_to_next and distance>=0.0:
			position=start_point.linear_interpolate(path[0],distance/distance_to_next)
			break
		elif distance<0.0:
			position=path[0]
			set_process(false)
			break
		
		distance-=distance_to_next
		start_point = path[0]
		path.remove(0)
 
func _process(delta:float):
	var move_distance = speed*delta
	move_along_path(move_distance)
	
func set_path(value:PoolVector2Array):
	path=value
	if value.size()==0:
		return
	self._process(true)
		
