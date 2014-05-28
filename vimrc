" Jex Lin's vim setting
" =====================
" create time : 20130818 20:30
" last modified time : 20131225 10:02
" =====================================
" help :
" `:help key-notation`
" =====================================

" [vim plugin] vundle
set nocompatible    " be iMproved
filetype off        " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" required! let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here :
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'sjl/gundo.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/syntastic'
Bundle 'jnwhiteh/vim-golang'
" Bundle 'vim-scripts/taglist.vim'
Bundle 'dgryski/vim-godef'
Bundle 'Blackrush/vim-gocode'
Bundle 'majutsushi/tagbar'

" [vim plugin] Airline
set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_fugitive_prefix = ' '

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

" [vim plugin] vim-golang : go syntax
" filetype off
" filetype plugin indent off
" set runtimepath+=$GOROOT/misc/vim
" filetype plugin indent on
" syntax on

" [vim plugin] taglist
" nnoremap <silent> <F4> :TlistToggle<CR>

" [vim plugin] godef
" > 1. will reuse the current window
" g:godef_split=0
" > 2. will open the definition in a new tab
" g:godef_split=2
" > 3. If you want jumps to the same file to move your current cursor instead of splitting
" g:godef_same_file_in_same_window=1

" [vim plugin] tagbar

nmap <F3> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" ======= Plugin Setting End ==================================

" When saving *.go format file
" autocmd BufWritePre *.go :Fmt

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
set colorcolumn=120 " Warning line for limiting 120 characters count.
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
highlight TabLine ctermbg=blue
highlight TabLineFill ctermbg=green
highlight TabLineSel ctermbg=red

" Syntax highlight.
syntax on
hi Comment term=standout cterm=bold ctermfg=0
highlight Search term=reverse ctermbg=3 ctermfg=0
highlight Normal ctermbg=black ctermfg=white
highlight Folded ctermbg=black ctermfg=darkcyan
hi Cursor ctermbg=Gray ctermfg=Blue
highlight clear SpellBad
highlight SpellBad term=underline cterm=underline ctermfg=red

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
noremap <C-h> <C-w>< <C-w>< <C-w><
noremap <C-j> <C-w>- <C-w>- <C-w>-
noremap <C-k> <C-w>+ <C-w>+ <C-w>+
noremap <C-l> <C-w>> <C-w>> <C-w>>

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
:if !empty(glob("$HOME/$BRANDING/bin/compass_lite"))
:    autocmd BufWritePost *.scss silent !$HOME/$BRANDING/bin/compass_lite <afile> <afile>:r.css
:endif


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

" Map arrowkeys for switching windows
nnoremap <Right>    <C-w>l
nnoremap <Left>     <C-w>h
nnoremap <Up>       <C-w>k
nnoremap <Down>     <C-w>j

" Change tabe conveniently
map gl gt
map gh gT
