export DOTFILES=$HOME/.dotfiles
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="skylar"
ZSH_CUSTOM=$DOTFILES

plugins=(
  bundler
  flutter
  git
  macos
  mise
  rails
)

path=(
  $HOME/.local/opt/flutter/bin
  $HOME/.local/bin
  $HOME/.pub-cache/bin
  /opt/homebrew/bin
  $path
)

source $DOTFILES/functions.zsh
source $ZSH/oh-my-zsh.sh

zstyle ':omz:update' mode auto
