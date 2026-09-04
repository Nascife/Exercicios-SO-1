#!/bin/bash

clear

echo "Encerrar um processo"
echo "===================="
echo

read -p "Digite o PID de um processo: " pid

echo "PID informado: $pid"
echo "Deseja mesmo encerrar esse processo?"
echo "1- Sim"
echo "2- Não"
echo


read option
echo

case $option in
	1)
		if ps -ef | grep -v grep | grep -q $pid; then
		
			kill $pid
			echo "Processo encerrado!"
			echo
			
		else
			echo "Processo não encontrado"
		fi		
		;;
	2)
		echo "Encerrando programa..."
		echo
		;;
	*)
		echo "Opção inválida, tente novamente"
		;;
esac
