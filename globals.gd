extends Node


var _properties := {}

func set(key, value):
	_properties[key] = value

func get(key):
	return _properties[key]
