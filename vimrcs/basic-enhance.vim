
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
colorscheme Dracula
set background=dark

" Highlight
set colorcolumn=80,100
set cursorline
set cursorcolumn
au BufWinEnter * if &filetype == '' | setlocal nocursorline nocursorcolumn colorcolumn= | endif

" Smart way to move between windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Folding
set foldmethod=indent
set foldopen=all

" Terminal
if has('nvim')
    nmap <leader>` :terminal<cr>i
else
    nmap <leader>` :terminal<cr>
endif

" vim-localvimrc
let g:localvimrc_ask = 0

" vim-better-whitespace
let g:strip_whitespace_on_save = 1
let g:strip_whitelines_at_eof = 1
let g:strip_whitespace_confirm = 0

" Ripgrep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" System clipboard
map cp "+y
if has("mac")
    function! s:cmd_paste()
	let op = &paste?"paste":"nopaste"
	return "<esc>:set paste<cr>a<c-r>+<esc>:set ".op."<cr>a"
    endfunction

    execute "noremap! <expr> <d-v> ".s:cmd_paste()
    noremap <d-v> "+Pa
    tnoremap <expr> <d-v> '<c-\><c-n>"+Pi'
endif
