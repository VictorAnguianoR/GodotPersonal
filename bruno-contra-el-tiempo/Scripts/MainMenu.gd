extends Node2D


func _on_salir_pressed() -> void:
	get_tree().quit()


func _on_Jugar_pressed() -> void:
	print("El botón Jugar fue presionado")
	get_tree().change_scene_to_file("res://Scenes/LevelSelect.tscn")


	
