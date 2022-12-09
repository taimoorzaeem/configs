" Some vim commands to remember


syntax on               " Turn on syntax highlighting

set autoindent          " Return back to same indentation
set encoding=utf-8      " For char encodings
set expandtab           " Expand the tab character to 4 spaces
set history=1000        " Get previous commands with up arrow
set list                " Use this setting to identify tabs and newlines
set noswapfile          " Disable swap file
set number              " Display line numbers
set relativenumber      " Display line no relative to current line no
set shell               " Set custom shell
set shiftwidth=4        " Go 4 spaces in the file on tab press
set softtabstop=4       " Allows going back 4 spaces with expand tab 
set spell               " Spell checker
set tabstop=4           " A tab is 4 spaces
set title               " Display filename on top
set whichwrap+=<,>,h,l  " Goto next line when press l

" Abbreviation could be used for code generation
" Just an example, I might never this one
iabbrev vimforloop for (int i = 0; i < x.size(); i++) {}

" Using autocmd to change syntax file
" to override default syntax file

" This assume a coq.vim file in /usr/share/vim/vim81/syntax/
augroup coq_ft
  au!
  autocmd BufNewFile,BufRead *.v   set syntax=coq
augroup END

" Functions to combine operations
" call with ':call Func()'
function! TwoSpaces()
    set softtabstop=2
    set tabstop=2
    set shiftwidth=2
endfunction

function! MakefileMod()
    set noexpandtab
endfunction

" Define digraphs for unicode chars
dig T- 8866

" Type in shell: setxkbmap -option caps:swapescape
" to swap capslock with escape key or use 
" setxkbmap -option caps:escape to map both to escape
" To revert: setxkbmap -option
