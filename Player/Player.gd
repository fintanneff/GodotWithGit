extends KinematicBody2D

var graphic

func _ready():
	graphic = get_node("spoot")
	print(graphic.name)
