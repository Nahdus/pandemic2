extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	var nav_2d :Navigation2D=$Navigation2D
	
	var character 	=$character
	var home1 =$"../landmarks/home1".position
	var restaurant1=$"../landmarks/restaurant1".position
	var office1=$"../landmarks/office1".position
	var path_to_home1=nav_2d.get_simple_path(character.position,home1)
	var path_to_restaurant1=nav_2d.get_simple_path(character.position,restaurant1)
	var path_to_office1=nav_2d.get_simple_path(character.position,office1)


	
	character.path=path_to_restaurant1
	
