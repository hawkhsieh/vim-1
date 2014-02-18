#!/bin/bash

echo "=== Start ==="

# Remove
echo "=== Remove bundle, .vim and .vimrc  ==="
rm -rf ~/vim/bundle
rm ~/.vim ~/.vimrc

# Update
echo "=== Update ==="
cd ~/vim
git pull

# Install
echo "=== Setup ==="
bash ~/vim/setup.sh

echo "=== Update done !! ==="
