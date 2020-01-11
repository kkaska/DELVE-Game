extends Node2D

onready var sprite = get_node("AnimatedSprite")
var anim = 'default'

func _ready():
	sprite.play(anim)