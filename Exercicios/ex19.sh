#!/bin/bash

clear

echo "===== INFORMAÇÕES DO SISTEMA ====="
echo

echo "Selecione uma opção:"

echo "1 - Data atual
2 - Versão do kernel
3 - Calendário
4 - Tempo de funcionamento
5 - Usuários conectados
6 - Processos em execução
7 - Sair"

echo
read option
echo

case $option in
	1)
		date
		echo
		;;
	2)
		uname
		echo
		;;
	3)
		cal
		echo
		;;
	4)
		uptime | cut -c 14-21
		echo
		;;
	5)
		who -q | grep -v "#"
		echo
		;;
	6)
		ps -e
		echo
		;;
	7)
		;;
	*)
		echo "Opção inválida, tente novamente"
		echo
		;;
esac

echo "Fim do programa"
