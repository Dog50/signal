extends Node

var enemy_scene =preload("res://enemy.tscn")


@onready var spawn = $"../spawn"

@onready var World = get_node("/root/World")




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_timer_2_timeout():
	var enemy = enemy_scene.instantiate()
	enemy.position = spawn.position
	World.add_child(enemy)
