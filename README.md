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

Additional install ctags, [Download ctags source](http://ctags.sourceforge.net/)

    $ tar xvf ctags-5.6.tar.gz
    $ cd ctags-5.6
    $ ./configure
    $ make && sudo make install

Usage :

    ctags -R     (genrate index file)
    vim XX.php

Shortcut :

`ctrl` + `]` : Go to the funtion (Can corss directory/file)
`ctrl` + `t` : Go back origin position

### Godef (For go to jump to another position of func)

    Bundle 'dgryski/vim-godef'

    go get code.google.com/p/rog-go/exp/cmd/godef

shortcut :

`gd` : Jump to func (cross directory/file)

### Gocode (Tip func name that you type in half)

    Bundle 'Blackrush/vim-gocode'

    go get github.com/nsf/gocode

shortcut :

`ctrl` + `x` and `ctrl` + `o` : Tip func name of package

if fail, update gocode :

    cd $GOPATH/src/github.com/nsf/gocode
    ./vim/update.sh

### Tagbar (Show func/variable name of current file)

    Bundle 'majutsushi/tagbar'

    go get github.com/jstemmer/gotags

shortcut :

`F4` : show func/variable name in new windows
`p` :  go to your target func name but only current file

## Usage

#### tabular

After selecting in visual mode, type `:Tab/=` can align `=` in each line.

#### vim-easymotion

`\w` or `\W` : Looking forward
`\b` or `\B` : Looking backward

#### ctrlp

`ctrl` + `p` : start choosing
`ctrl` + `t` : new tab
`ctrl` + `v` : vertical
`ctrl` + `o` : show options

#### fugitive

`:Gblame` : Equal to command `git blame xx.go`

## Plugins:

* [vundle](https://github.com/gmarik/vundle)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
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
