#!/bin/bash

# Update curren package
pacman -Syu

# Install arch packages
pacman -S \
syncthing \
emacs \
git \
ripgrep \
clang \
tar \
fd \
aspell-en \
chromium \
racket \
xclip
