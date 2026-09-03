#!/bin/bash

clear

echo "Informações do usuário"
echo "----------------------"
echo

read -p "Informe o nome de um usuário: " user

echo

response=$(grep "^$user:" /etc/passwd)


if [ "$response" != "" ]; then
	
	diretorio=$(cut -d ":" -f 6 <<< "$response")
	
	rawSize=$(du "$diretorio" -sh)
	
	size=$(cut -d "/" -f 1 <<< "$rawSize")
	
	echo "Nome do usuário: $user"
	echo "Diretório de trabalho: $diretorio"
	echo "Espaço utilizado no disco pelo diretório do usuário: $size"	
	echo
	
else
	echo "Usuário $user não encontrado!"
	echo
fi
