extends Area2D

@export var speed = 800

@onready var notifire = $VisibleOnScreenNotifier2D

@export var derr =0

var direction_speed =Vector2(0,0)
var start = Vector2(0,0)

func direction_math(mouse_rot) -> void:
	direction_speed = Vector2((speed*2*cos(mouse_rot))/2,(speed*2*sin(mouse_rot))/2)

	
func _physics_process(delta):
	position += direction_speed * delta
	
	
func _process(delta):
	if notifire.is_on_screen() == false:
		queue_free()
