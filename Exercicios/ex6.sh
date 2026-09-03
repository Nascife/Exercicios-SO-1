#!/bin/bash

clear

read -p "Digite uma palavra ou frase: " string
read -p "Digite o nome do arquivo com a extensão: " arquive

if [ -e "$arquive" ]; then

	response=$(grep "$string" $arquive)
	
	if [ "$response" != "" ]; then
		echo "A palavra/frase foi encontrada em:"
		echo $response
	else
		echo "A palavra/frase não foi encontrada"
	fi
else
	echo "Arquivo $arquive não existe!"
fi
