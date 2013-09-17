## Install manually :

[1] Follow below steps :

cd ~   
git clone https://github.com/jex-lin/vim.git   
ln -s vim .vim   
ln -s vim/vimrc .vimrc    

[2] execute `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

[3] Launch `vim`, run `:BundleInstall` (or `vim +BundleInstall +qall` for CLI lovers)

## Or install automatically

    cd ~
    bash vim/setup.sh

## Docs

see `:h` vundle vimdoc for more details

## Snippets

You can set your own snippets setting in `.vim/additional-setting/snippets/`, and added into `setup.sh`.

## Plugins:

* [vundle](https://github.com/gmarik/vundle)   
* [nerdtree](https://github.com/scrooloose/nerdtree)   
* [ctrlp.vim](https://github.com/kien/ctrlp.vim)   
* [colorselector.vim](https://github.com/c9s/colorselector.vim)   
* [snipmate.vim](https://github.com/msanders/snipmate.vim)    
* [vim-surround](https://github.com/tpope/vim-surround)   
* [gundo.vim](https://github.com/sjl/gundo.vim)   
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)   
* [vim-airline](https://github.com/bling/vim-airline)   
* [tabular](https://github.com/godlygeek/tabular)   
* [fugitive](https://github.com/tpope/vim-fugitive)   
