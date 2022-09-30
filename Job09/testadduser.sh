#!/bin/bash

INPUT=/home/alex/Github/shell-exe/Job09/Shell_Userlist.csv
IFS=','
i=1

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read Id Prenom Nom Mdp Role

do

Prenom=${Prenom//[[:blank:]]/}

test $i -eq 1 && ((i=i+1)) && continue

if [ $Role = "Admin" ]; then
	sudo useradd $Prenom
	echo "$Prenom:$Mdp" | sudo chpasswd
	sudo usermod -aG sudo $Prenom
else
	sudo useradd $Prenom
	echo "$Prenom:$Mdp" | sudo chpasswd
fi

done < $INPUT
