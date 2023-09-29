extends Node2D

var Animal = AnimalDuckTyping.new()
var Duck = DuckDuckTyping.new()
var Circle = CircleDuckTyping.new()

func _ready():
	if (is_visible()):
		let_it_fly(Animal)
		let_it_fly(Duck)
		let_it_fly(Circle)
		# let_it_fly(5)
		
		# These will work, fly method will be called.
		animal_flies(Animal)
		animal_flies(Duck)
		
		# This doesn't go through, throws error in Godot Editor.
		# animal_flies(Circle.new()) # Error, Doesnt match function argument type.
		
		# This will run, throws an error when you try to use fly method in the function.
		# animal_flies(Circle) # Error, Pass in Null Value, Null doesn't Fly lol.
		
		# Doesn't escape our if statement safety check!
		animal_flies_safely(Animal)
		animal_flies_safely(Duck)
		animal_flies_safely(Circle) # Object class circle is casted/turned into a null value
		animal_flies_safely(null)

# No Type Safety.
func let_it_fly(flying_object) -> void:
	flying_object.fly()

# With Type Safety.
func animal_flies(animal_object: AnimalDuckTyping) -> void:
	animal_object.fly() # comes with auto complete

# Check for the objects casted as Nulls
func animal_flies_safely(animal_object) -> void:	
	# Option 1
	if animal_object == null:
		print('object/value does not fly.')
		return
	
	# Option 2
	if (animal_object is AnimalDuckTyping) == false:
		print('Animal Class not part of Inheritance Chain.')
		return
	
	# Do whatever you want, you're an animal!
	print('Continue on ;)')
