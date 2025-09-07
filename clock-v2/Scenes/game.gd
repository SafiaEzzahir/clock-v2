extends Node2D

var blob_scene = preload("res://Scenes/blob.tscn")

var blob_poses = [Vector2(577.0, 588.0), Vector2(885.0, 334.0), Vector2(1738,822), Vector2(319.0, 259.0)]
var blobs = []

func _ready() -> void:
	for pos in blob_poses:
		var blob = blob_scene.instantiate()
		blobs.append(blob)
		blob.position = pos
		add_child(blob)
		blob.collected.connect($player._on_blob_collected)
