#!/bin/bash

echo "Cleaning up..."

sudo dnf autoremove -y
sudo dnf clean all