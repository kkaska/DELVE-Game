extends KinematicBody2D

export var speed = 100
onready var sprite = get_node("AnimatedSprite")

var velocity = Vector2()
var is_in_range = false
var state = 'Idle'

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('player_right'):
		velocity.x += 1
		state = 'Move'
	if Input.is_action_pressed('player_left'):
		velocity.x -= 1
		state = 'Move'
	if Input.is_action_pressed('player_up'):
		velocity.y -= 1
		state = 'Move'
	if Input.is_action_pressed('player_down'):
		velocity.y += 1
		state = 'Move'
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	
	get_input()
	
	velocity = move_and_slide(velocity)
	sprite.play(state)
	state = 'Idle'


func _on_range_body_entered(body):
	#print(body.get_name())
	if body != self && body.get_name() != 'TileMap':
		body.queue_free()



func _on_EnemyRange_body_entered(body):
	if body.get_name() != self.get_name():
		is_in_range = true


func _on_EnemyRange_body_exited(body):
	is_in_range = false
