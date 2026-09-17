#!/bin/bash

clear

echo "===== GERENCIAMENTO DE PROCESSOS ====="
echo

echo "Selecione uma opção:"

echo "1 - Listar processos
2 - Procurar processo
3 - Encerrar processo
4 - Sair"
echo

read option
echo

case $option in
	1)
		ps -e
		echo
		;;
	2)
		read -p "Digite o nome do processo: " process
		echo
		ps -e | grep "$process"
		echo
		;;
	3)
		read -p "Digite seu nome de usuário corretamente: " user
		read -p "Digite o PID do processo para encerra-lo: " pid
		echo
		
		if ps -p "$pid" > /dev/null; then	
			
			result=$(ps aux | grep "$pid" | grep -v grep | grep $user)
			
			if [ "$result" = "" ]; then
				echo "Por segurança, você não pode encerrar um processo que não pertença a você"
			else
				kill "$pid"
				echo "Processo $pid encerrado com sucesso!"
			fi	
			
		else
			echo
			echo "O processo não existe. O PID está correto?"
		fi
		echo
		;;
	4)
		;;
	*)
		echo "Opção inválida, tente novamente..."
esac

echo "Fim do programa"
