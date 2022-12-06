#!/bin/bash


# Copier le fichier de configuration sur le serveur

cp ./config__files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config__files/ssh/Banner /etc/Banner


# Redemarrer le service sshd 

systemctl restart sshd 

# Attribution d'un login à une variable

echo "Que voulez-vous comme login pour l'utilisateur"
read login

# Création d'un utilisateur et l'ajouter au groupe root ainsi que lui créer un répertoire personnel et lui assigner un shell bash

useradd $login --create-home --groups root --gid root --shell /bin/bash
