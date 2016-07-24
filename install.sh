#!/bin/sh

sudo apt-get update
sudo apt-get install tmux vim-nox ansible build-essential curl \
  python-pip -y
sudo apt-get build-dep ruby2.3 -y

ansible-playbook -i "localhost," -c local ./install.yml
