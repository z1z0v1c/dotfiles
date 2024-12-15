#!/bin/bash

CURRENT_DIR=$(pwd)

# Symlink Neovim configuration
ln -sf $CURRENT_DIR/nvim ~/.config/nvim

echo "Dotfiles symlinking complete!"

