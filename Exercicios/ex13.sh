#!/bin/bash

clear

echo "Listar processos"
echo "================"
echo

read -p "Pressione enter pra listar todos os processos em execução da maquina..."
echo

ps -ef

echo
echo "Fim da listagem"
