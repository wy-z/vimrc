
set number
set relativenumber
set mouse=a
set exrc
set undodir=~/.cache/undo-dir
set undofile
set ignorecase
set smartcase
set autoread
set timeoutlen=600

let mapleader = "\<space>"
let g:mapleader = "\<space>"

" Esc
imap fd <Esc>

" Colorscheme
colorscheme Monokai
set background=dark

" Highlight
set colorcolumn=80,100 
set cursorline
set cursorcolumn
au BufWinEnter * if &filetype == '' | setlocal nocursorline nocursorcolumn colorcolumn= | endif 

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Folding
set foldmethod=indent
set foldopen=all

" FileTypes
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType sh setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType proto setlocal ts=4 sts=4 sw=4 expandtab

" Terminal
if has('nvim')
    nmap <leader>` :terminal<cr>i
else
    nmap <leader>` :terminal<cr>
endif
