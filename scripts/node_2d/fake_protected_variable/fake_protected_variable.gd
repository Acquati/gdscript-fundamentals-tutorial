# Not working on Godot 4.1.1
extends Node2D

var animal := AnimalsFakeProtectedVariable.new()
var frog := FrogFakeProtectedVariable.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		# animal._protectedVariable = 'New Value' # print Animals Error: Can't Access Private Variable Setter.
		# print(animal._protectedVariable) # null is returned, print Animals Error: Can't Access Private Variable Getter.
		animal.changeValue()
		# frog.changeValue()
