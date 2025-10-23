#!/bin/bash

CURRENT_DIR=$(pwd)

# Symlink configuration files
# Use `-f` to force overwrite existing files
ln -sf $CURRENT_DIR/.bashrc ~/.bashrc
ln -sf $CURRENT_DIR/.vimrc ~/.vimrc
ln -sf $CURRENT_DIR/nvim ~/.config/nvim

echo "Dotfiles symlinking complete!"

