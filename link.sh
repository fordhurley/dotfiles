#!/usr/bin/env bash

set -o nounset
set -o verbose

ln -si "$(pwd)/.aliases" ~
ln -si "$(pwd)/.gitconfig" ~
ln -si "$(pwd)/.gitignore" ~
ln -si "$(pwd)/.paths" ~
ln -si "$(pwd)/.profile" ~
ln -si "$(pwd)/.vimrc" ~
mkdir -p ~/.config/powerline-shell
ln -si "$(pwd)/.config/powerline-shell/config.json" ~/.config/powerline-shell
