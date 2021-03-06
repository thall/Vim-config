" Pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on

" Powerline
set nocompatible
set laststatus=2

" Solarized settings
let g:solarized_termcolors=256
 set t_Co=256
set background=dark
colorscheme solarized

set encoding=utf-8

set expandtab
set tabstop=2
set shiftwidth=2

" tab navigation like firefox
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

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

" Syntactic path
let g:syntastic_cpp_include_dirs = ["/home/tall/metadex/include/"]

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

" Vala
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Disable valadoc syntax highlight
" "let vala_ignore_valadoc = 1
"
" " Enable comment strings
" let vala_comment_strings = 1
"
" " Highlight space errors
" let vala_space_errors = 1
" " Disable trailing space errors
" "let vala_no_trail_space_error = 1
" " Disable space-tab-space errors
" let vala_no_tab_space_error = 1
"
" " Minimum lines used for comment syncing (default 50)
" "let vala_minlines = 120

" Relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Disable arrows
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" VIM GOLF
" http://vimdoc.sourceforge.net/htmldoc/starting.html#vimrc
"  
set nocompatible        " use vim defaults
set scrolloff=3         " keep 3 lines when scrolling
" set ai                  " set auto-indenting on for programming
 
set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column
 
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
 
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
 
set backspace=indent,eol,start  " make that backspace key work the way it should
  
filetype on             " detect type of file
"filetype indent on      " load indent file for specific file type
   
set t_RV=               " http://bugs.debian.org/608242, http://groups.google.com/group/vim_dev/browse_thread/thread/9770ea844cec3282

" Haskellmode
au BufEnter *.hs compiler ghc
