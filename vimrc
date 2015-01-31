execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim

colorscheme elflord
syntax on
filetype plugin indent on

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/]\.(git|hg|svn)$|node_modules',
  \ 'file': '\v\.(exe|so|dll|DS_Store)$',
  \ }

set background=dark
set nocursorline
set cc=80
set encoding=utf-8
set expandtab
set number
set shiftwidth=2
set tabstop=2

set splitright
set splitbelow

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
au BufRead,BufNewFile *.json setl sw=4 ts=4 sts=0 et

hi CursorLine term=NONE cterm=NONE ctermbg=NONE
hi OverLength ctermbg=red ctermfg=white guibg=#dc322f

:set fillchars+=vert:\ 
