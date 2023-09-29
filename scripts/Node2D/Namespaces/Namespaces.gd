extends Node2D

var BarcelonaGoalkeeper = load('res://scripts/Node2d/Namespaces/Barcelona/Goalkeeper.gd')
# var RealMadridGoalkeeper = load('res://scripts/Node2d/Namespaces/RealMadrid/Goalkeeper.gd')
var GoalkeeperRef = load('res://scripts/Node2d/Namespaces/RealMadrid/Goalkeeper.gd')
var Goalkeeper = GoalkeeperRef.Goalkeeper

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		var goalkeeper1Instance = BarcelonaGoalkeeper.new()
		goalkeeper1Instance.sayName()
		var goalkeeper2Instance = Goalkeeper.new()
		goalkeeper2Instance.sayName()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
