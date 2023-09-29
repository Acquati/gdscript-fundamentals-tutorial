extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		var horse_object = Horse.new('Darth Sidious', 'apple')
		var frog_object = Frog.new()
		horse_object.eat() # print Darth Sidious really wants to eat that apple.
		horse_object.sleep() # print Darth Sidious is sleeping.
		frog_object.eat() # print Eating bugs.
		frog_object.set_food('cats')
		frog_object.eat() # print Eating cats.		
		
		var _object: Object
		# var _node: Node
		var _animal: Animal
		
		_object = Frog.new() as Object
		# _node = Frog.new() as Node # error
		_animal = Frog.new() as Animal
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
