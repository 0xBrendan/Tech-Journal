#!/bin/bash

#secure-ssh.sh
#author brendan
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in

USERN=$1

sudo useradd -m -d /home/$USERN -s /bin/bash $USERN
sudo mkdir /home/$USERN/.ssh
sudo cp ../../../sys265/linux/public-keys/id_rsa.pub /home/$USERN/.ssh/authorized_keys
sudo chmod 700 /home/$USERN/.ssh
sudo chmod 600 /home/$USERN/.ssh/authorized_keys
sudo chown -R $USERN:$USERN /home/$USERN/.ssh

