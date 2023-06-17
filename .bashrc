# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

### Setup history
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth # Don't put duplicate lines or lines starting with space in the history

# Append to the history file, don't overwrite it
shopt -s histappend

### User specific environment
export PATH="$HOME/work/bin:$HOME/.local/bin:$HOME/bin:$PATH"
export LC_ALL=C.UTF-8

PS1='[\[\e[0;32m\]\u\[\e[m\]\[\e[1;34m\]@\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\]]\[\e[0;32m\]\$\[\e[m\] '

# Colorize GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Ask poetry to work without gnome keyring
export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

# Tell GPG which tty it should use
export GPG_TTY=$(tty)

### Aliases

# System aliases
alias apt-get='sudo apt-get'
alias apt='sudo apt'
alias dnf='sudo dnf'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias reload-bash='source ~/.bashrc'
alias systemctl='sudo systemctl'

# Python
alias activate='source .venv/bin/activate'

# Docker
alias di='sudo docker images'
alias docker-compose='sudo docker-compose'
alias docker='sudo docker'
alias dps='sudo docker ps'

# Git aliases
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gbd='git branch -D'
alias gc='git commit -v --signoff'
alias gco='git checkout'
alias gca='git commit -v --amend'
alias gcan='git commit --amend --no-edit'
alias gcp='git cherry-pick'
alias gcpx='git cherry-pick -x'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull'
alias glg='git log --color --graph --oneline --abbrev-commit --decorate --date=short --pretty=format:"%C(cyan)%h %C(yellow)%ad %C(bold green)%d %C(reset)%s <%C(bold blue)%an>"'
alias glm='git log --no-merges --author "Alexander Kurbatov" --oneline'
alias gp='git push'
alias gpf='git push --force'
alias gpo='git push -u origin'
alias gr='git rebase -i'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gs='git status -sb'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show -p'

# Misc
alias cls='clear'
alias emacs='emacs -nw'
alias reload-bash='source ~/.bashrc'
alias rmr='rm -rf'

if command -v exa &> /dev/null; then
    alias ls='exa -abghl --color=automatic'
fi

### Functions

# Colorize man pages
man() {
 env \
  LESS_TERMCAP_mb=$(printf "\e[1;36m") \
  LESS_TERMCAP_md=$(printf "\e[1;36m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}
