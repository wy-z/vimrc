
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
set termguicolors

let mapleader = "\<space>"
let g:mapleader = "\<space>"

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

" Terminal
if has('nvim')
    nmap <leader>` :terminal<cr>i
else
    nmap <leader>` :terminal<cr>
endif

" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=SourceCodePro-Bold:h13
    if has("fullscreen")
        set fullscreen
    endif
endif
