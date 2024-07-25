#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if ! command -v omz &> /dev/null; then
  echo "Installing Oh My Zsh..."
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
else
  echo "Oh My Zsh is already installed."
fi

# Check for Homebrew and install if we don't have it
if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

# Symlink dotfiles
echo "Setting up dotfiles..."
if [ -L ~/.zshrc ] || [ -f ~/.zshrc ]; then
  echo "Removing existing .zshrc..."
  rm -f ~/.zshrc
fi
if [ -L ~/.gitconfig ] || [ -f ~/.gitconfig ]; then
  echo "Removing existing .gitconfig..."
  rm -f ~/.gitconfig
fi
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Update Homebrew recipes
echo "Updating Homebrew..."
brew update

# Install dependencies with Brewfile
echo "Installing dependencies..."
brew tap homebrew/bundle
brew bundle --file ~/.dotfiles/Brewfile

echo "Setup complete!"
