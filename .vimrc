set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
" surround helps surrounding tags and other stuff with arbitrary cool stuff
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'altercation/vim-colors-solarized' 

" Taskwarrior and recommended plugins plus settings
Bundle 'farseer90718/vim-taskwarrior'
Plugin 'bling/vim-airline'
Plugin 'Shougo/unite.vim'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
" Visual increment
Plugin 'triglav/vim-visual-increment'
" Have a look over all function
Plugin 'hari-rangarajan/CCTree' 

" Track the engine.
Plugin 'SirVer/ultisnips'
" if you use Vundle, load plugins:
Plugin 'ervandew/supertab'

" this is the last Plugin Vundle calls 
" vim-latex 
Plugin 'vim-latex/vim-latex'
call vundle#end()            " required


" Taskwarrior
let g:task_rc_override = 'rc.defaultwidth=0'

filetype plugin indent on     " required
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" To ignore plugin indent changes, instead use:
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line

"colorscheme morning
set background=light
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_visibility =  "high"


" backspace key behavior
set backspace=indent
set backspace+=eol
set backspace+=start
set wrap
 
" search
set incsearch           " incremental search mode
set hlsearch            " highlight search things
set ignorecase          " ignore case when searching
set smartcase           " only works when ignorecase on
nmap <silent> ,/ :nohlsearch<CR>
 
" encoding
scriptencoding utf-8           " utf-8 all the way
set encoding=utf-8
 

""" Coding
syntax on
set number      " show line number
set showmatch       " show matching brackets.
set matchtime=2         " the length of time to show matching paren.
set iskeyword+=_,$,@,%,#,-  " don't linebreak when encounter these characters.
if has('gui_running')
    set cursorline
endif
set laststatus=2

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

 
set tabstop=4       " The number of spaces count for a TAB.
set softtabstop=4   " The number of spaces inserted when typing TAB. If not expandtab, type TAB twice, will get one TAB.
set shiftwidth=4    " The number of spaces when auto-indent.
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab       " Use the spaces only.
set smarttab        " Insert appropriate spaces in front of line according to shiftwidth, tabstop, softtabstop.
set autoindent
set smartindent
set cindent        " cindent will disable smartindent, but only for C-like programming.

set history=256                " Number of things to remember in history.
set timeoutlen=250             " Time to wait after ESC (default causes an annoying delay)
"set clipboard+=unnamed         " Yanks go on clipboard instead.

set nobackup
set nowritebackup
set directory=/tmp//           " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
set noswapfile                 "
set hidden                     " The current buffer can be put to the background without writing to disk

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" make a line full of '=' 
nnoremap <leader>1 yypVr=
" set leader key to , 
let mapleader=","

" airline settings
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

 " vertical paragraph-movement
nmap <C-J> }
nmap <C-K> {


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" Vertical splits via ,w and moving in splits via ctrl + moving 
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Highlight current line or column
hi CursorLine   cterm=NONE 
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#0000ff
let g:ycm_global_ycm_extra_conf="~/.ycm_extra_conf.py"
let g:ycm_path_to_python_interpreter = "/usr/bin/python"

