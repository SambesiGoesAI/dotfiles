#!/bin/bash
DOTFILES="$HOME/dotfiles"

echo "🔧 Updating dotfiles..."

if [ -d "$DOTFILES/.git" ]; then
  cd $DOTFILES && git pull
else
  git clone https://SambesiGoesAI:TOKEN@github.com/SambesiGoesAI/dotfiles.git $DOTFILES
fi

mkdir -p ~/.config
ln -sf $DOTFILES/tmux/.tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/starship/.config/starship.toml ~/.config/starship.toml
ln -sf $DOTFILES/zsh/.zshrc ~/.zshrc

echo "✅ Done!"
