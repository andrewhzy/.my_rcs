### History settings
HISTSIZE=10000          # Number of lines kept in memory
SAVEHIST=10000          # Number of lines kept in the history file
HISTFILE=~/.zsh_history # History file location

setopt appendhistory     # Append history to the history file (instead of overwriting)
setopt share_history     # Share history between all sessions
setopt inc_append_history # Write to the history file immediately
setopt hist_ignore_all_dups # Ignore duplicate commands in history
unsetopt hist_ignore_space # Do not ignore commands that start with a space

source <(fzf --zsh)     # make sure history search is enabled