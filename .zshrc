# Source zplug
source .zplug/init.zsh

# Plugin setup
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug load 

# Enable history
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL=ignoredups
HISTFILE=~/.zsh_history

autoload -U compinit
compinit

autoload -U up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

setopt AUTO_CD  
setopt NOCLOBBER

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

alias ll="ls -lA" 
alias ff="fastfetch"

PROMPT="%F{red}%n@%m%f %F{red}%~ %f"

# Set the terminal title
precmd() { 
  print -Pn "\e]0;%~\a"
}

# Allow auto-correction
setopt correct

# Login message
fastfetch

export TERM=xterm-256color
export EDITOR=nvim

export XCURSOR_THEME="Bibata-Modern-Ice"
export XCURSOR_SIZE=24
