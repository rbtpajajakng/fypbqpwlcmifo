extends AudioStreamPlayer


var rng = RandomNumberGenerator.new()
var tracks = [ preload("res://Free Ganymede - KieLoKaz/KieLoKaz_-_01_-_Reunion_of_the_Spaceducks_Kielokaz_ID_365.ogg"),
				preload("res://Free Ganymede - KieLoKaz/KieLoKaz_-_02_-_Trip_to_Ganymed_Kielokaz_ID_363.ogg"),
				preload("res://Free Ganymede - KieLoKaz/KieLoKaz_-_03_-_Wow_Kielokaz_ID_359.ogg"),
				preload("res://Free Ganymede - KieLoKaz/KieLoKaz_-_04_-_Just_Arround_the_World_Kielokaz_ID_362.ogg"),
				preload("res://Free Ganymede - KieLoKaz/KieLoKaz_-_05_-_Opening_Horizons_Kielokaz_ID_361.ogg"),
				preload("res://Free Ganymede - KieLoKaz/KieLoKaz_-_06_-_Krotenwurz_Kielokaz_ID_360.ogg"),
				preload("res://Free Ganymede - KieLoKaz/KieLoKaz_-_07_-_Alte_Herren_Kielokaz_ID_364.ogg")
			]


func play_bgm():
	rng.randomize()
	var num = rng.randi_range(0, 7)
	stream = tracks[num]
	play()
