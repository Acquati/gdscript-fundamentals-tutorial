extends Node2D

var Animal = AnimalDuckTyping.new()
var Duck = DuckDuckTyping.new()
var Circle = CircleDuckTyping.new()

func _ready():
	if (is_visible()):
		letItFly(Animal)
		letItFly(Duck)
		letItFly(Circle)
		# letItFly(5)
		
		# These will work, fly method will be called.
		animalFlies(Animal)
		animalFlies(Duck)
		
		# This doesn't go through, throws error in Godot Editor.
		# animalFlies(Circle.new()) # Error, Doesnt match function argument type.
		
		# This will run, throws an error when you try to use fly method in the function.
		# animalFlies(Circle) # Error, Pass in Null Value, Null doesn't Fly lol.
		
		# Doesn't escape our if statement safety check!
		animalFliesSafely(Animal)
		animalFliesSafely(Duck)
		# animalFliesSafely(Circle) # Object class circle is casted/turned into a null value

# No Type Safety.
func letItFly(flyingObject):
	flyingObject.fly()


# With Type Safety.
func animalFlies(animalObject: AnimalDuckTyping):
	animalObject.fly() # comes with auto complete


# Check for the objects casted as Nulls
func animalFliesSafely(animalObject: AnimalDuckTyping):
	
	# Option 1
	if animalObject == null:
		print('object/value does not fly.')
		return
	
	# Option 2
	if (animalObject is AnimalDuckTyping) == false:
		print('Animal Class not part of Inheritance Chain.')
		return
	
	# Do whatever you want, you're an animal!
	print('Continue on ;)')
