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
set noexpandtab
set autoindent
set lazyredraw
set ttyfast
set nojoinspaces
set synmaxcol=500
set encoding=UTF-8
set noswapfile
set backspace=indent,eol,start
set wildmenu
set t_Co=256
set textwidth=80
colorscheme jhd 
syntax off

" fuzzy :find
set path +=**

" key bindings
map <leader>p gwap
map Y y$

" snippets

nnoremap <leader>bk :-1read $HOME/pandoc/snippets/bibtex/book<CR>jf,i
nnoremap <leader>ar :-1read $HOME/pandoc/snippets/bibtex/article<CR>jf,i
nnoremap <leader>on :-1read $HOME/pandoc/snippets/bibtex/online<CR>jf,i

nnoremap <leader>neo :-1read $HOME/pandoc/snippets/neocities_post.html<CR>/title<CR>f>a

" .md files
augroup filetype_markdown
    autocmd!
    autocmd Filetype markdown :NoMatchParen
    autocmd Filetype markdown :syntax on
augroup END

" .html files
augroup filetype_html
    autocmd!
    autocmd Filetype html imap <leader>c i<!-- --><ESC>Bi
    autocmd Filetype html map ] /<[a-z]<CR>
    autocmd Filetype html map [ ?<[a-z]<CR>
augroup END
