#!/bin/bash

echo "Installing additional fonts..."

curl -Lo /tmp/FiraCode.tar.xz https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.tar.xz

if [ ! -d "$HOME/.local/share/fonts" ]; then
  mkdir -p "$HOME/.local/share/fonts"
fi

tar -xf /tmp/FiraCode.tar.xz -C "$HOME/.local/share/fonts"
find "$HOME/.local/share/fonts" -type f ! -name "*.ttf" ! -name "*.otf" -delete

sudo fc-cache -fv