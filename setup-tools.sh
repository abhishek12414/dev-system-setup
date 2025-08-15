#!/bin/bash

# Dev System Tooling Setup Script (Run after restarting terminal and using Zsh)
set -e

log() {
  echo -e "$(tput setaf 2)[INFO]$(tput sgr0) $1"
}
error() {
  echo -e "$(tput setaf 1)[ERROR]$(tput sgr0) $1" >&2
}

log "Installing Node Version Manager (NVM)..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

log "Setup complete! You can now install Node.js and other tools using NVM."
