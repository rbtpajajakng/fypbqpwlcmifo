extends Control


onready var score_label = $LabelScore


# Called when the node enters the scene tree for the first time.
func _ready():
	score_label.text = "You've flown\n" + str(global_script.scores) + " meters"
	global_script.scores = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
