export DOTFILES=$HOME/.dotfiles
export ZSH=$HOME/.oh-my-zsh
export PATH=/opt/homebrew/bin:$PATH

ZSH_THEME="skylar"
ZSH_CUSTOM=$DOTFILES

plugins=(
  asdf
  bundler
  git
  macos
  rails
)

source $ZSH/oh-my-zsh.sh
