#!/bin/bash

clear

echo "Contador!"
echo "========="
echo

read -p "Digite o nome de um arquivo: " arq
echo

if [ -e $arq ]; then

	echo "Quantidade de linhas: $(wc -l $arq | cut -d ' ' -f 1)"
	echo "Quantidade de palavras: $(wc -w $arq | cut -d ' ' -f 1)"
	echo "Quantidade de caractéres: $(wc -m $arq | cut -d ' ' -f 1)"
	echo

else

	echo "Arquivo $arq não encontrado!"
	echo

fi

echo  "Fim do programa!"

