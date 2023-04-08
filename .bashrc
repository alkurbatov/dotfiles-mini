# a.kurbatov@ .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

### User specific environment
export PATH="$HOME/work/bin:$HOME/.local/bin:$HOME/bin:$PATH"
export LC_ALL=C.UTF-8

### User specific aliases and functions

# System aliases
alias apt-get='sudo apt-get'
alias apt='sudo apt'
alias dnf='sudo dnf'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias systemctl='sudo systemctl'

# Docker
alias docker-compose='sudo docker-compose'
alias docker='sudo docker'
alias dps='sudo docker ps'

# Misc
alias cls='clear'
alias emacs='emacs -nw'
alias semacs='sudo emacs -u a.kurbatov'
alias rmr='rm -rf'
