# a.kurbatov@ .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export LC_ALL=C.UTF-8

# User specific aliases and functions
alias dnf='sudo dnf'
alias docker-compose='sudo docker-compose'
alias docker='sudo docker'
alias dps='sudo docker ps'

alias semacs='sudo emacs -u a.kurbatov'
