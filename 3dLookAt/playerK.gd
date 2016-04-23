
extends KinematicBody

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	
	set_fixed_process(true)
	
func _fixed_process(delta):
	
	
	#Movement:
	var up = get_parent().get_node("camPos/n").get_global_transform().origin
	var down = get_parent().get_node("camPos/s").get_global_transform().origin
	var left = get_parent().get_node("camPos/w").get_global_transform().origin
	var right = get_parent().get_node("camPos/e").get_global_transform().origin
	var pos = get_global_transform().origin
	
	if Input.is_action_pressed("ui_up"):
		move((up-pos)*delta)
	if Input.is_action_pressed("ui_down"):
		move((down-pos)*delta)
	if Input.is_action_pressed("ui_left"):
		move((left-pos)*delta)
	if Input.is_action_pressed("ui_right"):
		move((right-pos)*delta)
		
	#Camera:
	var cam = get_parent().get_node("camPos")
	var camPos = cam.get_global_transform().origin
	
	cam.move_to(camPos.linear_interpolate(pos,0.2))
	
	
	


