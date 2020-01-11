extends KinematicBody2D


var speed = 0.5
onready var player = get_parent().get_node('Player')
onready var sprite = get_node("AnimatedSprite")
var anim = 'default'

func ai_get_direction():
	return player.position - self.position

func ai_move():
	if player.is_in_range == true:
		var direction = ai_get_direction()
		var motion = direction * speed
		move_and_slide(motion)
		sprite.play(anim)

func _physics_process(delta):
		ai_move()
