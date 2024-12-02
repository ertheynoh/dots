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
colorscheme jacqui
syntax on

" key bindings
map <leader>p gwap
map Y y$

"" neocities boilerplate
nnoremap <leader>n :-1read $HOME/pandoc/snippets/neocities_post.html<CR>/title<CR>f>a
