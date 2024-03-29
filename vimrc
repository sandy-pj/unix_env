set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'gruvbox'
Plugin 'skywind3000/asyncrun.vim'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'wincent/command-t'
" All of your Plugins must be added before the following line
call vundle#end()            " required


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_global_ycm_extra_conf='/home/huanchar/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_use_clangd = 0
" asycnrun
let g:asyncrun_open = 1
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <C-m> :call asyncrun#quickfix_toggle(15)<cr>
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F8> :TagbarToggle<CR>
filetype plugin indent on    " required

syntax on
set t_Co=256
set wrap linebreak nolist
set wrap
set linebreak
set nolist
set autoindent
set smartindent
set smarttab
set tabstop=8
set shiftwidth=4
set noexpandtab 

" filetype indent plugin on

" cursor settings
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
hi CursorLine cterm=None ctermbg=238
highlight CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow
set guicursor=i:ver25-iCursor
set cursorline

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1


" PEP8 indentation
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

" UTF* Support
set encoding=utf-8


" Python syntax
let python_highlight_all=1
syntax on

" switch
call togglebg#map("<F5>")

" file browsing
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"clipboard
set clipboard=unnamed


" file tree
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=utocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" colorscheme
"colorscheme wombat256
colorscheme gruvbox
"colorscheme molokai
set background=dark
let g:airline_theme='badwolf'
set bs=2
set hlsearch
