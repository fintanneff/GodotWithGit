extends KinematicBody2D

var graphic
var bulletobject = preload("res://TopDownDemo/Player/Bullet.tscn")

onready var movevec = Vector2.ZERO
onready var snd = $soundplayer
onready var spr = $sprite

func _process(delta):
	look_at(get_global_mouse_position())
	if (Input.is_action_just_pressed("ui_select")):
		shootfunc()
		
func _physics_process(delta):
	movevec.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	movevec.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	move_and_slide(movevec * 100)
		
func shootfunc():
	var bulletinst = bulletobject.instance()
	get_tree().get_root().add_child(bulletinst)
	bulletinst.rotation = rotation
	bulletinst.position = position + Vector2.RIGHT.rotated(rotation)
	snd.play()
	spr.frame = 0
	spr.play()
