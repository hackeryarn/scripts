#!/bin/bash

# Update curren package
pacman -Syu

# Install arch packages
pacman -S \
syncthing \
neovim \
git \
tmux \
neorim \
fzf \
ripgrep \
clang \
tar \
fd \
aspell-en \
chromium \
racket \
xclip \
pyenv
