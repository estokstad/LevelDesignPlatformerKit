extends Node3D

@export var ROTATIONSPEED = 1
@onready var collision_shape_3d: CollisionShape3D = $AnimatableBody3D/CollisionShape3D
@onready var grass_cylinder: AnimatableBody3D = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	grass_cylinder.rotation.z += delta * ROTATIONSPEED
