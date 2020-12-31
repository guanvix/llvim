""SuperVim""
"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" session management
let g:session_directory = "~/./session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number
set cursorline                           "显示当前行
set shortmess=atI                        " 启动的时候不显示援助乌干达儿童的提示
set matchtime=1 	                 "匹配括号高亮的时间(十分之一秒)
set termguicolors                        "开启真彩色


let no_buffers_menu=1
colorscheme dracula


set mousemodel=popup
set t_Co=256
set term=xterm-256color
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_faster = 1

  
  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
  
endif


if &term =~ '256color'
  set t_ut=
endif


"" Disable the blinking cursor.
set gcr=a:blinkon0

set scrolloff=3


"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
" let g:airline_theme = 'powerlineish'
 let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1
 let g:airline#extensions#branch#enabled = 1
 let g:airline#extensions#ale#enabled = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tagbar#enabled = 1
 let g:airline_skip_empty_sections = 1

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall







"set nocompatible 			 "vim自身命令行智能补全
"set number                               "显示行号
set showcmd                              "显示输入命令
"set clipboard=unnamed,unnamedplus        "可以从vim复制到剪贴版中
set mouse=a                              "可以在buffer的任何地方使用鼠标
"set cursorline                           "显示当前行
""set cursorcolumn 			 "显示当前列
"set hlsearch                             "显示高亮搜索
"set incsearch
"set ruler                                "显示行号和列号
"set pastetoggle=<F3>                     "F3快捷键于paste模式与否之间转化，防止自动缩进
"set helplang=cn                          "设置为中文帮助文档,需下载并配置之后才生效
"set shortmess=atI                        " 启动的时候不显示援助乌干达儿童的提示
"set t_Co=256 				 "设置256色
set showmatch          		         "高亮括号匹配
set matchtime=1 	                 "匹配括号高亮的时间(十分之一秒)
"set termguicolors                        "开启真彩色
"syntax on                                "开启语法高亮
"colorscheme dracula

"插件
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'Raimondi/delimitMate'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://github.com/tpope/vim-rsi'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/itchyny/vim-cursorword'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/brooth/far.vim'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/junegunn/gv.vim'
Plug 'https://github.com/sbdchd/neoformat'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/lfv89/vim-interestingwords'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://hub.fastgit.org/ryanoasis/vim-devicons.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'https://github.com/tpope/vim-markdown.git'
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

call plug#end()






""""插件配置""""

""ale""
let g:ale_sign_column_always = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_quickfix = 1
let g:ale_open_list = 1"打开quitfix对话框

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "➼"
let g:ale_sign_warning = "⚠"



""--airline--""
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_powerline_fonts = 1
"let g:airline_theme='simple'
"let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
"let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

""Markdown""
"Uncomment to override defaults:
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
let g:instant_markdown_python = 1 
