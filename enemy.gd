extends CharacterBody2D




const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var HP = 100



# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	move_and_slide()



func _on_node_2d_player_slash():
	HP = HP - 50
	if HP < 0:
		queue_free()
