#!/bin/bash

clear

echo "Alterar permissões de um arquivo!"
echo "================================="
echo

read -p "Digite o nome do arquivo: " arq

if [ -e "$arq" ]; then

	echo "Escolha a permissão:"

	echo "1- 764"
	echo "2- 664"
	echo "3- 460"
	echo "4- 111"

	read option

	case $option in
		1)
			chmod 764 "$arq"
			echo "A permissão foi alterada!"
			echo
			;;
		2)
			chmod 664 "$arq"
			echo "A permissão foi alterada!"
			echo		
			;;
		3)
			chmod 460 "$arq"
			echo "A permissão foi alterada!"
			echo		
			;;
		4)
			chmod 111 "$arq"
			echo "A permissão foi alterada!"
			echo	
			;;
		*)
			echo "Opção inválida"
			echo		
			;;
	esac

else
	echo "Arquivo $arq não encontrado!!"
fi


