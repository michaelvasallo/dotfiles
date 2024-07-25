# Michael's Dotfiles

This repository contains the configuration files to set up a developer environment on a fresh macOS install. Follow the steps below to get started.

## Prerequisites

Ensure you have the following installed:

- macOS
- Git

## Installation

1. **Clone the repository**:

   Open Terminal and clone this repository to your home directory:

   ```sh
   git clone https://github.com/michaelvasallo/dotfiles.git ~/.dotfiles
   ```

2. **Run the setup script**:

   Navigate to the `.dotfiles` directory and run the setup script:

   ```sh
   cd ~/.dotfiles
   ./setup.sh
   ```

   This script will:

   - Install Oh My Zsh if it isn't already installed.
   - Install Homebrew if it isn't already installed.
   - Symlink the `.zshrc` and `.gitconfig` files to your home directory.
   - Update Homebrew and install the dependencies listed in the `Brewfile`.

3. **Restart your terminal**:

   After running the setup script, restart your terminal to apply the changes.
