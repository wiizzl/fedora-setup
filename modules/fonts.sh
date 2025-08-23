#!/bin/bash

echo "Installing additional fonts..."

curl -Lo /tmp/FiraCode.tar.xz https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.tar.xz
tar -xf /tmp/FiraCode.tar.xz -C "$HOME/.local/share/fonts"

sudo fc-cache -fv