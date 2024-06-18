extends Node2D

signal player_slash

@onready var player = $CharacterBody2D
@onready var spawn = $spawn


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.damage_enemy:
		player_slash.emit()
		


func _on_player_slash():
	pass # Replace with function body.


	



func _on_timer_2_timeout():
	pass # Replace with function body.
