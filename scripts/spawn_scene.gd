@tool
extends Node3D


@onready var spawn_scene: Node3D = $"."

@export var is_on_from_start : bool = true
@export var look_at_object_when_activated : bool
@onready var scene_position : Transform3D

var scene_to_spawn = preload("res://objects/Ed-Objects/scene_to_spawn.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_scene.transform = scene_position
	
	scene_to_spawn.transform = scene_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not Engine.is_editor_hint():
		if is_on_from_start:
			scene_to_spawn = load("res://objects/Ed-Objects/scene_to_spawn.tscn")

			
		

func receive_input(on : bool) -> void:
	is_on_from_start = on
	
	if on and look_at_object_when_activated:
		get_tree().call_group("View", "look_at_target",spawn_scene)
