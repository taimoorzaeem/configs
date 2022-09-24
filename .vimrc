" Some vim commands to remember

set encoding=utf-8 " For char encodings

syntax on           " Turn on syntax highlighting

set number          " Display line numbers
set relativenumber  " Display line no relative to current line no

set softtabstop=4   " Allows going back 4 spaces with expand tab 
set tabstop=4       " A tab is 4 spaces
set shiftwidth=4    " Go 4 spaces in the file on tab press
set autoindent      " Return back to same indentation
set expandtab       " Expand the tab character to 4 spaces

set history=1000    " Get previous commands with up arrow


" Abbreviation could be used for code generation
" Just an example, I might never this one
iabbrev vimforloop for (int i = 0; i < x.size(); i++) {}

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
