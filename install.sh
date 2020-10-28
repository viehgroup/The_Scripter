#!/bin/bash

apt-get install figlet

echo "Installing Stabilize Shell Dependencies"

apt-get install xdotool
sudo apt-get install xautomation

echo "Installing SSH Cracker Dependencies"

apt-get install john -y

echo "Installing Hash Cracker Dependencies"

pip3 install futures
pip3 install argparse
pip3 install requests

echo "Installing Docker ............." 
sudo apt-get update
sudo apt-get install  docker
sudo apt-get install docker.io


chmod +x $PWD/the_scripter.sh
chmod +x $PWD/scripts/juice.sh
chmod +x $PWD/scripts/add_cronjob.sh
chmod +x $PWD/scripts/add_ssh_key.sh
chmod +x $PWD/scripts/function.sh
chmod +x $PWD/scripts/Hash_Cracker.py
chmod +x $PWD/scripts/myrecon
chmod +x $PWD/scripts/Password_Genrator.sh
chmod +x $PWD/scripts/payloadgen.sh
chmod +x $PWD/scripts/shell_stabalize.sh
chmod +x $PWD/scripts/ssh_cracker
chmod +x $PWD/scripts/stabilize_zsh_shell.sh
chmod +x $PWD/scripts/webserver.sh






