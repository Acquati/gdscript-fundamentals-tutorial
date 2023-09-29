extends Node2D

var class_object = Human.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		class_object.unique_name # activate get  
		class_object.unique_name = "New Name" # activate set
