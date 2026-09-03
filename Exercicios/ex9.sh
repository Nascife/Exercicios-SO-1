#!/bin/bash

clear

echo "Vamos comparar dois arquivos"
echo

read -p "Digite o nome do primeiro arquivo com extensão: " a1
read -p "Digite o nome do segundo arquivo com extensão: " a2

if [ -e "$a1" ]; then

	if [ -e "$a2" ]; then	
	
		if diff "$a1" "$a2" > /dev/null; then
	
			echo "Os arquivos são iguais!"
		else
			
			echo "Os arquivos são diferentes:"
			
			diff -y "$a1" "$a2"
		fi
	
	else
		echo "O arquivo $a2 não foi encontrado!"
	fi

else
	echo "O arquivo $a1 não foi encontrado!"
fi


