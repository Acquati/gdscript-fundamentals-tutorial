class Goalkeeper extends Object:
	# Member Variables
	var name: String

	# Class Constructor
	func _init(value: String = 'Thibaut Courtois'):
		name = value

	func say_name() -> void:
		print('Hi! I am ', name, ', Real Madrid goalkeeper.')

	# Called when the node enters the scene tree for the first time.
	func _ready():
		pass # Replace with function body.

	# Called every frame. 'delta' is the elapsed time since the previous frame.
	func _process(_delta):
		pass
