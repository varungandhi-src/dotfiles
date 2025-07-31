#!/bin/bash

# Script to set up symlinks from dotfiles repo to home directory
# This assumes dotfiles repo is at ~/code/dotfiles

DOTFILES_DIR="$HOME/code/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "Setting up symlinks from $DOTFILES_DIR to $HOME..."

# Create .config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Remove existing symlinks/files/directories
echo "Removing existing symlinks..."
rm -rf "$CONFIG_DIR/fish"
rm -rf "$CONFIG_DIR/tmux"
rm -f "$CONFIG_DIR/starship.toml"

# Create new symlinks
echo "Creating new symlinks..."
ln -sf "$DOTFILES_DIR/.config/fish" "$CONFIG_DIR/fish"
ln -sf "$DOTFILES_DIR/.config/tmux" "$CONFIG_DIR/tmux"
ln -sf "$DOTFILES_DIR/.config/starship.toml" "$CONFIG_DIR/starship.toml"

# Verify symlinks
echo "Verifying symlinks..."
ls -la "$CONFIG_DIR/fish"
ls -la "$CONFIG_DIR/tmux"
ls -la "$CONFIG_DIR/starship.toml"

echo "Symlink setup complete!"
