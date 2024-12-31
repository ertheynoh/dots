" vimrc
filetype plugin on
set ignorecase
set noerrorbells
set belloff=all
set wrap
set ruler
set tabstop=8
set autoindent
set nojoinspaces
set encoding=UTF-8
set noswapfile
set backspace=indent,eol,start
set wildmenu
set t_Co=256
set textwidth=80
colorscheme jacqui
syntax on

" key bindings
map \p gwap
map Y y$

" macros

"" neocities html boilerplate
map \n :-1read $HOME/pandoc/snippets/neocities_post.html<CR>/title<CR>f>a

"" copy current paragraph, vmode selection, or line to tmux pane 1
"" i.e. send code to interpreter without leaving vim :)
map cc vip:w ! cat \| tmux loadb - && tmux pasteb -t .1<CR><CR>
map cs :w ! cat \| tmux loadb - && tmux pasteb -t .1<CR><CR>
map cl V:w ! cat \| tmux loadb - && tmux pasteb -t .1<CR><CR>
