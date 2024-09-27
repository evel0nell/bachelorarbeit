#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package list
echo "Updating package list..."
sudo apt update

# Install required packages
echo "Installing required packages..."
sudo apt install -y cargo pkg-config libssh-dev cmake openssl git

# Clone the Scaphandre repository
echo "Cloning Scaphandre repository..."
git clone https://github.com/hubblo-org/scaphandre.git

# Change to the scaphandre directory
cd scaphandre

# Build the project using Cargo
echo "Building the project..."
sudo cargo build

# Inform user about the binary location
echo "Build completed! The binary can be found at target/debug/scaphandre"

