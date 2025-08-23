#!/bin/bash
set -e

echo "Starting setup..."

./modules/dnf.sh
./modules/update.sh
./modules/rpmfusion.sh
./modules/packages.sh
./modules/firmwares.sh
./modules/codecs.sh
./modules/flatpak.sh
./modules/fonts.sh
./modules/starship.sh

echo "Setup complete!"