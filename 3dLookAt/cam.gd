
extends KinematicBody

var camrot = 0.0


func _ready():
	
	set_process_input(true)
	
func _input(event):
	
	if (event.type == InputEvent.MOUSE_MOTION):
		if (event.button_mask&BUTTON_MASK_MIDDLE):
			camrot -= event.relative_x*0.005
			set_rotation(Vector3(0, camrot, 0))
	
