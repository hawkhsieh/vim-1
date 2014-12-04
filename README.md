## Install manually :

[1] Follow below steps :

    cd ~
    git clone https://github.com/jex-lin/vim.git
    ln -s vim .vim
    ln -s vim/vimrc .vimrc

[2] execute `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

[3] Open `vim`, run `:BundleInstall` (or `vim +BundleInstall +qall` for CLI lovers)

## Or install automatically

    cd ~
    git clone https://github.com/jex-lin/vim.git
    bash ~/vim/setup.sh

## Update

    bash ~/vim/update.sh

## Docs

Install & Update : `:BundleInstall`

> see `:h` vundle vimdoc for more details

## Snippets

You can set your own snippets setting in `.vim/additional-setting/snippets/`, and added into `setup.sh`.

## Usage

#### tabular

After selecting in visual mode, type `:Tab/=` can align `=` in each line.

#### vim-easymotion

1. `\w` or `\W` : Looking forward
2. `\b` or `\B` : Looking backward

#### ctrlp

1. `ctrl` + `p` : start choosing
2. `ctrl` + `t` : new tab
3. `ctrl` + `v` : vertical
4. `ctrl` + `o` : show options

#### fugitive

`:Gblame` : Equal to command `git blame xx.go`

## Go dev environment

[1] Install

    sudo apt-get install mercurial ctags

mercurial : go package 的源檔
ctag : tagbar 需要

[2] Exec `:GoInstallBinaries` in vim

[3] 常用快捷

`gd` : 跳到 func 定義的檔案, 但本身檔案會被放到 buffer, 需再執行 `:b1` 才能跳回來
`F3` : 打開 tagbar, `?` 顯示指令說明
`F4` : 觸發 AutoComplete, 也可直接執行 `<C-x><C-o>`
`F9` : 以 split window 打開 func 定義的檔案
`F10` : 執行 `:q`, quit


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
