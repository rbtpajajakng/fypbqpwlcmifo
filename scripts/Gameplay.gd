extends Node


onready var hud = $HUD
onready var player = $Player


# Called when the node enters the scene tree for the first time.
func _ready():
	$ScoreTimer.connect("timeout", global_script, "increment_score")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	hud.update_score(global_script.scores)
	hud.update_height(player.height)
