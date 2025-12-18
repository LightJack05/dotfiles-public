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

# Note that a regeneration of initramfs and grub config may be required after this step
echo "Remember to regenerate initramfs and update grub config if necessary."

gsettings set org.gnome.mutter.wayland xwayland-grab-access-rules "['VirtualBox Machine']" || true
