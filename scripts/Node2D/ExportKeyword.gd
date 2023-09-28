extends Node2D

# String assignment.
@export var aString = "Hi"

# String type.
@export var anotherString: String

# int type.
@export var aInt: int

# int enumeration.
@export_enum("Up", "Down") var enumInt: int

# String enumeration.
@export_enum("Up", "Down") var enumString: String

# String enumeration with default value.
@export_enum("Up", "Down") var enumStringInitValue: String = "Up"

# enum
enum UNIQUENAME { UP, DOWN }
@export var exampleEnum: UNIQUENAME

# int range, starts at 0.
@export_range(0, 20) var exampleRange: int

# int range starts between 2 values.
@export_range(100, 200) var exampleRange2: int

# RGB color with color red assigned as default value.
@export var color := Color(108,0,0)

# Node with default value as empty node path.
@export var node: NodePath

# Array assigned int values.
@export var array: Array = [1,2,3]

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		print("aString: ", aString)
		print("anotherString: ", anotherString)
		print("aInt: ", aInt)
		print("enumInt: ", enumInt)
		print("enumString: ", enumString)
		print("enumStringInitValue: ", enumStringInitValue)
		print("exampleEnum: ", exampleEnum)
		print("exampleRange: ", exampleRange)
		print("exampleRange2: ", exampleRange2)
		print("color: ", color)
		print("node: ", node)
		print("array: ", array)
