### History settings
HISTSIZE=10000          # Number of lines kept in memory
SAVEHIST=10000          # Number of lines kept in the history file
HISTFILE=~/.zsh_history # History file location
setopt appendhistory     # Append history to the history file (instead of overwriting)
setopt share_history     # Share history between all sessions
setopt inc_append_history # Write to the history file immediately
setopt hist_ignore_all_dups # Ignore duplicate commands in history
unsetopt hist_ignore_space # Do not ignore commands that start with a space
alias hgp=' history | grep'
alias hls=' history | less'



### common alias
alias lla='ll -a'
alias lessS='less -S'
alias sls='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | less -R'



### fzf
source <(fzf --zsh)



### kubectl
alias k='   kubectl'
alias kg='  kubectl get'
kcd() {
  if [ -z "$1" ]; then
    echo "Usage: kcd <namespace>"
  else
    kubectl config set-context --current --namespace="$1"
    echo "Switched to namespace: $1"
  fi
}



### git ### for these alias, I leanrnt something from on-my-zsh git plugin, especially the "--pretty" parameter
alias gb='      git branch'
alias gba='     git branch --all'

alias gck='     git checkout'
alias gst='     git status'

alias gl='      git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
alias gld='     git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --date-order'
# alias glo='     git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
# alias glod='    git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --date-order'

alias gla='     git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --all'
alias glad='    git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --all --date-order'
# alias glao='    git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --all'
# alias glaod='   git log --graph --decorate --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short --all --date-order'

# alias glp1='    gt log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
# alias glp1s='   git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
# alias glp2='    git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
# alias glp2a='   git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
# alias glp2s='   git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'

