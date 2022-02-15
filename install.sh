#!/bin/bash
SRCDIR=`dirname "$0"`

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install our customizations and plugin submodules for oh-my-zsh
rm .zshrc
rm -rf ~/.zsh/custom
ln -sf SRCDIR/custom ~/.zsh/

# Install vim plugins
ln -sf SRCDIR/vim ~/.vim

# Basic ssh config
ln -sf SRCDIR/ssh/config ~/.ssh/config

# Regular dotfile
ln -sf SRCDIR/.gitconfig ~
ln -sf SRCDIR/.vimrc ~
ln -sf SRCDIR/.zprofile ~
ln -sf SRCDIR/.zshrc ~

