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
    git clone https://github.com/jex-lin/vim.git
    bash ~/vim/setup.sh

## Update

    bash ~/vim/update.sh

## Docs

Install & Update : `:BundleInstall`

see `:h` vundle vimdoc for more details

## Snippets

You can set your own snippets setting in `.vim/additional-setting/snippets/`, and added into `setup.sh`.

## Additional installation

### taglist

Additional install ctags, [下載 ctags](http://ctags.sourceforge.net/)

    $ tar xvf ctags-5.6.tar.gz
    $ cd ctags-5.6
    $ ./configure
    $ make && sudo make install

### Godef (Jump to another position of func)

    Bundle 'dgryski/vim-godef'

    go get code.google.com/p/rog-go/exp/cmd/godef

### Gocode (Tip func name that you type in half)

    Bundle 'Blackrush/vim-gocode'

    go get github.com/nsf/gocode

### Tagbar (Show func/variable name of current file)

    Bundle 'majutsushi/tagbar'

    go get github.com/jstemmer/gotags



## example

#### tabular

After selecting in visual mode, type `:Tab/=` can align `=` in each line.

#### gocode

`ctrl` + `x` : Tip func name under package
`ctrl` + `o`

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
* Markdown syntax highlighting[vim-markdown](https://github.com/plasticboy/vim-markdown.git)
* Other syntax highlighting[syntastic](https://github.com/scrooloose/syntastic.git)
* Go syntax highlighting[vim-golang](https://github.com/jnwhiteh/vim-golang.git)
* Jump to another func[dgryski/vim-godef]
* Gocode (Tip func name that you type in half)[Blackrush/vim-gocode]
