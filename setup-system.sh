#!/bin/bash

# Clone configs
git clone git@github.com:hackeryarn/.doom.d.git ~/.doom.d

# Setup doom emacs
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# Setup kwin-tiling
git clone https://github.com/kwin-scripts/kwin-tiling.git ~/dev/kwin-tiling
cd ~/dev/kwin-tiling
plasmapkg2 --type kwinscript -i .
cd -
kcmshell5 kwinscripts

# Setup python
curl https://pyenv.run | bash
echo 'export PATH="/home/hackeryarn/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Update shell session
source ~/.bashrc
