extends Node2D


var array1 = ["one", "two", "three", "four", "five"] #atividade 1


func _on_ButtonAtividade1_pressed():
	$Label/Label.text = str(array1)

var array2 = [] #atividade 2


func _on_ButtonAtividade2_pressed():
	array2.append($Label2/TextEdit.text)
	$Label2/Label.text = str(array2)

func _on_ButtonAtividade3_pressed():
	$Label3/Label.text = "olá, mundo"



func _on_ButtonAtividade4_pressed():
	$Label4/Label.text = $Label4/TextEdit.text
