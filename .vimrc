" Auto install vim-plug (plugin manager) if not installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif  

" Plugin section -- Call ":PlugInstall" to save
call plug#begin()

Plug 'jpalardy/vim-slime'
Plug 'ocaml/vim-ocaml'

call plug#end()

" https://github.com/jpalardy/vim-slime#tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

" misc settings
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

