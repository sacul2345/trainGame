extends Camera3D

const SPEED = 5

var inputVector: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	inputVector = Input.get_vector("ui_down","ui_up","ui_left","ui_right")

	h_offset += inputVector.y * SPEED * delta
	v_offset += inputVector.x * SPEED * delta
	
	if(Input.is_action_pressed("zoomIn") and size > .5):
		size -= 3 * delta
		print(size)
	if(Input.is_action_pressed("zoomOut") and size < 5):
		size += 3 * delta
		print(size)
