#!/bin/bash

clear

echo "Vamos excluir um arquivo!"

read -p "Digite o nome do arquivo a ser excluido com a extensão: " arquivo

if [ -e "$arquivo" ]; then
	rm $arquivo
	echo "Arquivo excluido com sucesso!"
	
else
	echo "O arquivo nao existe"
	echo "Tente novamente"
fi
