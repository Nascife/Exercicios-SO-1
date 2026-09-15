#!/bin/bash

clear

echo "===== GERENCIAMENTO DE ARQUIVOS ====="
echo

echo "Selecione uma opção:"

echo "1 - Procurar arquivo
2 - Procurar palavra em arquivo
3 - Renomear arquivo
4 - Mover arquivo
5 - Remover arquivo
6 - Comparar arquivos
7 - Sair"

echo
read option
echo

case $option in
	1)
		read -p "Digite o nome de um arquivo: " arq
		
		if [ -e "$arq" ]; then
			echo "O arquivo está em: $(find -name $arq)"
		else
			echo "Arquivo não encontrado"
		fi
		echo
		;;
	2)
		read -p "Digite o nome de um arquivo: " arq
		read -p "Digite a palavra: " word
		echo
		
		if [ -e "$arq" ]; then
			result=$(grep $word $arq)
			
			if [ "$result" != "" ]; then
				grep $word $arq
			else
				echo "Palavra não encontrada"
			fi
			
		else
			echo "Arquivo não encontrado"
		fi
		echo
		;;
	3)
		echo "Obs: o arquivo precisa estar no diretório atual pra renomea-lo 
e você não pode escolher um novo nome que seja igual a um arquivo/diretório existente.."
		echo
		read -p "Digite o nome de um arquivo a ser renomeado: " arq
		read -p "Digite o novo nome do arquivo: " newArq
		echo
		
		if [ -e "$arq" ]; then
			mv "$arq" "$newArq"
			
			echo "Arquvo $arq renomeado para $newArq com sucesso!!!"
		else
			echo "Arquivo não encontrado"
		fi
		echo
		;;
	4)
		echo "Obs: o arquivo precisa estar no diretório atual pra move-lo..."
		echo
		read -p "Digite o nome de um arquivo a ser movido: " arq
		read -p "Digite o nome do diretório destino: " dir
		echo
		
		if [ -e "$arq" ]; then
			mv "$arq" "$dir"
			
			echo "Arquvo $arq movido para $dir com sucesso!!!"
		else
			echo "Arquivo não encontrado"
		fi
		echo
		;;
	5)
		echo "Obs: o arquivo precisa estar no diretório atual pra remove-lo..."
		echo
		read -p "Digite o nome de um arquivo a ser removido: " arq
		echo
		
		if [ -e "$arq" ]; then
			rm "$arq"
			
			echo "Arquvo $arq removido com sucesso!!!"
		else
			echo "Arquivo não encontrado"
		fi
		echo
		;;
	6)
		read -p "Digite o nome do primeiro arquivo: " arq1
		read -p "Digite o nome do segundo arquivo: " arq2
		echo
		
		if [ -e "$arq1" ]; then
			if [ -e "$arq2" ]; then
				diff -y "$arq1" "$arq2"
			else
				echo "Arquivo $arq2 não encontrado"
			fi
		else
			echo "Arquivo $arq1 não encontrado"
		fi
		echo
		;;
	7)
		;;
		
	67)
		echo "Sai com esse número pra la sai..."
		echo
		;;
	*)
		echo "Opção inválida, tente novamente"
		echo
		;;
esac

echo "Fim do programa"
