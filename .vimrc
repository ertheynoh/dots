" vimrc
filetype plugin on
set ignorecase
set noerrorbells
set belloff=all
set wrap
set ruler
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set nojoinspaces
set encoding=UTF-8
set noswapfile
set backspace=indent,eol,start
set wildmenu
set t_Co=256
set textwidth=80
set cedit=<Tab>
colorscheme jacqui
syntax on

" key bindings
map \p gwap
map Y y$
map \t :Texplore<CR>
map \d :r !date '+\%Y-\%m-\%d'<CR>
map \= :.t.<CR>:s/./=/g<CR>
map \- :.t.<CR>:s/./-/g<CR>
map \3 I### <ESC>A ###<ESC><CR>
map \4 I#### <ESC>A ####<ESC><CR>


" macros

"" neocities html boilerplate
map \n :-1read $HOME/pandoc/snippets/neocities_post.html<CR>/title<CR>f>a

"" copy current paragraph, visual mode selection, or line to tmux pane 1
"" for sending code to an interpreter without leaving vim :)
map mm vip:w ! cat \| tmux loadb - && tmux pasteb -t .1<CR><CR>
map mf :w \| !tmux loadb % && tmux pasteb -t .1<CR><CR>
map ms :w ! cat \| tmux loadb - && tmux pasteb -t .1<CR><CR>
map ml V:w ! cat \| tmux loadb - && tmux pasteb -t .1<CR><CR>
