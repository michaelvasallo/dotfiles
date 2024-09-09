export DOTFILES=$HOME/.dotfiles
export ZSH=$HOME/.oh-my-zsh

path=(
  ~/development/flutter/bin
  $HOME/.pub-cache/bin
  $path
)

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

zstyle ':omz:update' mode auto

source $DOTFILES/functions.zsh
source $ZSH/oh-my-zsh.sh
