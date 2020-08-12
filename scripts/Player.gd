extends Sprite


const GRAVITY: float = 400.0
const JUMP_FORCE: float = 50.0
const MAX_HEIGHT: float = 100.0

var height: float
onready var anim = $PlayerAnimation


# Called when the node enters the scene tree for the first time.
func _ready():
	height = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global_script.is_game_started:
		height -= GRAVITY * delta
		height = clamp(height, 0, MAX_HEIGHT)
		
		if height <= 0:
			global_script.stop_game()
			get_tree().change_scene("res://GameOver.tscn")


func _input(event):
	if event.is_action_pressed("fly"):
		height += JUMP_FORCE
		if not global_script.is_game_started:
			anim.play("Fly")
			global_script.start_game()
