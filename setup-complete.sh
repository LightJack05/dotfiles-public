#!/bin/bash
set -euxo pipefail

# Navigate to the dotfiles directory
cd ~/dotfiles

# Use GNU Stow to symlink dotfiles
stow --adopt .
# Reset any changes in the dotfiles repository
git reset --hard

# Copy root-level files to the system root
sudo cp -rv ./root/* /

# Set up nvim with plugins
nvim --headless "+Lazy! sync" +qa

# enable the hyprpolkitagent
systemctl --user enable --now hyprpolkitagent
