extends Node2D


var start_pos_y = -256
var end_pos_y = 128
var speed = 30
var rng = RandomNumberGenerator.new()

onready var plant_tile = $Vegetation


# Called when the node enters the scene tree for the first time.
func _ready():
	make_vegetation()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global_script.is_game_started:
		if global_position.y < end_pos_y:
			global_position.y += speed * delta
		else:
			global_position.y = start_pos_y
			unset_vegetation()
			make_vegetation()


func make_vegetation():
	var chance
	var tile
	for y in range(8):
		for x in range(8):
			chance = rng.randi_range(0, 10)
			tile = rng.randi_range(2, 15)
			if chance < 2:
				plant_tile.set_cell(x, y, tile)


func unset_vegetation():
	for y in range(8):
		for x in range(8):
			plant_tile.set_cell(x, y, -1)
