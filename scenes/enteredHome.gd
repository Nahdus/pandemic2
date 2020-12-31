extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hideMessage()
	
	pass


func showMessge():
	visible=true 

func hideMessage():
	visible=false
	

func _on_player_enteredHome():
	print('entered home')
	showMessge()


func _on_Sleep_pressed():
	print('sleeping')
	var old = $"../MarginContainer/HUD/bars/homesickness"
	var newValue=old.value+30
	print(newValue)
	if(newValue<100):
		old.value=old.value+30
	else:
		old.value=100
	hideMessage()
	


func _on_facetime_pressed():
	print('facetime')
	hideMessage()
	
