" Pathogen
execute pathogen#infect()
execute pathogen#helptags()

syntax on

" Powerline
set nocompatible
set laststatus=2

" Solarized settings
" let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

set encoding=utf-8

set expandtab
set tabstop=2
set shiftwidth=2

" tab navigation like firefox
nmap <C-S-tab> :tabprevious
nmap <C-i> :bn<CR>

"Column- and linenumber
set number
set ruler

"Column- and linehighlight
set cursorline
set cursorcolumn

" Searching
set hlsearch                    " highlight matches
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...

" enable filetype detection, plus loading of filetype plugins
:filetype plugin on


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

" Shortcuts for switching buffer
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
" nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
