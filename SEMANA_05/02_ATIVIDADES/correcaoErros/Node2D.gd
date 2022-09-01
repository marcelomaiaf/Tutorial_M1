extends Node2D

var teste = false
var valor = 0
var numero = 0 #tirei o acento da variável, pois não pode
var lista = [] #faltava var
var cont #não havia sido declarada
var i #essa var tambem não havia sido declarada
var nome = "" #faltava essa variável


func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($Button/LineEdit.text) #fazer a ligação de lineEdit por dentro de Button
	nome = $Button/LineEdit2.text  #a variável estava depois do valor, ela deve estar antes
	print(nome)
	


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i
	$Label.text = str(numero) #converter para string
	lista.append(numero) #a váriavel estava escrita com letra maiúscula


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#colocamos o for para identificar se era impar o i
	for i in lista: 
		if i%2 == 1:
			nome = nome+"baldo"
			break
	$Label2.text = nome
