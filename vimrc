syntax on
set background=dark
colorscheme solarized

set expandtab
set tabstop=2
set shiftwidth=2

" Linenumber
set number

" Column number
set ruler

" Omnicppcomplete
set nocp

" SingleCompile
filetype plugin on
nmap <F9> :SCCompile<cr> 
nmap <F10> :SCCompileRun<cr>

" Change working dir with  'comma c d'
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
