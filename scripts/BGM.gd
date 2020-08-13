extends AudioStreamPlayer


var rng = RandomNumberGenerator.new()
var tracks = [ preload("res://BGM/Art_Of_Escapism_-_Breakdown.ogg"),
				preload("res://BGM/Art_Of_Escapism_-_Dont_Feel_So_Low.ogg"),
				preload("res://BGM/Ask_Again_-_Just_Cant_Burn.ogg"),
				preload("res://BGM/J_Syreus_Bach_-_Goodbye_Grandmother.ogg"),
				preload("res://BGM/Mid-Air_Machine_-_Where_From.ogg")
			]


func play_bgm():
	rng.randomize()
	var num = rng.randi_range(0, 4)
	stream = tracks[num]
	play()
