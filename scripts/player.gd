extends KinematicBody2D

signal enteredHome
signal enteredOffice
signal enteredRestaurant

enum walk{left,right,up,down}

var speed=50
var playerHealth=50
var playersatiety=100
var playerHomeSickness=10

func _ready():
	$HungerTimer.start()
	$HungerTimer.wait_time=15

func _physics_process(delta):
	var velocity = Vector2()
	var _collision_info = move_and_collide(velocity * delta)


func _process(delta):
	var velocity= Vector2()
	if Input.is_action_pressed("ui_right"):
		$playerSprite.animation="sideways"
		$playerSprite.flip_h=false
		velocity.x+=1
	if Input.is_action_pressed("ui_down"):
		$playerSprite.animation="towards"
		velocity.y+=1	
	if Input.is_action_pressed("ui_left"):
		$playerSprite.animation="sideways"
		velocity.x-=1	
		$playerSprite.flip_h=true
	if Input.is_action_pressed("ui_up"):
		$playerSprite.animation="away"
		velocity.y-=1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$playerSprite.play()
	position += velocity * delta
	if velocity.length()==0:
		$playerSprite.animation="idle"
		$playerSprite.play()


func _on_Homedoor_body_entered(body):
	emit_signal("enteredHome")

func _on_OfficeDoor_body_entered(body):
	emit_signal("enteredOffice")

func updatePlayerSatiety(playersatiety):
	$"../../ui2/MarginContainer/HUD/bars/satiation".value=playersatiety

func _on_HungerTimer_timeout():
	if playersatiety>10:
		playersatiety=playersatiety-10
	else:
		playersatiety=0
	updatePlayerSatiety(playersatiety)


