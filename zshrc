eval "$(rbenv init -)"

export EDITOR=vi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

path=('/opt/heroku/bin' $path)
path=('Users/andrew/.local/bin', $path)

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

[ -f ~/.env ] && source ~/.env