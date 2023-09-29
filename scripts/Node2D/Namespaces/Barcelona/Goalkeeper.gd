extends Object

# Member Variables
var Name: String

# Class Constructor
func _init(name: String = 'Marc-André ter Stegen'):
	Name = name

func sayName() -> void:
	print('Hi! I am ', Name, ', Barcelona goalkeeper.')

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
