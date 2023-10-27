" General settings
" {{{
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
set foldmethod=marker
" }}}

" Set .h files as c files
autocmd BufEnter *.h set filetype=c

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
" bring line down {{{
nnoremap <M-k> ddkP
" bring line up
nnoremap <M-j> ddp
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
autocmd FileType c :inoreabbrev <buffer> incc <C-R>=Incc()<CR><esc>Go#endif
