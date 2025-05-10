#!/bin/zsh

dotfiles_dir=~/.dotfiles

if [[ "$PWD" != "$dotfiles_dir" ]]; then
  echo "Please run this script from the ~/.dotfiles directory."
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

rm -rf ~/.vim ~/.vimrc ~/.tmux ~/.tmux.conf ~/.gitconfig ~/.gemrc ~/.rbenv ~/.pyenv ~/.nvm

brew install rbenv ruby-build pyenv nvm tmux

ln -sf $dotfiles_dir/vim ~/.vim
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/tmux ~/.tmux
ln -sf $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -sf $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/gemrc ~/.gemrc


