#!/bin/bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

err() { echo "Error at line ${1}: ${2:-}"; }
trap 'err "$LINENO" "$BASH_COMMAND"' ERR

echo "Starting setup..."

sudo chmod +x "$SCRIPT_DIR"/modules/*.sh || true

bash "$SCRIPT_DIR/modules/dnf.sh"g
bash "$SCRIPT_DIR/modules/rpmfusion.sh"
bash "$SCRIPT_DIR/modules/update.sh"
bash "$SCRIPT_DIR/modules/packages.sh"
bash "$SCRIPT_DIR/modules/firmwares.sh"
bash "$SCRIPT_DIR/modules/codecs.sh"
bash "$SCRIPT_DIR/modules/flatpak.sh"
bash "$SCRIPT_DIR/modules/fonts.sh"
bash "$SCRIPT_DIR/modules/starship.sh"
bash "$SCRIPT_DIR/modules/devtools.sh"
bash "$SCRIPT_DIR/modules/onlyoffice.sh"
bash "$SCRIPT_DIR/modules/cleanup.sh"

echo "Setup complete! A reboot is recommended to ensure all changes take effect."