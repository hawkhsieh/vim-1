" Jex Lin's vim setting
" =====================
" create time : 20130818 20:30
" last modified time : 20141205 18:05
" =====================================
" help :
" `:help key-notation`
" =====================================

" [vim plugin] vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
" tagbar for go variable/func tag
Plugin 'majutsushi/tagbar'
" Plugin 'github.com/tpope/vim-rails'
" Plugin 'github.com/ngmy/vim-rubocop'    " Rails coding style

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

" [vim plugin] Airline
set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" [vim plugin] NERDTree
nnoremap <silent> <F1> :NERDTree<CR>

" [vim plugin] Gundo
nnoremap <F2> :GundoToggle<CR>

" [vim plugin] easy motion
let g:EasyMotion_leader_key = '<Leader>'

" [vim plugin] snipMate
filetype plugin on

" [vim plugin] syntastic
" > Just check php syntax error, don't check coding style
let g:syntastic_php_checkers=['php']

" [vim plugin] vim-markdown : Markdown syntax
" > Disable Folding (This function could show whole file content)
let g:vim_markdown_folding_disabled=1
" > Set Initial Foldlevel  (if enable, it  would be like this '+---  3 lines: bash ~/vim/update.sh------'
" let g:vim_markdown_initial_foldlevel=1

" [vim plugin] vim-go
" for syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" godoc
au FileType go nmap gd <Plug>(go-doc)
au FileType go nmap gv <Plug>(go-doc-vertical)
au FileType go nmap gb <Plug>(go-doc-browser)
" godef
au FileType go nmap <F9> <Plug>(go-def-tab)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
nnoremap <silent> <F10> :q<CR>
" go shortcut
au Filetype go nnoremap <leader>r :GoRun %<CR>
" goimports
let g:go_fmt_command = "goimports"

" [vim plugin] tagbar
nmap <F3> :TagbarToggle<CR>


" ======= Plugin Setting End ==================================

" download https://github.com/tomasr/molokai/blob/master/colors/molokai.vim on ~/.vim/colors/
colorscheme molokai

" Enable syntax
syntax enable

" Searching ignorecase
set ignorecase

" Set Tabs and spacing
set expandtab       "convert tab to space
set shiftwidth=4    "indent : let 1 tab to 4 spaces
set tabstop=4       "width of Tab, defaout is 8
set softtabstop=4   "let 1 tab to 4 spaces

set hlsearch        "highlight matched word
set incsearch       "cursor will shift to the matched word
" set showmatch       " it can reduce the need for %, the cursor will briefly jump to the matching brace when you insert one.
" set colorcolumn=120 " Warning line for limiting 120 characters count.
set cursorline      " cursor line
hi CursorLine       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE

set history=50      "number of histroy of colon command use in vim
set cindent         "Auto-indent
set backspace=2     "fix delete bug in insert mode
set nomodeline      "I don't want to overwrite my vim configuration by notation of file
set nowrap
set number          "display number in head of line
set nofoldenable

" Always use utf-8 encoding.
set fileencoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf8
set tenc=utf8

" Set tab settings.     change :tabe background color
set tabpagemax=50    " default tab limit 10 pages
highlight TabLine ctermbg=blue
highlight TabLineFill ctermbg=green
highlight TabLineSel ctermbg=red

" Set status line.
set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse

" Removing tailing spaces.
au! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
" Replace tab to spaces.
au BufWrite * :retab
" Make vim setting works immediately.
autocmd! BufWritePost .vimrc source %


" Extend boundary of split window
noremap <silent> <C-h> 3<C-w><
noremap <silent> <C-j> 3<C-w>-
noremap <silent> <C-k> 3<C-w>+
noremap <silent> <C-l> 3<C-w>>

" Move split window
noremap <silent> ah <C-w>h
noremap <silent> aj <C-w>j
noremap <silent> ak <C-w>k
noremap <silent> al <C-w>l

" Switch `:set paste`  open/close
set pastetoggle=<F5>


nnoremap <silent> <F6> :call MouseCopyToggle()<CR>
let g:CopyFlag=1
function! MouseCopyToggle()
    if g:CopyFlag == 1
        set wrap
        set nonu
        let g:CopyFlag=0
    else
        set nowrap
        set nu
        let g:CopyFlag=1
    endif
endfunction

" Execute compass :
"   1. There has some problem about file permission with using filereadable, use glob instead.
"   2. Use `silent` to avoid this message "Press ENTER or type command to continue" after saving the file (`:q`).
" :if !empty(glob("$HOME/$BRANDING/bin/compass_lite"))
" :    autocmd BufWritePost *.scss silent !$HOME/$BRANDING/bin/compass_lite <afile> <afile>:r.css
" :endif


" function! FixCSS()
"     let pos = line( "." )
"     silent :%s/{/{\r    /g
"     silent :%s/;\s*\n*\s*/;\r    /g
"     silent :%s/\s*}/}\r/g
"     exe pos
" endfunction
" command! Fixcss call FixCSS()

" Keyboard Number Area
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Op 0
imap <Esc>On .
imap <Esc>OQ /
imap <Esc>OR *
imap <Esc>Ol +
imap <Esc>OS -

" Open file show last position
if has("autocmd")
autocmd BufRead *.txt set tw=78
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif
endif

" Map the { and auto close the bracket.
" inoremap { {<CR>}<Esc>ko

" Window horizontal move (`zh` : left, `zl` : right)
map <F7> 10zh
imap <F7> <ESC>10zhi
map <F8> 10zl
imap <F8> <ESC>10zli

" For Mapping Alt key for switching windows
"for i in range(65, 90) + range(97, 122)
"  exe "set <M-".nr2char(i).">=\<Esc>".nr2char(i)
"endfor
"set timeout ttimeoutlen=50
"nnoremap <A-l>    <C-w>l
"nnoremap <A-h>    <C-w>h
"nnoremap <A-k>    <C-w>k
"nnoremap <A-j>    <C-w>j


" Change tabe conveniently
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Map `esc` to clear highlight from searching result.
" Some problem with f1~f12
" nnoremap <silent> <Esc> :noh<CR>

" Change tab depend on file type
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.erb set tabstop=2       "width of Tab, defaout is 8
autocmd BufRead,BufNewFile *.erb set shiftwidth=2       "width of Tab, defaout is 8
autocmd BufRead,BufNewFile *.erb set softtabstop=2       "width of Tab, defaout is 8
autocmd BufRead,BufNewFile *.yml set tabstop=2       "width of Tab, defaout is 8
autocmd BufRead,BufNewFile *.yml set shiftwidth=2       "width of Tab, defaout is 8
autocmd BufRead,BufNewFile *.yml set softtabstop=2       "width of Tab, defaout is 8

" Golang autocomplete, F11 can't be used, F11 will be caught by Mac.
inoremap <expr> <F12> MyComplete()
function! MyComplete()
  return "\<C-X>\<C-O>"
endfunction

" XXX Don't delete it XXX
" 直接執行快捷鍵 (寫在 .bashrc)
" :exe "normal ds"
" 直接 go run 目前的檔案 (直接在 vim 執行)
" !go run %
" 執行指令並開新的 window (直接在 vim 執行)
" nmap <silent> <F4> :GoBuild<CR>:copen<CR>



" 將 syntax highlighting 關掉, 不然很長一串的 string 在一行會讓 vim 變得很慢
"nnoremap <silent> :syntax on<cr>
"nnoremap <silent> :syntax off<cr>
nnoremap <silent> <F4> :call SyntaxToggle()<cr>
let g:SyntaxFlag=0
function! SyntaxToggle()
 if g:SyntaxFlag == 1
   syntax on
   let g:SyntaxFlag=0
 else
   syntax off
   let g:SyntaxFlag=1
 endif
endfunction


