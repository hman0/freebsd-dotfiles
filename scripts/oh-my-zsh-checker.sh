#!/usr/bin/env zsh

# check if oh my zsh is installed
if [[ ! -f "$HOME/.oh-my-zsh/oh-my-zsh.sh" ]]; then
  echo "oh my zsh not found. attempting to install..."

  RUNZSH=no CHSH=no KEEP_ZSHRC=yes sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  if [[ $? -eq 0 ]]; then
    echo "oh my zsh installed successfully."
  else
    echo "failed to install oh my zsh automatically."
    return 1
  fi
fi

# check if zsh-syntax-highlighting plugin is cloned
if [[ ! -d "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting" ]]; then
  echo "zsh-syntax-highlighting plugin not found. cloning..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"

  if [[ $? -eq 0 ]]; then
    echo "zsh-syntax-highlighting plugin cloned successfully."
  else
    echo "failed to clone zsh-syntax-highlighting plugin."
    return 1
  fi
fi

