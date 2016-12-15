" julie's init.vim for neovim

" Plugin manager
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'matchit.zip'
Plug 'raimondi/delimitmate'

Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " On-demand loading
Plug 'kien/ctrlp.vim'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Deoplete (autocompletion plugin)
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
" Enable Deoplete
let g:deoplete#enable_at_startup = 1

" Add plugins to &runtimepath
call plug#end()

" hidden modified buffers
set hidden

" remaps
:imap ;; <Esc>
:map ;; <Esc>
:let mapleader = ' '
let g:ctrlp_map = '<leader>p'
" for nvim terminal
:tnoremap <leader>h <C-\><C-n><C-w>h
:tnoremap <leader>j <C-\><C-n><C-w>j
:tnoremap <leader>k <C-\><C-n><C-w>k
:tnoremap <leader>l <C-\><C-n><C-w>l
:nnoremap <leader>h <C-w>h
:nnoremap <leader>j <C-w>j
:nnoremap <leader>k <C-w>k
:nnoremap <leader>l <C-w>l

" interface
set title
set number
set ruler
set wrap
set scrolloff=3

" 4 tab spaces
set tabstop=4
set shiftwidth=4
set expandtab

" hide GVim toolbar
set guioptions=aiAc

" search
set ignorecase
set smartcase

" beep silence
set visualbell
set noerrorbells

" syntax highlight
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme PaperColor

" markdown syntax and highlight
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['php', 'python',  'bash=sh', 'css', 'javascript', 'json=javascript', 'xml', 'html']

