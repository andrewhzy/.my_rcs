# History settings
set -U fish_history 10000
set -U fish_history_file ~/.local/share/fish/fish_history
set -U fish_history_max_entries 10000

# Fish doesn't have direct equivalents to all Zsh history options, but here are the close equivalents
set -U fish_history_shared
set -U fish_history_save

# Aliases for history search
alias sls 'sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | less -R'
alias e exa
alias el 'exa -l'
alias ea 'exa -a'
alias eal 'exa -la'
alias ela 'exa -la'
alias hgp 'history | grep'
alias hls 'history | less'

# fzf
# Assuming fzf is installed via Homebrew or other package manager
# source (brew --prefix)/opt/fzf/shell/completion.fish
# source (brew --prefix)/opt/fzf/shell/key-bindings.fish

# kubectl aliases
kubectl completion fish | source
alias k 'kubectl'
alias kg 'kubectl get'
alias ka 'kubectl apply'
alias kd 'kubectl delete'

alias g 'gcloud'
alias tf 'terraform'

# Git aliases
alias gb 'git branch'
alias gba 'git branch --all'

alias gck 'git checkout'
alias gst 'git status'

alias gl 'git log --graph --decorate --pretty "%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date short'
alias gld 'git log --graph --decorate --pretty "%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date short --date-order'

alias gla 'git log --graph --decorate --pretty "%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date short --all'
alias glad 'git log --graph --decorate --pretty "%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date short --all --date-order'
