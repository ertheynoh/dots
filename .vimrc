" vimrc
filetype plugin on
set ignorecase
set noerrorbells
set belloff=all
set wrap
set ruler
set tabstop=8
set softtabstop=4
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
syntax on

" fuzzy :find
set path +=**

" no netrw banner
let g:netrw_banner=0 

" key bindings
map <leader>p gwap
map Y y$

" file explorer
map <leader>n :Vexplore<CR>
map <leader>t :Texplore<CR>

" snippets

" biblatex snippets
nnoremap <leader>bk :-1read $HOME/.vim/snippets/bibtex/book<CR>jf,i
nnoremap <leader>ar :-1read $HOME/.vim/snippets/bibtex/article<CR>jf,i
nnoremap <leader>bb :-1read $HOME/.vim/snippets/bibtex/inbook<CR>jf,i
nnoremap <leader>on :-1read $HOME/.vim/snippets/bibtex/online<CR>jf,i
nnoremap <leader>mv :-1read $HOME/.vim/snippets/bibtex/mvbook<CR>jf,i
nnoremap <leader>bkv :-1read $HOME/.vim/snippets/bibtex/mvbook_volume<CR>jf,i
nnoremap <leader>m :-1read $HOME/.vim/snippets/bibtex/movie<CR>jf,i

nnoremap <leader>yam :-1read $HOME/.vim/snippets/markdown_yaml<CR>
nnoremap <leader>neo :-1read $HOME/.vim/snippets/neocities_post.html<CR>/title<CR>f>a
nnoremap <leader>h :-1read $HOME/.vim/snippets/html<CR>/title<CR>f>a

" markdown
augroup filetype_markdown
    autocmd!
    autocmd Filetype markdown :NoMatchParen
augroup END

" html
augroup filetype_html
    autocmd!
    autocmd Filetype html setlocal softtabstop=2
    autocmd Filetype html imap <leader>c i<!-- --><ESC>Bi
    autocmd Filetype html map ] /<<CR>
    autocmd Filetype html map [ ?<<CR>
augroup END

" css
augroup filetype_css
    autocmd!
    autocmd Filetype css setlocal softtabstop=2
augroup END

" latex
augroup filetype_tex
    autocmd!
    autocmd Filetype tex setlocal tabstop=2
    autocmd Filetype tex map <leader>l :!pdflatex %<CR>
augroup END
