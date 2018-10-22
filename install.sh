#!/bin/sh

sudo apt update
sudo apt install tmux vim-nox ansible build-essential curl \
  python-pip -y
sudo apt build-dep ruby2.3 -y

ansible-playbook -i "localhost," -c local ./install.yml
