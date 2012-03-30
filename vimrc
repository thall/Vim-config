" Pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on
set background=dark
colorscheme solarized

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


" Change working dir with  'comma c d'
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
