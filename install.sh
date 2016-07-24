#!/bin/sh

sudo apt-get update
sudo apt-get install tmux vim-nox ansible -y

ansible-playbook -i "localhost," -c local ./install.yml
