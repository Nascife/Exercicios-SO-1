#!/bin/bash

clear

echo "Escolha uma opção:"
echo 

echo "1. Procurar um arquivo utilizando find;
2. Procurar um comando utilizando whereis;
3. Procurar um arquivo utilizando locate."
echo

read option

case $option in
	1) 
		read -p "Digite o nome do arquivo com a extensão: " arquive
		read -p "Digite o diretório a buscar: " path
		response=$(find "$path" -name "$arquive")
		
		if [ "$response" != "" ]; then
			echo "O caminho é: $response"
		else
			echo "Arquivo não encontrado"
		fi
		;;
	2)
		read -p "Digite o nome do comando: " command
		response=$(whereis "$command")
		
		if [ "$response" != "$command:" ]; then
			echo "Eis o(s) caminho(s) de $response"
		else
			echo "Comando não encontrado"
		fi
		;;
	3)
		read -p "Digite o nome do arquivo com a extensão: " arquive
		response=$(locate "$arquive")
		
		if [ "$response" != "" ]; then
			echo "O caminho é: $response"
		else
			echo "Arquivo não encontrado"
			echo "Talvez seja precise atualizar com 'sudo updatedb'"
		fi
		;;
	*)
		echo "Opção inválida, tente novamente..."
		;;
esac
