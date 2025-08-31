#!/bin/bash

echo "Installing Starship..."

curl -sS https://starship.rs/install.sh | sh

echo 'eval "$(starship init bash)"' >> "$HOME/.bashrc"