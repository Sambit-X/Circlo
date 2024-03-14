extends CharacterBody2D

@onready var animation_player = $AnimatedSprite2D

const SPEED = 300.0
var up=false
var down=false

func _ready():
	pass
	
func _physics_process(delta):
	movement();
	pass

func movement():
	if(Input.is_action_just_pressed("ui_right")):
		animation_player.play("right")
		velocity.x=300
		velocity.y=0
	if(Input.is_action_just_pressed("ui_left")):
		animation_player.play("left")
		velocity.x=-300
		velocity.y=0
	if(Input.is_action_just_pressed("ui_up")):
		animation_player.play("up")
		velocity.y=-300
		velocity.x=0
	if(Input.is_action_just_pressed("ui_down")):
		animation_player.play("down")
		velocity.y=300
		velocity.x=0

	move_and_slide()
