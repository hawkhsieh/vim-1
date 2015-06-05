# Install manually :

[1] Follow below steps :

    cd ~
    git clone https://github.com/jex-lin/vim.git
    ln -s vim .vim
    ln -s vim/vimrc .vimrc

[2] execute `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

[3] Open `vim`, run `:PluginInstall` (or `vim +PluginInstall +qall` for CLI lovers)

# Or install automatically

    cd ~
    git clone https://github.com/jex-lin/vim.git
    ~/vim/setup.sh

# Update

    ~/vim/update.sh

# Docs

Install & Update : `:PluginInstall`

> see `:h` vundle vimdoc for more details

# Snippets

You can set your own snippets setting in `.vim/additional-setting/snippets/`, and added into `setup.sh`.

# Usage

### tabular

After selecting in visual mode, type `:Tab/=` can align `=` in each line.

### vim-easymotion

1. `\w` or `\W` : Looking forward
2. `\b` or `\B` : Looking backward

### ctrlp

1. `ctrl` + `p` : start choosing
2. `ctrl` + `t` : new tab
3. `ctrl` + `v` : vertical
4. `ctrl` + `o` : show options

### fugitive

`:Gblame` : Equal to command `git blame xx.go`

# Install go dev environment

> 必須先安裝好 golang

[1] Install

Ubuntu : `sudo apt-get install mercurial ctags`
Mac : `brew install mercurial ctags`

> * mercurial : go package 的源檔
> * ctag : tagbar 需要

[2] 在 vim 裡執行 `:GoInstallBinaries` 或直接執行 `vim +GoInstallBinaries +qall`

### vim-windowswap 交換 windows 視窗

先在 window1 按 `\` + `ww`, 再到要對換的 window2 按 `\` + `ww`, 就可以交換了

# Shortcut

### 一般

* `F1` : 打開 nerdtree
* `F2` : 打開 gundo
* `F5` : Paste 模式開關 (按一下開, 再按一下關閉)
* `F6` : 複製 (將行數及換行關閉)
* `F7` : 畫面向右移動
* `F8` : 畫面向左移動

### Golang 開發 (參考上面 Go dev 的環境安裝)

* `gd` : 跳到 func 定義的檔案, 但本身檔案會被放到 buffer, 需再執行 `:b1` 才能跳回來
* `F3` : 打開 tagbar, `?` 顯示指令說明
* `F9` : 以 split window 打開 func 定義的檔案
* `F10` : 執行 `:q`, quit
* `F12` : 觸發 AutoComplete, 也可直接執行 `<C-x><C-o>`

# Trouble shooting

Q: color scheme not working ?

A: 執行 `python vim/terminalcolors.py`, 如果色碼表沒有出來, 請將 `export TERM="xterm-256color"` 加到你的 .bashrc / .bash_profile 裡, 再執行一次應該就會有色碼表了, 而 color scheme 應該也會是正常顯示了


# Plugins:

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
* Markdown syntax highlighting - [vim-markdown](https://github.com/plasticboy/vim-markdown.git)
* Other syntax highlighting - [syntastic](https://github.com/scrooloose/syntastic.git)
* [vim-go](https://github.com/fatih/vim-go)
* [match html closing tag](https://github.com/tmhedberg/matchit)
* [Swap split windows](https://github.com/wesQ3/vim-windowswap);
