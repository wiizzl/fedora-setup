#!/bin/bash

echo "Updating the system..."

sudo dnf upgrade --refresh
sudo dnf update -y