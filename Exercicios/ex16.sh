#!/bin/bash

clear


echo "Verificar a versão do kernel"
echo "============================"
echo

read -p "Pressione enter pra listar informações do kernel: "
echo

kernel=$(uname -s)
system=$(uname -a)

echo "Informações do Kernel: $kernel"
echo "------------------------------"
echo "$system"
echo
