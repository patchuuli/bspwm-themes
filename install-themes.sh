#!/bin/bash

# Make directories if necessary
echo "Creating config directories..."
mkdir -p ~/.config/Xresources
mkdir -p ~/.config/bspwm
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/picom
mkdir -p ~/.config/polybar
mkdir -p ~/.wall
mkdir -p ~/.scripts
mkdir -p ~/.icons
mkdir -p ~/.themes
mkdir -p ~/.fonts
echo "Done"

# Copy over theme files (ugh)
echo "Copying theme files..."
cp Xresources/* ~/.config/Xresources
cp bin/* ~/.scripts
cp bspwm/* ~/.config/bspwm
cp sxhkd/* ~/.config/sxhkd
cp font/* ~/.fonts
cp -r icons/* ~/.icons
cp -r themes/* ~/.themes
cp picom/* ~/.config/picom
cp polybar/* ~/.config/polybar
cp wallpaper/* ~/.wall
cp .xinitrc ~/
echo "Done"

# Make some executable
echo "Making nececessary files executable..."
chmod +x ~/.config/bspwm/*
chmod +x ~/.config/sxhkd/*
chmod +x ~/.xinitrc
echo "Done"
