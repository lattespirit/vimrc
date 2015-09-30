"==================================
"    Basic Vim Configuration
"===================================

set nocompatible

"backspace key method
"set backspace=indent,eol,start

"Show Line Number
set number

"Show Line Info(row and column info)
"set ruler

"Set Wrap when line string's too long
set wrap

"Show the inserting command line in the status bar
"set showcmd

"Set the maxinum of the history
set history=1000

"Do Not create the temp file
set nobackup

"set noswapfile

"Show the crosser
set cursorline
set cursorcolumn

"Set the pattern mode
"set showmatch

"Set autoindent the way like C/C++
set autoindent
set cindent

"Turn on the syntax highlight
syntax enable
syntax on

"Set the color schema to 256
set t_Co=256

"Ignore case sensitive when searching
set ignorecase

"Turn on using mouse in Vim so we can copy in Linux Terminal
set mouse=a

"Set tab width
"set tabstop=4

"Set autointent space num
set shiftwidth=4

"Delete 4 spaces when hitting backspace key
"set softtabstop=4

"set smarttab

"Set encoding
set encoding=utf-8

"Auto determine the encoding by turn
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"Detect filetype
filetype on

"Using different indent method according to different filetype
"filetype indent on

"Allow to use plugin
filetype plugin on

"Turn on intelligent autocomplete
"filetype plugin indent on

"Vundle Configuration Begin
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'

Bundle 'Lokaltog/vim-powerline'

Bundle 'The-NERD-tree'

Bundle 'Emmet.vim'
"Map Emmet Expand Trigger key
imap   <leader><leader>e   <plug>(emmet-expand-abbr)
"imap   <leader><leader>;   <plug>(emmet-expand-word)
"imap   <leader><leader>u   <plug>(emmet-update-tag)
"imap   <leader><leader>d   <plug>(emmet-balance-tag-inward)
"imap   <leader><leader>D   <plug>(emmet-balance-tag-outward)
"imap   <leader><leader>n   <plug>(emmet-move-next)
"imap   <leader><leader>N   <plug>(emmet-move-prev)
"imap   <leader><leader>i   <plug>(emmet-image-size)
"imap   <leader><leader>/   <plug>(emmet-toggle-comment)
"imap   <leader><leader>j   <plug>(emmet-split-join-tag)
"imap   <leader><leader>k   <plug>(emmet-remove-tag)
"imap   <leader><leader>a   <plug>(emmet-anchorize-url)
"imap   <leader><leader>A   <plug>(emmet-anchorize-summary)
"imap   <leader><leader>m   <plug>(emmet-merge-lines)
"imap   <leader><leader>c   <plug>(emmet-code-pretty)

Bundle 'Lokaltog/vim-easymotion'
"Set mapleader
let mapleader = ","
"Overwrite the default s key to search with two keystroke using easymotion
nmap s <Plug>(easymotion-s)
"Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
"JK motions: Line Motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

Bundle 'terryma/vim-multiple-cursors'

Bundle 'tpope/vim-surround'

"Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

set laststatus=2
let g:Powline_symbols='fancy'
set enc=utf-8
let termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12

"Set NERDTree Options
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
"" Give a shortcut key to NERD Tree
"map :NERDTreeToggle
nmap <F3> :NERDTree  <CR>
"nnoremap <F10> :exe 'NERDTreeToggle'<CR>

"Mappings of Jumping to Split Window
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>w

"Mappings of Moving Split Window
nmap J <C-w>J
nmap K <C-w>K
nmap H <C-w>H
nmap L <C-w>L

"Mapping ESC key
imap jj <esc>
vmap ; v

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :source $MYVIMRC<CR>

syntax enable

"Emmet Settings
let g:user_emmet_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \}

"Toggle Fullscreen in Windows using gvim(gvimfullscreen.dll required)
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

"Turn off recording the session
"autocmd VimEnter * call LoadSession()
"autocmd VimLeave * call SaveSession()
"function! SaveSession()
"   execute 'mksession! $HOME/.vim/sessions/session.vim'
"endfunction
"function! LoadSession()
"   if argc() == 0
"      execute 'source $HOME/.vim/sessions/session.vim'
"   endif
"endfunction
