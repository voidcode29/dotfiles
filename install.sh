#!/usr/bin/env bash

set -euo pipefail

# Install stow if missing
if ! command -v stow >/dev/null; then
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install -y stow
    elif command -v dnf >/dev/null; then
        sudo dnf install -y stow
    elif command -v brew >/dev/null; then
        brew install stow
    else
        echo "No supported package manager found"
        exit 1
    fi
fi

# Install Oh My Zsh (OMZ) + Powerlevel10k
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

if [ ! -d "$P10K_DIR" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
fi