#!/bin/bash

dotfiles_dir=~/.dotfiles

pyenv_version=v1.2.7
nvm_version=v0.33.11

export TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins/

rm -rf ~/.vim
rm -rf ~/.vimrc
rm -rf ~/.bashrc
rm -rf ~/.bash_aliases
rm -rf ~/.tmux
rm -rf ~/.tmux.conf
rm -rf ~/.gitconfig
rm -rf ~/.gemrc
rm -rf ~/.rbenv
rm -rf ~/.pyenv
rm -rf ~/.nvm

ln -sf $dotfiles_dir/vim ~/.vim
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/bash_aliases ~/.bash_aliases
ln -sf $dotfiles_dir/tmux ~/.tmux
ln -sf $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -sf $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/gemrc ~/.gemrc

sudo apt update
sudo apt install -y \
  tmux \
  vim-nox \
  build-essential \
  curl \
  python-pip
sudo apt build-dep -y ruby2.5

git submodule update --init --recursive chdir=$dotfiles_dir

~/.tmux/plugins/tpm/bin/install_plugins

git clone --depth 1 https://github.com/rbenv/rbenv.git ~/.rbenv
git clone --depth 1 https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

git clone --depth 1 https://github.com/pyenv/pyenv.git ~/.pyenv
(cd ~/.pyenv; git checkout $pyenv_version)

git clone https://github.com/creationix/nvm.git ~/.nvm 
(cd ~/.nvm; git checkout $nvm_version)
(cd ~/.nvm; source nvm.sh)
