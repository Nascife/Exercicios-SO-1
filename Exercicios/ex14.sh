#!/bin/bash

clear

echo "Vamos procurar um processo!"
echo "==========================="
echo

read -p "Digite o nome do processe que gostaria de encontrar: " process

ps -ef | grep "$process"




