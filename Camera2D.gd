extends Camera2D

var zoomspeed = 50
var zoommargin = 0.3

var zoomMin = 1.5
var zoomMax = 2

var zoompos = Vector2()
var zoomfactor = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("hold"):
		zoomfactor -= 0.01
	else:
		zoomfactor += 0.01
	
	zoom.x = lerp(zoom.x, zoom.x * zoomfactor, zoomspeed * delta)
	zoom.y = lerp(zoom.y, zoom.y * zoomfactor, zoomspeed * delta)
	
	zoom.x = clamp(zoom.x, zoomMin, zoomMax)
	zoom.y = clamp(zoom.y, zoomMin, zoomMax)
	
	zoomfactor = clamp(zoomfactor, 0.9, 1)
		
