extends Node


var scores: int
var is_game_started: bool


# Called when the node enters the scene tree for the first time.
func _ready():
	scores = 0
	is_game_started = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func start_game():
	is_game_started = true
	$"/root/Gameplay/ScoreTimer".start()


func stop_game():
	is_game_started = false
	$"/root/Gameplay/ScoreTimer".stop()


func increment_score():
	scores += 1
	print(scores)
