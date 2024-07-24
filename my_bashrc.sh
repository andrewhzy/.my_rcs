# History settings
HISTSIZE=10000          # Number of lines kept in memory
HISTFILESIZE=10000      # Number of lines kept in the history file
HISTFILE=~/.bash_history # History file location
shopt -s histappend      # Append history to the history file (instead of overwriting)
PROMPT_COMMAND='history -a' # Append to the history file immediately after each command
export HISTCONTROL=ignoredups:erasedups # Ignore duplicate commands in history

# Aliases for history search
alias hgp='history | grep'
alias hls='history | less'

# fzf
# Assuming fzf is installed via Homebrew or other package manager
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# kubectl aliases
alias k='kubectl'
alias kg='kubectl get'

# Git aliases
alias gb='git branch'
alias gba='git branch --all'

alias gck='git checkout'
alias gst='git status'

alias gl='git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
alias gld='git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --date-order'

alias gla='git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --all'
alias glad='git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --all --date-order'
