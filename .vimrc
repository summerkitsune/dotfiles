" julie' .vimrc

" Pathogen plugin manager
call pathogen#infect()
syntax on
filetype plugin indent on

" recommended defaults
set nocompatible    " nocompatible with vi
set hidden          " hidden modified buffers

" encoding
scriptencoding utf-8
set encoding=utf-8

" remaps
:imap ;; <Esc>
:map ;; <Esc>
:let mapleader = ' '
let g:ctrlp_map = '<leader>p'

" interface
set title
set number
set ruler
set wrap
set scrolloff=3

" normal backspace
set backspace=indent,eol,start

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

" syntax
syntax enable
set background=light
colorscheme default

" md syntax and highlight
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['php', 'python',  'bash=sh', 'css', 'javascript', 'json=javascript', 'xml', 'html']

" NeoComplCache activation and setup
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" fix omnicomplete behaviour
set completeopt=longest,menuone

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

