extends Node2D

var blobs_collected = 0

func _on_blob_collected():
	blobs_collected += 1
	$CharacterBody2D/Label.text = str(blobs_collected)
