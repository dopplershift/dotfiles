#!/bin/bash

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clean out what oh-my-zsh left
cd ~
rm ~/.zshrc
rm -rf ~/.oh-my-zsh/custom

# Get the location of the install script (and hence git repo)
SRCDIR=`dirname "$0"`

# Set up zsh customizations
ln -sf $SRCDIR/custom ~/.oh-my-zsh/

# Install vim plugins
ln -sf $SRCDIR/vim ~/.vim

# Basic ssh config
ln -sf $SRCDIR/ssh/config ~/.ssh/config

# Regular dotfile
ln -sf $SRCDIR/.gitconfig ~
ln -sf $SRCDIR/.vimrc ~
ln -sf $SRCDIR/.zprofile ~
ln -sf $SRCDIR/.zshrc ~

# Reload zsh
exec /bin/zsh