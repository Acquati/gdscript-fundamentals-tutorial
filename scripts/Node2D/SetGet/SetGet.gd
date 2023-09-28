extends Node2D

var classObject = Human.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		classObject.UniqueName # activate get  
		classObject.UniqueName = "New Name" # activate set
