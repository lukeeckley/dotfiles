"
" Color and Syntax
" Assuming that the Console/Terminal has a dark background
"
set background=dark
syntax enable
colorscheme koehler

"
" Status line
"
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
hi statusline ctermfg=black

"
" Tabs and spaces
"
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set nowrap "DONT wrap lines

"
" Misc
"
set encoding=utf8
filetype plugin on
filetype indent on
