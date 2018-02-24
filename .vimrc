set nocompatible
" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
:map <C-a> <Home>
:map <C-e> <End>
" Map Ctrl-A -> Start of line, Ctrl-E -> End of line while in insert mode
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^
" enable line numbers
:set number
" turn syntax on
:syntax on
" emacs style auto tabbing/indenting
:set autoindent
:set smartindent
" Make it so that a curly brace automatically inserts an indented line
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>
" highlight all search matches
:set hlsearch
" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
" tabs to spaces. to retab, do: :retab
:set expandtab
:set tabstop=4
" make sure shifting with > and < works
:set sw=4

