#!/bin/bash
DOTFILES="$HOME/dotfiles"

echo "🔧 Installing dotfiles..."

ln -sf $DOTFILES/tmux/.tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/starship/.config/starship.toml ~/.config/starship.toml
ln -sf $DOTFILES/zsh/.zshrc ~/.zshrc

echo "✅ Done!"
