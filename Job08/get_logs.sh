#!/bin/bash

last alex | wc -l > /home/alex/Github/shell-exe/Job08/number_connection-$(date +'%d-%m-%Y-%R')
mkdir -p /home/alex/Github/shell-exe/Job08/Backup
tar -cvf /home/alex/Github/shell-exe/Job08/Backup/number_connection-$(date +'%d-%m-%Y-%R').tar /home/alex/Github/shell-exe/Job08/number_connection-$(date +'%d-%m-%Y-%R')
rm /home/alex/Github/shell-exe/Job08/number_connection-$(date +'%d-%m-%Y-%R')
echo "Sauvegarde logs effectuée"
