"Config
set nocompatible
filetype off


"Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

Plug 'neomake/neomake'

Plug 'tpope/vim-surround'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'valloric/youcompleteme'

Plug 'easymotion/vim-easymotion'

Plug 'chriskempson/base16-vim'

Plug 'dhruvasagar/vim-table-mode'

Plug 'jiangmiao/auto-pairs'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

call plug#end()

filetype plugin indent on

"Eneble python
let g:python3_host_prog=$HOME . '/.virtualenvs/neovim/bin/python'


"Editing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

autocmd BufWritePre * %s/\s\+$//e


"Interface
syntax enable

set relativenumber
set number

set showmatch
set hlsearch
set cursorline
set scrolloff=5

let base16colorspace=256
colorscheme base16-tomorrow-night

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

set splitbelow
set splitright
set mouse=


"Key Bindings
let mapleader=' '
nnoremap ; :

nnoremap <Leader>w/ <C-w>v
nnoremap <Leader>w- <C-w>s

nnoremap <Leader>wh <C-w><C-h>
nnoremap <Leader>wj <C-w><C-j>
nnoremap <Leader>wk <C-w><C-k>
nnoremap <Leader>wl <C-w><C-l>


" CtrlP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

" surround.vim
vmap s S

" Snippets
let g:UltiSnipsExpandTrigger='<c-s>'
hi MatchParen cterm=none ctermbg=Black ctermfg=LightGray


" Plugins

" Airline
set laststatus=2
let g:airline_theme='base16_default'
autocmd! BufWritePost * Neomake

" VIM Table Mode
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
