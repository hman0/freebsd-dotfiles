export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

plugins=(git zsh-syntax-highlighting)

neofetch

nvim() {
  echo -ne "\033]0;nvim\007"
  command nvim "$@"
  echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"
}


alias tldr=/compat/ubuntu/bin/tldr-hs

export GTK_THEME="catppuccin-mocha-pink-standard+default"

export XCURSOR_THEME="Bibata-Modern-Ice"
export XCURSOR_SIZE=24

export PATH="$HOME/.local/bin:$PATH"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/scripts/oh-my-zsh-checker.sh
source $ZSH/oh-my-zsh.sh
