extends Node2D

@export var fire_positions: PackedVector2Array

@onready var projectile = preload("res://Player/test_projectile.tscn")

@onready var timer = $Timer

func _process(delta):
	if _is_ready_to_fire():
		_fire()
		
func _fire() -> void:
	timer.start()
	var projectile0 = projectile.instantiate()
	projectile0.direction_math(Vector2(owner.position).angle_to_point(get_global_mouse_position()))
	projectile0.rotation = snapped(Vector2(owner.position).angle_to_point(get_global_mouse_position()),0.01)
	projectile0.position = owner.position + $"..".position
	get_tree().root.add_child(projectile0)


		
func _is_ready_to_fire() -> bool:
	return timer.is_stopped() and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)
