extends KinematicBody2D

export(float) var movespeed = 0
var movevec = Vector2.ZERO
var mysprite

func _ready():
	mysprite = get_node("thesprite")
	mysprite.play("idle")

func _process(delta):
	movevec.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	movevec.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	#move_and_collide(movevec * delta * movespeed)

func _physics_process(delta):
	move_and_slide(movevec * movespeed)
