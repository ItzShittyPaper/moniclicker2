extends Label

var score = 0

func _process(_delta):
	get_node("/root/Node2D/score_label").text = str(score)
	
	if(score == 100):
		get_node("/root/Node2D/audio_records/record_100").play()
		
		get_node("/root/Node2D/sprites/animation").play("doge_unfold")
		

	if(score == 250):
		get_node("/root/Node2D/audio_records/record_250").play()
		get_node("/root/Node2D/sprites/animation").play("pepe_unfold")

	if(score == 500):
		get_node("/root/Node2D/sprites/nyan_cat").play()

	if(score == 666):
		get_node("/root/Node2D/audio_records/record_250").play()
		get_node("/root/Node2D/sprites/dollar_card").play()

	if(score == 777):
		get_tree().change_scene("res://scenes/end_game.tscn")

func _on_Button_pressed():
	get_node("/root/Node2D/base_clicker/button_click_audio").play()
	score += 1
	print(score)


func _on_timer_10s_timeout():
	
	pass # Replace with function body.

func _on_timer_100s_timeout():
	score += 1000
	pass # Replace with function body.

func _on_animation_animation_finished(doge_unfold, pepe_unfold):
	get_node("/root/Node2D/sprites/animation").stop()
