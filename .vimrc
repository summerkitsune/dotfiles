" julie' .vimrc

" recommended defaults
set nocompatible    " nocompatible with vi
set hidden          " hidden modified buffers

" encoding
scriptencoding utf-8
set encoding=utf-8

" for plugins
call pathogen#infect()

" remaps
:imap ;; <Esc>
:map ;; <Esc>
:let mapleader = ' '

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

" NeoComplCache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

