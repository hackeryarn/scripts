#!/bin/bash

# Install drivers
mhwd -a pci nonfree 0300

# Setup Xorg configuration
rm /etc/X11/xorg.conf.d/90-mhwd.conf
cp ./configs/optimus.conf /etc/X11/xorg.conf.d/optimus.conf

# Refine blacklist
rm /etc/modprobe.d/mhwd*
cp ./configs/nvidia.conf /etc/modprobe.d/nvidia.conf

# Enable nvidia-drm.modeset
cp ./configs/nvidia-drm.conf /etc/modprobe.d/nvidia-drm.conf

# Setup output source for KDE
# cp ./configs/Xsetup /usr/share/sddm/scripts/Xsetup
# chmod a+rx /usr/share/sddm/scripts/Xsetup

# Setup output source for Gnome
cp ./configs/optimus.desktop /usr/local/share/optimus.desktop
sudo ln -s /usr/local/share/optimus.desktop /usr/share/gdm/greeter/autostart/optimus.desktop
sudo ln -s /usr/local/share/optimus.desktop /etc/xdg/autostart/optimus.desktop
