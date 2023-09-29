class Goalkeeper extends Object:
	# Member Variables
	var Name: String

	# Class Constructor
	func _init(name: String = 'Thibaut Courtois'):
		Name = name

	func sayName() -> void:
		print('Hi! I am ', Name, ', Real Madrid goalkeeper.')

	# Called when the node enters the scene tree for the first time.
	func _ready():
		pass # Replace with function body.

	# Called every frame. 'delta' is the elapsed time since the previous frame.
	func _process(_delta):
		pass
