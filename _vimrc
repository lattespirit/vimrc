"==================================
"    Vim基本配置
"===================================

""关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
"set backspace=indent,eol,start
""显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
"set ruler
""当一行文字很长时取消换行
set nowrap

"在状态栏显示正在输入的命令
"set showcmd
""设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
"set noswapfile
""突出现实当前行列
set cursorline
set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
"set showmatch
""设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on
""指定配色方案为256色
set t_Co=256

"设置搜索时忽略大小写
set ignorecase
""设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
"set tabstop=4
""设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
"set softtabstop=4
""设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
"set expandtab
""设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
""检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
"filetype indent on
""允许插件
filetype plugin on
"启动智能补全
"filetype plugin indent on
""开始使用Vundle的必须配置
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'
""PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"安装NERD-tree
Bundle 'The-NERD-tree'
""Vundle配置必须 开启插件

Bundle 'Emmet.vim'

Bundle 'Lokaltog/vim-easymotion'

Bundle 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on

"vim有一个状态栏 加上powline则有两个状态栏
""设置powerline状态栏

set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'
set nocompatible
set enc=utf-8
let termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12

"设置NERDTree的选项
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
"" Give a shortcut key to NERD Tree
"map :NERDTreeToggle
nmap <F3> :NERDTree  <CR>
"nnoremap <F10> :exe 'NERDTreeToggle'<CR>

"分屏跳转映射
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>w

"映射ESC键
imap ;; <esc>
cmap ;; <esc>
vmap ; v

nmap <silent> <leader>ev :e $MYVIMRC<CR>

"EasyMotion Stuff
"map <Leader> <Plug>(easymotion-w)
let g:EasyMotion_leader_key = 'f'

syntax enable
set background=dark
colorscheme molokai

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
