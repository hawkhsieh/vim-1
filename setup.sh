#!/bin/bash

set -e

echo "=== Start ==="

cd $HOME

# Check .vim and .vimrc
echo "=== Check .vim and .vimrc ==="
if [ -d ".vim" ]; then
    echo
    echo " ***Caution : ~/.vim exist ! Please backup and rename to another one."
    echo
    exit
fi
if [ -f ".vimrc" ]; then
    echo
    echo " ***Caution : ~/.vimrc exist ! Please backup and rename to another one."
    echo
    exit
fi

# Create symbolic link
echo "=== Create symbolic link ==="
ln -s vim .vim
ln -s vim/vimrc .vimrc

# Download vundle and other plugins
echo "=== Download vundle and other plugins ==="
rm -rf $HOME/vim/bundle/vundle
git clone https://github.com/gmarik/vundle.git $HOME/vim/bundle/vundle
vim +BundleInstall +qall

# Combine snippets
echo "=== Combine snippets === "
cp vim/additional-setting/snippets/php.snippets vim/bundle/snipmate.vim/snippets/php.snippets
cp vim/additional-setting/snippets/go.snippets vim/bundle/snipmate.vim/snippets/go.snippets
cp vim/additional-setting/snippets/javascript.snippets vim/bundle/snipmate.vim/snippets/javascript.snippets

#echo "=== Install YCM==="
cd ~/.vim/bundle/YouCompleteMe
./install.sh

echo "=== Setup done !! ==="
