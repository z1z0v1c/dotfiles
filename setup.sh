#!/bin/bash

CURRENT_DIR=$(pwd)

# Symlink configuration files

# Use `-f` to force overwrite existing files
ln -sf $CURRENT_DIR/nvim ~/.config/nvim
ln -sf $CURRENT_DIR/.vimrc ~/.vimrc

echo "Dotfiles symlinking complete!"

