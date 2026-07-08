#!/usr/bin/env bash

set -e

if command -v brew >/dev/null; then
    brew install stow
fi

if command -v apt >/dev/null; then
    sudo apt update
    sudo apt install -y stow
fi

stow */