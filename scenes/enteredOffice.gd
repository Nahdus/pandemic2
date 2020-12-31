extends Control


func _ready():
	hideMessage()
	pass


func showMessge():
	visible=true 

func hideMessage():
	visible=false

func _on_player_enteredOffice():
	showMessge()
	print('showing')
	visible=true 


func _on_workHard_pressed():
	var newMoney=int($"../MarginContainer/HUD/moneyEarned/number".text)+150
	$"../MarginContainer/HUD/moneyEarned/number".text=str(newMoney)
	hideMessage()

func _on_workSoft_pressed():
	var newMoney=int($"../MarginContainer/HUD/moneyEarned/number".text)+50
	$"../MarginContainer/HUD/moneyEarned/number".text=str(newMoney)
	hideMessage()
