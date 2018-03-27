alias ap='ansible-playbook'
alias ua='sudo apt update && sudo apt dist-upgrade -y && sudo apt-get autoclean && sudo apt-get autoremove -y'
alias t='tmux new-session -As tdefault'
alias ta='tmux attach'
alias trails='tmux new-session -As trails'
alias ts='tmux kill-server'
alias r='bundle exec rails'
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'

# docker
alias dsa='sudo docker stop $(sudo docker ps -aq)'
alias drma='sudo docker rm $(sudo docker ps -qa)'
alias drmia='sudo docker rmi $(sudo docker images -q)'
