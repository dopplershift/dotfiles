#!/bin/bash

# Get the location of the install script (and hence git repo)
pushd `dirname "$0"` > /dev/null
SRCDIR=`pwd`
popd > /dev/null

# Install vim plugins
ln -sf $SRCDIR/vim ~/.vim

# Basic ssh config
ln -sf $SRCDIR/ssh/config ~/.ssh/config

# Regular dotfiles
ln -sf $SRCDIR/.gitconfig ~
ln -sf $SRCDIR/.p10k.zsh ~
ln -sf $SRCDIR/.vimrc ~
ln -sf $SRCDIR/.zprofile ~
ln -sf $SRCDIR/.zshrc ~

# Scripts
mkdir -p ~/.local/bin
ln -sf $SRCDIR/bin/diff-highlight ~/.local/bin

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc --unattended

# Set up zsh customizations
rm -rf ~/.oh-my-zsh/custom
ln -sf $SRCDIR/custom ~/.oh-my-zsh/

# Reload zsh
exec /bin/zsh