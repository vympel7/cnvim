" General settings
set number
set numberwidth=1
set norelativenumber
set wrap
set shiftround
set tabstop=4
set softtabstop=4
set shiftwidth=4
let mapleader=";"
set cindent

" Mappings
nnoremap <M-k> ddkP
nnoremap <M-j> ddp
nnoremap <S-d> yyp

" Abbreviations
autocmd FileType c :inoreabbrev <buffer> mainc <esc>ggi#include<stdio.h><cr><cr><cr>int main(int argc, char** argv)<cr>{<cr><cr>return 0;<cr>}<esc>
