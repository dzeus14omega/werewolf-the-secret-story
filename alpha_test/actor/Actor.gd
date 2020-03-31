extends Area2D
class_name Actor 


export (String, FILE, "*.json") var dialogue_file_path : String
var id : Array
var text : Array
var enumeration : Array
var conversation : Array
var wolf : bool = false
var ability : bool = false

func _ready():
	var file = File.new()
	var dialogue: Dictionary
	file.open(dialogue_file_path, file.READ)
	dialogue = parse_json(file.get_as_text())
	file.close()
	self.conversation = dialogue.values()
	for x in conversation:
		id.push_back(x.id)
		text.push_back(x.dialog)
		enumeration.push_back(x.enu)
		pass
	#print(conversation.size())
	pass



func random_dialogue() -> String:
	var i = randi() % (text.size() - 1)
	var result = text[i]
	return result
