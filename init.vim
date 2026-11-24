" General settings
" {{{
set number
set numberwidth=1
set relativenumber
set wrap
set shiftround
set cindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set noexpandtab
let mapleader=";"
set foldmethod=marker
set synmaxcol=8192
" }}}

" Set .h files as c files
autocmd BufEnter *.h set filetype=c
" Set .sage files as py files
autocmd BufEnter *.sage set filetype=python

" init.vim access
" {{{
" vertical split init.vim
nnoremap <leader>ev :vs $MYVIMRC<CR>
" save and source init.vim
nnoremap <leader>sv :w<CR> :source $MYVIMRC<CR>
" close init.vim without saving
nnoremap <leader>cv :q!<CR>
" save, source and close init.vim
nnoremap <leader>csv :normal <leader>sv<CR> :normal <leader>cv<CR>
" }}}

" Mappings
" {{{
" bring line down
nnoremap <M-j> ddp
" bring line up
nnoremap <M-k> kddp<esc>k
" duplicate line
nnoremap <S-d> yyp
" open all folders
nnoremap zao zR
" close all folders
nnoremap zac zM
" }}}

" Functions
function! Incc()
	let l:fname = toupper(expand("%:t:r")) . "_" . toupper(expand("%:e"))
	return '#ifndef ' . l:fname . "\n" . '#define ' . l:fname
endfunction

" Abbreviations
autocmd FileType c :inoreabbrev <buffer> mainc <esc>ggi#include<stdio.h><cr><cr><cr>int main(int argc, char** argv)<cr>{<cr><cr>return 0;<cr>}<esc>
autocmd FileType c :inoreabbrev <buffer> mainvc <esc>ggi#include<stdio.h><cr><cr><cr>int main(void)<cr>{<cr><cr>return 0;<cr>}<esc>
autocmd FileType c :inoreabbrev <buffer> incc <esc>ggo<C-R>=Incc()<CR><esc>Go<esc>o#endif<esc>
autocmd FileType python :inoreabbrev <buffer> mainpy <esc>ggi<cr><cr>def main():<cr>pass<cr><cr><cr><esc>0iif __name__ == '__main__':<cr>main()<esc>
autocmd FileType python :inoreabbrev <buffer> pwnpy <esc>ggifrom pwn import *<cr><cr>def main():<cr>io = remote() if args.REMOTE else process(['python', ''])<cr><cr>io.close()<cr><cr><cr><esc>0iif __name__ == '__main__':<cr>main()<esc>
autocmd FileType python :inoreabbrev <buffer> rsd <esc>aio.recvline().strip().decode()<esc>
