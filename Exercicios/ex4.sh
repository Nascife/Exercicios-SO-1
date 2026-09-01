#!/bin/bash

clear

echo "Programa pra mover arquivos :)"
echo "--------------------------------"

read -p "Digite o nome do arquivo com a extensão: " nome
read -p "Digite o diretório a ser movido: " diretorio

if [ -e "$nome" ]; then
	
	if [ -e "$diretorio" ]; then
		
		mv $nome $diretorio/
		echo "Arquivo movido com sucesso para $diretorio"
		
	else
		echo "O diretório não existe!"
	fi
	
else
	echo "Arquivo nao encontrado. Tente novamente!"
fi
