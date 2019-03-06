#!/bin/bash

# New touchbar macbook:
# bash-completion
# git
# diff-so-fancy
# go
# jq
# ruby
# vcprompt
# hub
# node
# python
# graphicsmagick
# htop



# Install command-line tools using Homebrew
# Usage: `bash Brewfile`

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew tap homebrew/science

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
#sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

brew install xz

# Install other useful binaries
install ack
#install exiv2
brew install git
brew install hub
brew install heroku-toolbelt
brew install libtiff
brew install imagemagick --with-libtiff
brew install graphicsmagick
brew install ghostscript
brew install potrace
brew install rename
brew install tree
brew install tldr
brew install jq
brew install vcprompt
brew install watch
brew install awscli
brew install pv
brew install htop

brew install python
brew install rbenv
brew install rbenv-build
# This installs `npm` too using the recommended installation method:
brew install node
brew install maven
brew install mysql
brew install postgresql
brew install redis
brew install rabbitmq
brew install opencv
brew install igraph
brew install socat
brew install libevent

brew install shellcheck

# Remove outdated versions from the cellar
brew cleanup
