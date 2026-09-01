#!/bin/bash

clear

echo "Programa de edição de arquivo :)"
echo "--------------------------------"

read -p "Digite o nome do arquivo com a extensão: " nome
read -p "Digite o novo nome com a extensão: " novoNome

if [ -e "$nome" ]; then
	
	mv $nome $novoNome
	echo "Arquivo renomeado com sucesso"
	echo "Nome antigo: $nome"
	echo "Nome novo: $novoNome"
else
	echo "Arquivo nao encontrado. Tente novamente!"
fi
