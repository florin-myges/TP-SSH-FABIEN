#!/bin/bash

echo "Quel nom d'utilisateur souhaité vous attribué une clé publique"
read login
echo "donne ta clé"
read pubkey
keys="$(cat /home/$login/.ssh/authorized_keys | grep "$pubkey")"

if [[ $pubkey == $keys ]]
then
        echo "cette clé existe deja\n"
else
	cd /home/$login/.ssh
	echo $pubkey >> /home/$login/.ssh/authorized_keys
        echo "clé ajouté avec succès\n"
fi
