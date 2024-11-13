extends Node2D

func _on_Nivel_1_pressed() -> void:
	print("Botón Nivel 1 presionado")
	get_tree().change_scene_to_file("res://Scenes/Nivel1.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
