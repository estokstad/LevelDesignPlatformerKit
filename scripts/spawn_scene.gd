@tool
extends Node3D


@onready var spawn_scene: Node3D = $"."
@export var is_on_from_start : bool = true
@export var scene_to_spawn: Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if is_on_from_start:
			scene_to_spawn.visible = true
		else:
			scene_to_spawn.visible = false

			
		

func receive_input(on : bool) -> void:
	is_on_from_start = on
