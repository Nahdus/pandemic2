extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var landmarkpositions
onready var landmarks
onready var obstacles=get_used_cells_by_id(0)\
	+get_used_cells_by_id(1)+\
	get_used_cells_by_id(2)+\
	get_used_cells_by_id(3)+\
	get_used_cells_by_id(4)+\
	get_used_cells_by_id(5)+\
	get_used_cells_by_id(6)+\
	get_used_cells_by_id(7)+\
	get_used_cells_by_id(8)

# Called when the node enters the scene tree for the first time.
func _ready():
	landmarks=get_parent().get_node("landmarks").get_children()
	print(landmarks)
	for landmark in landmarks:
		for position in landmark.get_children():
			obstacles.erase(world_to_map(position.position))

