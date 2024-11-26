extends Node3D

@onready var rigid_body_3d: RigidBody3D = $RigidBody3D
@onready var button_presser_area_3d: Area3D = $RigidBody3D/ButtonPresserArea3D
var countdown = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	print(rigid_body_3d.linear_velocity.length()) 
	
	if rigid_body_3d.linear_velocity.length() < 0.1:
		
		countdown += delta
	
	else:
		
		countdown = 0
		
	if countdown > 0.3:
		button_presser_area_3d.monitorable = true
		
	elif rigid_body_3d.linear_velocity.length() > 1.0:
		button_presser_area_3d.monitorable = false
		
	#if rigid_body_3d.linear_velocity.length() < 0.1:
		#button_presser_area_3d.monitorable = true
		#
	#else:
		#
		#button_presser_area_3d.monitorable = false
