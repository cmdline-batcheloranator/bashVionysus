execute pathogen#infect()

syntax on 

set ai
set ruler
set number
set hlsearch
set t_Co=256
set showmode
set showmatch
set background=dark

colorscheme PaperColor 

let g:tagbar_width=13
let g:NERDTreeWinSize=13

highlight LineNr ctermfg=magenta

autocmd vimenter * NERDTree
autocmd vimenter * Tagbar
