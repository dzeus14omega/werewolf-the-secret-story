extends KinematicBody2D
class_name Player

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	var motion = Vector2()
	if(Input.is_action_pressed("ui_left")):
		motion.x -= 1
	if(Input.is_action_pressed("ui_right")):
		motion.x += 1
	if(Input.is_action_pressed("ui_down")):
		motion.y += 1
	if(Input.is_action_pressed("ui_up")):
		motion.y -= 1
	if(motion.length() > 0):
		motion = motion.normalized() * speed
		$AnimatedSprite.play()
	#update pos of character
	#position += motion * delta
	#position.x = clamp(position.x,0,1000)
	#position.y = clamp(position.y,0,1000)
# warning-ignore:return_value_discarded
	move_and_slide(motion)
	pass
	



