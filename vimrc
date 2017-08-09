execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim

syntax on
filetype plugin indent on

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/]\.(git|hg|svn)$|node_modules',
  \ 'file': '\v\.(exe|so|dll|DS_Store)$',
  \ }

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set autoread
set background=dark
set nocursorline
set cc=80
set encoding=utf-8
set expandtab
set incsearch
set laststatus=2
set nohlsearch
set noswapfile
set number
set shiftwidth=2
set tabstop=2

set splitright
set splitbelow

set list
set listchars=tab:>-,trail:-,extends:>,precedes:<

set undofile
set undodir=/home/paulfryzel/.vimundo/

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
au BufRead,BufNewFile *.json setl sw=4 ts=4 sts=0 et

hi CursorLine term=NONE cterm=NONE ctermbg=NONE
hi OverLength ctermbg=red ctermfg=white guibg=#dc322f

:set fillchars+=vert:\ 

function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

if has('statusline')
  set statusline=%#Question#                   " set highlighting
  set statusline+=%#WarningMsg#                " set highlighting
  set statusline+=%f\                          " file name
  set statusline+=%#Question#                  " set highlighting
  set statusline+=%h%m%r%w\                    " flags
  set statusline+=%y\                          " file type
  set statusline+=%{(&fenc==\"\"?&enc:&fenc)}, " encoding
  set statusline+=%{&fileformat}               " file format
  set statusline+=%=                           " ident to the right
  set statusline+=%-7.(%l,%c%V%)\ %<%P         " cursor position/offset
endif

set t_Co=256
let base16colorspace=256

let g:ycm_confirm_extra_conf=0
