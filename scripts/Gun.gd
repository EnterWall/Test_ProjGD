extends Sprite2D

var ofset = 21
var mouse_rot = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	mouse_rot = Vector2(owner.position).angle_to_point(get_global_mouse_position())
	rotation = Vector2(owner.position).angle_to_point(get_global_mouse_position())
	if rotation < -PI/2 or rotation > PI/2:
		flip_v = true
	else:
		flip_v = false
	position = Vector2((ofset*2*cos(mouse_rot))/2,(ofset*2*sin(mouse_rot))/2)
