extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		var horseObject = Horse.new('Darth Sidious', 'apple')
		var frogObject = Frog.new()
		horseObject.eat() # print Darth Sidious really wants to eat that apple.
		horseObject.sleep() # print Darth Sidious is sleeping.
		frogObject.eat() # print Eating bugs.
		frogObject.setFood('cats')
		frogObject.eat() # print Eating cats.		
		
		var _object: Object
		# var _node: Node
		var _animal: Animal
		
		_object = Frog.new() as Object
		# _node = Frog.new() as Node # error
		_animal = Frog.new() as Animal
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
