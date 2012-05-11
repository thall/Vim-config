" Pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on

" Powerline
set nocompatible
set laststatus=2

" Solarized settings
set background=dark
colorscheme solarized
let g:solarized_termcolors=256


set encoding=utf-8

set expandtab
set tabstop=2
set shiftwidth=2

"Column- and linenumber
set number
set ruler

" Searching
set hlsearch                    " highlight matches
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...

" Backup
set backup
set backupdir=~/.tmp/vim/backup

" Swap
set directory=~/.tmp/vim/swp

" Presistent undo
set undodir=~/.tmp/vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
