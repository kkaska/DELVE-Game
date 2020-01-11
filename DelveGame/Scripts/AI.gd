extends Node

const SPEED = 100.0 

func _ready():
	owner.ai = self

func _physics_process(delta):
	var distance = owner.distance_to($Player.position)
	if distance < 5:
		var direction = ($Player.position - self.position).normalized()
		var motion = direction * SPEED * delta
		self.position += motion