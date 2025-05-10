#!/bin/bash

dotfiles_dir=~/
dotfiles_dir=${dotfiles_dir%/}
dotfiles_dir=${dotfiles_dir}/.dotfiles

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
ln -sf $dotfiles_dir/tmux ~/.tmux
ln -sf $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -sf $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/gemrc ~/.gemrc

git submodule update --init --recursive chdir=$dotfiles_dir

brew install rbenv pyenv nvm tmux

