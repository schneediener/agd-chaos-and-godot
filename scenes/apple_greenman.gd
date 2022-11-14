extends Sprite
var new = false

func _process(delta):
	modulate += Color(0,0,0,0.01)
	


func _on_Timer_timeout():
	get_node("../Label").visible = true
