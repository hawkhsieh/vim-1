#!/bin/bash

echo "=== Start ==="

# Remove
echo "=== Remove bundle, .vim and .vimrc  ==="
rm -rf $HOME/vim/bundle
rm $HOME/.vim $HOME/.vimrc

# Update
echo "=== Update ==="
cd $HOME/vim
git pull

# Install
echo "=== Setup ==="
bash $HOME/vim/setup.sh

echo "=== Update done !! ==="
