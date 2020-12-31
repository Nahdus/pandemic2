extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (PackedScene) var NPC
# Called when the node enters the scene tree for the first time.
func _ready():
	print('ready')
	print($self)
	print($"../NPCS")
	pass # Replace with function body.


func _on_npcTimer_timeout():
	print('add child')
	var npc = NPC.instance()
	print($self)
	$"../NPCS".add_child(npc)
