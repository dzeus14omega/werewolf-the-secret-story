extends Actor
class_name Hunter

func _ready():
	._ready()
	pass

###------------------ Show dialog-----------------###
#####################################################

func _process(delta):
	$AnimatedSprite.play("idle")
	pass

func _on_hunter_body_entered(body):
	self.get_node("Control/RichTextLabel").set_bbcode(random_dialogue())
	self.get_node("Control").visible = true
	#$CollisionShape2D.set_deferred("disabled", true)

func _on_hunter_body_exited(body):
	self.get_node("Control").visible = false
	pass # Replace with function body.

func cast_ability():
	#code...
	self.ability = true
	pass
