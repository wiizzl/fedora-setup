#!/bin/bash

echo "Cleaning up..."

sudo dnf clean all
sudo dnf autoremove -y