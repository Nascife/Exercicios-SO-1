#!/bin/bash

clear

echo "Painel de informações!"
echo "======================"
echo

read -p "Aperte enter pra listar as informações: "
echo

echo "1. Data atual:

	$(date)

2. Versão do kernel: 
	
	$(uname)

3. Calendário do mês atual: 

$(cal)

4. Tempo de funcionamento do sistema: 

	$(uptime | cut -c 15-18) H:m"
