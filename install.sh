#!/bin/bash

# Get the location of the install script (and hence git repo)
pushd `dirname "$0"` > /dev/null
SRCDIR=`pwd`
popd > /dev/null

# Install vim plugins
ln -sf $SRCDIR/vim ~/.vim

# Basic ssh config
ln -sf $SRCDIR/ssh/config ~/.ssh/config

# Regular dotfile
ln -sf $SRCDIR/.gitconfig ~
ln -sf $SRCDIR/.vimrc ~
ln -sf $SRCDIR/.zprofile ~
ln -sf $SRCDIR/.zshrc ~

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc --unattended

# Set up zsh customizations
mkdir ~/.oh-my-zsh
ln -sf $SRCDIR/custom ~/.oh-my-zsh/

# Reload zsh
exec /bin/zsh