#!/bin/bash

clear

echo "Verificar se o usúario existe"
echo "_____________________________"

read -p "Digite o nome do usuário: " usuario

if grep -q "^$usuario:" /etc/passwd  ; then
	echo "Existe o usuário $usuario"
	
else
	echo "Não existe o usuário $usuario"
fi

