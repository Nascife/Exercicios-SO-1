#!/bin/bash

clear

echo "Usuários conectados..."
echo "----------------------"
echo

echo "Você deseja listar os usuários"
echo "ou vizualizar detalhadamente?"
echo

echo "1. Lista"
echo "2. Detalhes"

read option
echo

case $option in

	1)
		echo "Estes são os usuários conectados:"
		echo
		who -q | grep -v "#"
		
		echo
		;;
	2)
		echo "Usuários conectados:"
		echo
		who
		
		echo
		;;
	*)
		echo "Opção inválida, tente novamente"
		echo
		;;
esac
