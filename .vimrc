" julie's .vimrc

" recommended defaults
set nocompatible    " nocompatible with vi
set hidden          " hidden modified buffers

" plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides' " <leader>ig
Plug 'lumiliet/vim-twig'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'

call plug#end()

" remaps
:imap ;; <Esc>
:map ;; <Esc>
:let mapleader = ' '
let g:ctrlp_map = '<leader>p'

" interface
set number
set ruler

" 4 tab spaces
set tabstop=4
set shiftwidth=4
set expandtab

" hide GVim toolbar
set guioptions=aiAc

" search
set ignorecase
set smartcase
set incsearch
set hlsearch

" beep silence
set visualbell
set noerrorbells

" colors
set background=dark

if has("gui_running")
    colorscheme duotone-darkpool
else
    colorscheme Tomorrow-Night
endif

" md syntax and highlight
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['php', 'python', 'bash=sh', 'css', 'javascript', 'json=javascript', 'xml', 'html']

" Syntastic plugin config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

