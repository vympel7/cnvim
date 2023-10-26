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

" Set .h files as c files
autocmd BufEnter *.h set filetype=c

" Mappings
nnoremap <M-k> ddkP
nnoremap <M-j> ddp
nnoremap <S-d> yyp

" Functions
function! Incc()
	let l:fname = toupper(expand("%:t:r")) . "_" . toupper(expand("%:e"))
	return '#ifndef ' . l:fname . "\n" . '#define ' . l:fname
endfunction

" Abbreviations
autocmd FileType c :inoreabbrev <buffer> mainc <esc>ggi#include<stdio.h><cr><cr><cr>int main(int argc, char** argv)<cr>{<cr><cr>return 0;<cr>}<esc>
autocmd FileType c :inoreabbrev <buffer> mainvc <esc>ggi#include<stdio.h><cr><cr><cr>int main(void)<cr>{<cr><cr>return 0;<cr>}<esc>
autocmd FileType c :inoreabbrev <buffer> incc <C-R>=Incc()<CR><esc>Go#endif
