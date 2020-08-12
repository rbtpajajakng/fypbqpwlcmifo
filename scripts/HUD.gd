extends Control


onready var height_bar = $HeightBar
onready var score_label = $ScoreLabel


func update_height(val: float):
	height_bar.value = val


func update_score(score: int):
	score_label.text = str(score) + " m"
