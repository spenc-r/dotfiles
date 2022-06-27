filetype plugin indent on
set tb=4 sw=4
" On pressing tab, insert 4 spaces
set expandtab
if &term =~ "screen"                                                   
    let &t_BE = "\e[?2004h"                                              
    let &t_BD = "\e[?2004l"                                              
    exec "set t_PS=\e[200~"                                              
    exec "set t_PE=\e[201~"                                              
endif
au BufReadPost *.glsl set syntax=c

set number
set relativenumber
syntax on
set ignorecase
set smartcase
set incsearch
