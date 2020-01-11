extends RigidBody2D

var size

func make_room(_pos, _size):
	position = _pos
	size = _size
	var s = RectangleShape2D.new()
	#Controls how fast the rooms move to their positions
	s.custom_solver_bias = 0.05
	s.extents = size
	$CollisionShape2D.shape = s
