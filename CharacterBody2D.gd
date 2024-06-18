extends CharacterBody2D

@onready var hit = $hit_box
@onready var hurt = $hurt_box
@onready var enemy = $"../enemy"

const SPEED = 300.0

var damage_enemy = false

var P_attack = false

var take_damage = false

var attack_range = false
# Get the gravity from the project settings to be synced with RigidBody nodes.



signal attack()

func _physics_process(delta):
	# Add the gravity.

	var direction = Input.get_axis("ui_left", "ui_right" ,)
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
		

	move_and_slide()


func _on_hit_box_body_entered(body):
	if body.is_in_group("enemy"):
		print("entered attack_range")
		body = hurt
		if body == hurt:
			attack_range = true
				
		
func _process(delta):
	
	if Input.is_action_pressed("attack"):
		print("Attacking")
		P_attack = true
	
		
	if attack_range and P_attack == true:
		damage_enemy = true


func _on_hit_box_body_exited(body):
	if body.is_in_group("enemy"):
		attack_range = false
		print("Outside of range")
		


func _on_attack():
	pass # Replace with function body.









func _on_node_2d_player_slash():
	pass
