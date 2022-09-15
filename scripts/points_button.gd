extends Button
var curr_score = 0

func _process(delta):
	pass

func _on_TextureButton_pressed():
	curr_score += 1
	get_parent().get_node("Label2").text = str(curr_score)
	if curr_score == 69:
		get_node("../speech_nice").visible = true
	else:
		get_node("../speech_nice").visible = false
	
	if curr_score >= 100:
		var greenman = get_node("../Greenman")
		greenman.scale = Vector2(20,20)
		greenman.rotation_degrees = 0
		get_tree().paused = true
		get_node("../Label").text = "YOU ARE AT PEACE"
		get_node("../Label/Panel").visible = true
		get_node("../Label2").visible = false
		get_node("../TextureButton").visible = false
		
