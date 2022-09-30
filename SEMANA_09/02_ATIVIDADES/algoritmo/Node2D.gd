extends Node2D

var array = []
var lineEdit



func _on_button_pressed():
	lineEdit = float($LineEdit.text)
	array.append(lineEdit)
	print(array)
	if len(array) >= 10:
		$button.queue_free()
		


func _on_ordenar_button_up():
	var n = len(array)
	for i in range(n-1):
		for x in range(n-1):
			if array[x] > array[x+1]:
				var new = array[x]
				array[x] = array[x+1]
				array[x+1] = new
	$ColorRect/Label3.text = str(array)
