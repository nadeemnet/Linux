set nobackup
set nowritebackup
set noswapfile
set autoread
set shortmess+=I
set ic
set ruler
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set hlsearch
set incsearch
execute pathogen#infect()
filetype plugin indent on
syntax on

" For auto save
:au! CursorHoldI,CursorHold <buffer> silent! :update

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Disable highlight when <leader><cr> is pressed
" By default leader is defined as \ key
map <silent> <leader><cr> :noh<cr>

" By setting laststatus=2, you are instructing Vim to always display the status
" line at the bottom of the window, whether you have a single window or multiple
" windows (split screens) open.
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ \ \ \ Line:\ %l\ \ Column:\ %c

"  use the system clipboard
set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s " move to next spell check error
map <leader>sp [s " move to previous spell check error
map <leader>sa zg " currently highlighted word as a "good" word in the spell-checker dictionary.
map <leader>s? z= " run spell check on word under cursor


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc key mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inserts a separator line
nnoremap <leader>= 80i=<esc>


" For Python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" testing
:map <space> viw



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup GoAutoCmd
    autocmd!
    autocmd BufNewFile *.go 0r ~/.vim/go-template.txt
augroup END
