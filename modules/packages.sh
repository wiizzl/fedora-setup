#!/bin/bash

echo "Installing additional packages..."

sudo dnf install -y $(cat "$(dirname "$0")/../lists/add-packages.txt")

echo "Removing unwanted packages...
sudo dnf remove -y $(cat "$(dirname "$0")/../lists/remove-packages.txt")"