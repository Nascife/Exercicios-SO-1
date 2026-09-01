#!/bin/bash

clear

echo "Bem vindo a calculadora no shell!!"

read -p "Digite o primeiro número: " n1
read -p "Digite o segundo número: " n2

echo "Agora selecione a opção desejada digitando o numero:"

echo "1. Soma
2. Subtração
3. Multiplicação
4. Divisão
5. Sair"

read opcao

case $opcao in
1)
echo "A soma é $(expr $n1 + $n2)!"
;;
2)
echo "A subtração é $(expr $n1 - $n2)!"
;;
3)
echo "A multiplicação é $(expr $n1 \* $n2)!"
;;
4)
echo "A divisão é $(expr $n1 / $n2)!"
;;
5)
echo "Saindo..."
;;
*)
echo "Opção errada, tente novamente"
esac
