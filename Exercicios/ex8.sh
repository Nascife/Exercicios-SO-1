#!/bin/bash

clear

x=1

echo "Vamos concatenar arquivos!"
echo

read -p "Digite o nome do primeiro arquivo com a extensão: " a1
read -p "Digite o nome do segundo arquivo com a extensão: " a2
read -p "Digite o nome do arquivo destino com a extensão: " a3
echo



if [ -e "$a1" ]; then

	if [ -e "$a2" ]; then	
	
		while [ $x = 1 ]; do
		
			echo "Selecione a opção desejada:"
			echo
			echo "1-Sobescrever o arquivo destino"
			echo "2-Adicionar no final do arquivo destino:"
			echo

			read option
		
			case $option in
			1)
				cat $a1 $a2 > $a3
				echo "Concatenação feita com sucesso!"
				echo
				x=0
				;;
			2)
				cat $a1 $a2 >> $a3
				echo "Concatenação feita com sucesso!"
				echo
				x=0
				;;
			*)
				echo "Opção inválida. Tente novamente:"
				echo
				;;
			esac
		done
	
	else
		echo "O arquivo $a2 não foi encontrado!"
	fi

else
	echo "O arquivo $a1 não foi encontrado!"
fi
