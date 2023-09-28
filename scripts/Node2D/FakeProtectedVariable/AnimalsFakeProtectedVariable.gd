# Not working on Godot 4.1.1
extends Node

class_name AnimalsFakeProtectedVariable

var _protectedVariable: String = "Protected Variable": set = protectedSet, get = protectedGet

func protectedSet(_parameter):
	print('Animals Error: Can\'t Access Private Variable Setter.')

func protectedGet():
	print('Animals Error: Can\'t Access Private Variable Getter.')

func changeValue():
	print("Animal Class Before Change: ", self._protectedVariable)
	self._protectedVariable = 'Value changed inside class Animals.' # Local access.
	print("Animal Class After Change: ", self._protectedVariable)
