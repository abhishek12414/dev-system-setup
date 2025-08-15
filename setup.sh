
#!/bin/bash

# Dev System Setup Script - Zsh & Oh My Zsh
set -e

log() {
  echo -e "$(tput setaf 2)[INFO]$(tput sgr0) $1"
}
error() {
  echo -e "$(tput setaf 1)[ERROR]$(tput sgr0) $1" >&2
}

if [ "$EUID" -ne 0 ]; then
  log "Some steps require sudo privileges. You may be prompted for your password."
fi

read -p "Enter your name: " name
if [ -z "$name" ]; then
  error "Name cannot be empty."
  exit 1
else
  log "Hi, $name!"
fi

read -p "Enter your email: " email
if [ -z "$email" ]; then
  error "Email cannot be empty."
  exit 1
else
  log "Your email is $email"
fi

log "Configuring Git..."
git config --global color.ui true
git config --global user.name "$name"
git config --global user.email "$email"

log "Generating SSH key (RSA 4096)..."
ssh-keygen -t rsa -b 4096 -C "$email" -f "$HOME/.ssh/id_rsa" || error "SSH keygen failed."

log "Updating apt packages..."
sudo apt update

log "Installing Zsh..."
sudo apt install -y zsh
zsh --version
chsh -s "$(which zsh)"

log "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

log "Setting up Oh My Zsh theme..."
THEME_DIR="$HOME/.oh-my-zsh/themes"
mkdir -p "$THEME_DIR"
curl -fsSL https://gist.githubusercontent.com/bradp/a52fffd9cad1cd51edb7/raw/cb46de8e4c77beb7fad38c81dbddf531d9875c78/brad-muse.zsh-theme -o "$THEME_DIR/brad-muse.zsh-theme"

log "Setting up Zsh plugins..."
PLUGIN_DIR="$HOME/.oh-my-zsh/custom/plugins"
mkdir -p "$PLUGIN_DIR"
if [ ! -d "$PLUGIN_DIR/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$PLUGIN_DIR/zsh-syntax-highlighting"
fi

log "Setting Zsh as default shell..."
chsh -s /bin/zsh

log "Zsh and Oh My Zsh setup complete!"
log "Please restart your terminal and then run 'setup-tools.sh' to continue with Node and tooling setup."