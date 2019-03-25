ford's dotfiles
================

Run `./link.sh` to add symlinks to `$HOME`.


Homebrew
---------

`Brewfile` is generated with

    brew bundle dump --force --file=./Brewfile

`brew.sh` is my manually maintained script for setting up a new machine (at
least as a guide or copypasta source).


powerline-shell
----------------

I installed [this version](https://github.com/b-ryan/powerline-shell/tree/a9b8c9bb39).
Just need to `pip install powerline-shell`. My configuration is linked to `$HOME`
by `link.sh`.
