extends KinematicBody2D

var graphic
var bulletobject = preload("res://Player/Bullet.tscn")

onready var snd = $soundplayer

func _process(delta):
	look_at(get_global_mouse_position())
	if (Input.is_action_just_pressed("ui_select")):
		shootfunc()
		
func shootfunc():
	var bulletinst = bulletobject.instance()
	get_tree().get_root().add_child(bulletinst)
	bulletinst.rotation = rotation
	snd.play()
