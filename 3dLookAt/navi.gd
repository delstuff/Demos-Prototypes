
extends Navigation



func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process_input(true)


func _input(event):

	if event.type == InputEvent.MOUSE_MOTION:
		var from = get_parent().get_node("Camera").project_ray_origin(event.pos)
		var to = from + get_parent().get_node("Camera").project_ray_normal(event.pos)*100
		var p = get_closest_point_to_segment(from, to)
		get_parent().get_parent().get_node("playerK").look_at(p,Vector3(0,1,0))

	"""
	if event.type == InputEvent.MOUSE_MOTION:
		var from = get_parent().get_parent().get_node("Camera").project_ray_origin(event.pos)
		var to = from + get_parent().get_parent().get_node("Camera").project_ray_normal(event.pos)*100
		var p = get_closest_point_to_segment(from, to)
		get_parent().look_at(p,Vector3(0,1,0))
	"""