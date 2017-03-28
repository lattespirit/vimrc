"==================================
"    Basic Vim Configuration
"===================================

set nocompatible

"Set mapleader
let mapleader = ","

"backspace key method
set backspace=indent,eol,start

"Show Line Number
set nonumber

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
set smartindent
set expandtab
"set smarttab

set tabstop=4           "Set tab width
set softtabstop=4       "Delete 4 spaces when hitting backspace key
set shiftwidth=4        "Set autointent space num

"Turn on the syntax highlight
syntax enable
syntax on

"Set the color schema to 256
set t_Co=256

"Ignore case sensitive when searching
set ignorecase

"Turn on using mouse in Vim so we can copy in Linux Terminal
set mouse=a

"Auto determine the encoding by turn
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"Set Language
let $LANG = 'en'
set langmenu=en

"Detect filetype
filetype on

"Using different indent method according to different filetype
"filetype indent on

"Allow to use plugin
filetype plugin on

"Turn on intelligent autocomplete
"filetype plugin indent on

"Vundle Configuration Begin
filetype off
"set rtp+=~/vimfiles/bundle/Vundle.vim
"call vundle#begin('~/vimfiles/')
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'

Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
let g:airline_theme='tomorrow'

Bundle 'scrooloose/nerdtree'
nmap <F3> :NERDTreeToggle <CR>
nmap <A-1> :NERDTreeToggle <CR>
nmap <leader>r :NERDTreeFind <CR>
let NERDTreeHijackNetrw = 0
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '◀'

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
"Turn off the default settings
let g:EasyMotion_do_mapping = 0

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
"Ctrl-p in Visual mode will remove the current virtual cursor and go back to the previous virtual cursor location.
"Ctrl-x in Visual mode will remove the current virtual cursor and skip to the next virtual cursor location. 
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_exit_from_visual_mode = 0

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

Bundle 'ivalkeen/vim-ctrlp-tjump'
nnoremap <leader>g :CtrlPtjump<cr>
vnoremap <leader>g :CtrlPtjumpVisual<cr>

"Bundle 'sjl/gundo.vim'
"nnoremap <F5> :GundoToggle<CR>
"let g:gundo_width = 50
"let g:gundo_preview_height = 20
"let g:gundo_right = 0

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
nmap <BS> gcc
vmap <BS> gc

Bundle 'tpope/vim-unimpaired'
"nmap < [
"nmap > ]
"omap < [
"omap > ]
"xmap < [
"xmap > ]

Bundle 'tpope/vim-repeat'

"Bundle 'altercation/vim-colors-solarized'

"It's a better choice using molokai when editing in terminal
"Bundle 'tomasr/molokai'
"original monlkai background color
"let g:molokai_original = 1
"to bring the 256 color version as close as possible to the the default
"let g:rehash256 = 1

Bundle 'tomasr/molokai'

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

Bundle 'stephpy/vim-php-cs-fixer'
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
"let g:php_cs_fixer_level = "symfony"              " which level ?
"let g:php_cs_fixer_config = "default"             " configuration
"let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
"let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
"let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
"let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
"let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

Bundle 'tpope/vim-fugitive'

Bundle 'arnaud-lb/vim-php-namespace'
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

Bundle 'tpope/vim-vinegar'

Bundle 'rking/ag.vim'

Bundle 'skwp/greplace.vim'
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

Bundle 'ervandew/supertab'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
set autowrite

"Bundle 'tobyS/vmustache'
"Bundle 'tobyS/pdv'
"Bundle 'SirVer/ultisnips'
"Bundle 'honza/vim-snippets'
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

Bundle 'adoy/vim-php-refactoring-toolbox'
"nnoremap <unique> <Leader>rlv :call PhpRenameLocalVariable()<CR>
"nnoremap <unique> <Leader>rcv :call PhpRenameClassVariable()<CR>
"nnoremap <unique> <Leader>rm :call PhpRenameMethod()<CR>
"nnoremap <unique> <Leader>eu :call PhpExtractUse()<CR>
"vnoremap <unique> <Leader>ec :call PhpExtractConst()<CR>
"nnoremap <unique> <Leader>ep :call PhpExtractClassProperty()<CR>
"vnoremap <unique> <Leader>em :call PhpExtractMethod()<CR>
"nnoremap <unique> <Leader>np :call PhpCreateProperty()<CR>
"nnoremap <unique> <Leader>du :call PhpDetectUnusedUseStatements()<CR>
"vnoremap <unique> <Leader>== :call PhpAlignAssigns()<CR>
"nnoremap <unique> <Leader>sg :call PhpCreateSettersAndGetters()<CR>
"nnoremap <unique> <Leader>cog :call PhpCreateGetters()<CR>
"nnoremap <unique> <Leader>da :call PhpDocAll()<CR>

Bundle 'xolox/vim-shell'
Bundle 'xolox/vim-misc'
let g:shell_fullscreen_always_on_top = 0
let g:shell_fullscreen_message = 0

Bundle 'KeitaNakamura/neodark.vim'
"let g:neodark#background='brown' " black, gray or brown
"colorscheme neodark

Bundle 'kristijanhusak/vim-hybrid-material'
"let g:enable_bold_font = 1
set background=dark
colorscheme hybrid_material

Bundle 'duggiefresh/vim-easydir'

Bundle 'jlanzarotta/bufexplorer'
noremap <silent> <CR> :BufExplorerHorizontalSplit<CR>

Bundle 'terryma/vim-expand-region'
" Press + to expand the visual selection and _ to shrink it as default
map <space> <Plug>(expand_region_expand)
map <S-space> <Plug>(expand_region_shrink)

Bundle 'arcticicestudio/nord-vim'

Bundle 'airblade/vim-gitgutter'

Bundle 'gregsexton/gitv'

Bundle 'Xuyuanp/nerdtree-git-plugin'

Bundle 'Shougo/unite.vim'

call vundle#end()
filetype plugin indent on

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
vmap ; vv

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

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap <C-x> :vertical resize -5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <C-W>=
nmap 75 :vertical resize 120<cr>

"Add PHP Dictionary, php_funclist.txt should be downloaded and placed in ur appropriate directory
"set dictionary-=~/php_funclist.txt dictionary+=~/php_funclist.txt
"set complete-=k complete+=k
"au FileType php call AddPHPFuncList()
"function AddPHPFuncList()
"	set dictionary-=~/php_funclist.txt dictionary+=~/php_funclist.txt
"	set complete-=k complete+=k
"endfunction

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
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  
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

"=================Auto-Commands=================
augroup autoSourcing
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

"=================Search=================
set hlsearch
set incsearch
nmap <leader><space> :nohlsearch<CR>

"=================CtrlP=================
nmap <a-r> :CtrlPBufTag<CR>
nmap <a-e> :CtrlPMRUFiles<CR>

"=================Visuals=================
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

highlight LineNr guibg=bg
set foldcolumn=2
highlight foldcolumn guibg=bg
highlight vertsplit guifg=bg guibg=bg

"Show tab/space with . character
"set list listchars=tab:\.\.
nmap <leader>t :set list listchars=tab:\.\.<CR>
nmap <leader>tt :set list listchars=tab:\ \ <CR>
"Show space with . character
"set list listchars=space:.
nmap <leader>sp :set list listchars=space:.<CR>
nmap <leader>isp :set list listchars=space:\ <CR>	"In MacVim "\ " will be replaced by " "

"Trigger to find tag
nmap <leader>f :tag<space>

"Trigger to rebuild tags using ctags in the current path
nmap <leader>tags :!ctags -R --PHP-kinds=+cf-vtpj --exclude=vendor --exclude=.git --exclude=svn --exclude=assests --exclude=static

"Do NOT show status line by default
set laststatus=0

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Abbreviations
abbrev art !php artisan
abbrev mm !php artisan make:model
abbrev mc !php artisan make:controller
abbrev goto CtrlPtjump
abbrev json %!python -m json.tool<CR>

nmap <leader>1 :vertical resize 40<CR>
nmap <leader>2 <C-W>=
nmap <leader>3 :vertical resize 120<CR>

"Netrw Settings
let g:netrw_liststyle = 3
let g:netrw_banner = 1
let g:netrw_winsize = 25

nmap sp :sp<CR><C-j>
nmap vsp :vsp<CR><C-l>

nmap <leader>s :call ToggleStatusLine()<CR>
let g:status_line_is_open = 0

function! ToggleStatusLine()
    if g:status_line_is_open
        set laststatus=0
        let g:status_line_is_open = 0
    else
        set laststatus=2
        let g:status_line_is_open = 1
    endif
endfunction

nmap <leader>l :call ToggleLineNumber()<CR>
let g:line_number_is_open = 0

function! ToggleLineNumber()
    if g:line_number_is_open
        set nonu
        let g:line_number_is_open = 0
    else
        set nu
        let g:line_number_is_open = 1
    endif
endfunction

" Notes and Tips
" - Press 'zz' to instatly center the line where the cursor is located
" - Press ':tn' to go to the next tag after tag found
" - Press ':tp' to go to the previous tag after tag found
" - Press ':ts' to select the multiple same tags after tag found
"
"   Ctags
"
" - Ctrl+] - go to definition
" - g Ctrl+] - List all definitions when multipe ones exist
" - Ctrl+T - Jump back from the definition.
" - Ctrl+W Ctrl+] - Open the definition in a horizontal split
" - Ctrl+Left MouseClick - Go to definition
" - Ctrl+Right MouseClick - Jump back from definition
