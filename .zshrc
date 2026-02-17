# Source zplug
source ~/.zplug/init.zsh

# Plugin setup
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "MichaelAquilina/zsh-you-should-use"

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

bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

bindkey '^X' autosuggest-accept


setopt AUTO_CD  
setopt NOCLOBBER

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

alias ll="ls -lA" 
alias ff="fastfetch"
alias cd="z"

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git:*' formats ' %F{yellow}(%b)%f'
zstyle ':vcs_info:*' actionformats ' %F{yellow}(%b|%a)%f'
zstyle ':vcs_info:*' enable git

PROMPT='%F{red}%n@%m%f %F{red}%~%f''${vcs_info_msg_0_} '


# Set the terminal title
precmd() { 
  print -Pn "\e]0;%~\a"
}

# Login message
fastfetch

export TERM=xterm-256color
export EDITOR=nvim

export XCURSOR_THEME="Bibata-Modern-Ice"
export XCURSOR_SIZE=24

eval "$(zoxide init zsh)"

export PATH=$PATH:~/Scripts

