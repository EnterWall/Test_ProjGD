extends CharacterBody2D
const SPEED = 300.0
const SPEED1 = sqrt(SPEED*SPEED/2)

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var direction = Vector2(Input.get_axis("ui_left", "ui_right"),Input.get_axis("ui_up", "ui_down"))
	if direction.x * direction.x + direction.y * direction.y != 2:
		position +=direction * SPEED * delta
	elif direction:
		position +=direction * SPEED1 * delta






