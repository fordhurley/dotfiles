#!/bin/bash

# First, install homebrew using whatever is the current recommendation:
# https://brew.sh/

# Then, this script can be run. Even better, use this as a guide to manually set
# up a new machine.

# Update the repo and upgrade everything installed:
brew update
brew upgrade

# Upgrade to modern bash:
brew install bash
brew install bash-completion

# git stuff:
brew install git
brew install hub # github add ons for git
brew install diff-so-fancy # better git diffs
brew install vcprompt # I believe I still use this as a shell prompt fallback from powerline-shell

# Languages:
brew install go
brew install node

# Shell conveniences
brew install ack
brew install bat
brew install httpie
brew install rename
brew install jq
brew install tldr
brew install tree
brew install watch
brew install htop

# Tools:
brew install wget
brew install graphicsmagick
brew install ffmpeg
brew install gifsicle
brew install youtube-dl
brew install gnupg
