" Pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on

" Solarized settings
set background=dark
colorscheme solarized
let g:solarized_termcolors=256


set encoding=utf-8

set expandtab
set tabstop=2
set shiftwidth=2
" Textwidth <= 80
set tw=80

" Linenumber
set number

" Column number
set ruler

" Searching
set hlsearch                    " highlight matches
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
