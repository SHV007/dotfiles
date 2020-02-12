# colors
autoload -U colors && colors
PS1="%B%{$fg[cyan]%}[%{$fg[cyan]%}%n%{$fg[cyan]%}@%{$fg[cyan]%}%M %{$fg[cyan]%}%~%{$fg[cyan]%}]%{$reset_color%}$%b "

# Preferred editor for local and remote sessions
export VISUAL=vim
export EDITOR="$VISUAL"

# Example aliases
alias lesson="cd /home/shv/lessons/shell-lessons/"
alias lesson2="cd /home/shv/lessons/shell-lessons2/"
alias ls='ls --color=auto'
alias grep='grep --color auto'
alias diff='diff --color auto'

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
bindkey '^R' history-incremental-search-backward

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
