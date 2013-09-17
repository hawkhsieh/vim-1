#!/bin/bash

set -e

cd ~

# Check .vim and .vimrc
echo "Check .vim and .vimrc ..."
if [ -d ".vim" ]; then
    echo "~/.vim exist ! Please backup and rename to another ..."
    exit
fi
if [ -f ".vimrc" ]; then
    echo "~/.vimrc exist ! Please backup and rename to another ..."
    exit
fi

# Create symbolic link 
echo "Create symbolic link ..."
ln -s vim .vim
ln -s .vim/vimrc .vimrc

# Download vundle and other plugins
echo "Download vundle and other plugins ..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# Combine snippets
echo "Combine snippets ..."
cat .vim/additional-setting/snippets/php.snippets >> .vim/bundle/snipmate.vim/snippets/php.snippets

echo "Install finished !!"
