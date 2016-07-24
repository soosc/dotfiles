```bash
$ git clone https://github.com/soosc/dotfiles.git .dotfiles
$ cd .dotfiles
$ ./install.sh
```

## .bashrc

```bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$PATH:$HOME/.local/bin"
```

```bash
$ virtualenv --python=/usr/bin/python python2
$ virtualenv --python=/usr/bin/python3 python3
$ virtualenv --relocatable python2
$ virtualenv --relocatable python3
```

## .bashrc

```bash
source $HOME/python2/bin/activate
#source $HOME/python3/bin/activate
```
