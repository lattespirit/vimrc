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
"set rtp+=~/vimfiles/bundle/Vundle.vim
"call vundle#begin('~/vimfiles/')
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'

Bundle 'Lokaltog/vim-powerline'

Bundle 'The-NERD-tree'
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
nmap <F3> :NERDTreeToggle  <CR>

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

Bundle 'easymotion/vim-easymotion'

"Turn off the default settins
let g:EasyMotion_do_mapping = 0

"Set mapleader
let mapleader = ","

"Overwrite the default s key to search with two keystroke using easymotion
nmap s <Plug>(easymotion-s)

"Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

"Word motion
map <Leader>w <Plug>(easymotion-w)

"JK motions: Line Motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

Bundle 'terryma/vim-multiple-cursors'
"Fix backspace bug when inserting with multiple cursor
set backspace=indent,eol,start
"Ctrl-p in Visual mode will remove the current virtual cursor and go back to the previous virtual cursor location.
"Ctrl-x in Visual mode will remove the current virtual cursor and skip to the next virtual cursor location. 

Bundle 'tpope/vim-surround'

Bundle 'kien/ctrlp.vim'
"Change the prompt position and width and height
"Use <c-f> and <c-b> to cycle between modes.
"Use <c-d> to switch to filename only search instead of full path.
"Use <c-r> to switch to regexp mode.
"Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'
let g:ctrlp_switch_buffer = 'et'

Bundle 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>
let g:gundo_width = 50
let g:gundo_preview_height = 20
let g:gundo_right = 0

"auto-completion for quotes, parens, brackets, etc
Bundle 'Raimondi/delimitMate'

"Distraction-free writing in Vim
Bundle 'junegunn/goyo.vim'
"g:goyo_width (default: 80)
"g:goyo_height (default: 85%)
"g:goyo_linenr (default: 0)

Bundle 'spiiph/vim-space'

Bundle 'scrooloose/syntastic'

Bundle 'tpope/vim-commentary'

Bundle 'tpope/vim-unimpaired'
nmap < [
nmap > ]
omap < [
omap > ]
xmap < [
xmap > ]

Bundle 'tpope/vim-repeat'

Bundle 'altercation/vim-colors-solarized'

Bundle 'jaanauati/vim-wordfuzzycompletion-plugin'

Bundle 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"Bundle 'petdance/ack'

"Search code in files
"Bundle 'ggreer/the_silver_searcher'
"Bundle 'dyng/ctrlsf.vim'

"Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

set laststatus=2
let g:Powline_symbols='fancy'
set enc=utf-8
set termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set guifont=Source\ Code\ Pro:h12

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
vmap ; <esc>

"About MYVIMRC File
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :source $MYVIMRC<CR>

"Mappins of Copy/Paste from Clipboard
vnoremap <leader>y "+y
nmap <leader>p "+p

"Mapping of ToggleList
map <silent> <F9> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1

"Mappings of Jumping
nmap <A-j> <C-f>
nmap <A-k> <C-b>

syntax enable
set background=dark
colorscheme solarized

"Add PHP Dictionary, php_funclist.txt should be downloaded and placed in ur appropriate directory
"set dictionary-=~/php_funclist.txt dictionary+=~/php_funclist.txt
"set complete-=k complete+=k
"au FileType php call AddPHPFuncList()
"function AddPHPFuncList()
"	set dictionary-=~/php_funclist.txt dictionary+=~/php_funclist.txt
"	set complete-=k complete+=k
"endfunction

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
