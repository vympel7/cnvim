set number
set numberwidth=1
set norelativenumber
set wrap
set shiftround
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType c :inoreabbrev <buffer> mainc <esc>ggi#include<stdio.h><cr><cr><cr>int main(int argc, char** argv)<cr>{<cr><cr>return 0;<cr>}<esc>
