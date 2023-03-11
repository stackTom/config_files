set nocompatible
" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
map <C-a> <Home>
map <C-e> <End>
" Map Ctrl-A -> Start of line, Ctrl-E -> End of line while in insert mode
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^
" enable line numbers
set number
" and relative (hybrid) line numbers
set relativenumber
" turn syntax on
syntax on
" emacs style auto tabbing/indenting
set autoindent
set smartindent
" Make it so that a { brace automatically inserts an indented line and inserts a }
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>
" Make it so that a ( automatically inserts an indented line and inserts a )
inoremap (<CR> (<CR>)<Esc>O<BS><Tab>
" highlight all search matches
set hlsearch
" highlight first search result while typing
set incsearch
" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
" tabs to spaces. to retab, do: :retab
set expandtab
set tabstop=4
" make sure shifting with > and < works
set sw=4
" enable ruler
set ruler
" show file name always
set laststatus=2
" map jk to ESC key
imap jk <Esc>
" case insensitive search
set ignorecase
set autoread
" easier highlight when line are numbers on using mouse
" set ttymouse=xterm2
" set mouse=a
" text over 80 chars is red
" au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" red color column
set colorcolumn=80
highlight ColorColumn ctermbg=7 guibg=lightgrey

" let backspace work in vsvim
set backspace=indent,eol,start

