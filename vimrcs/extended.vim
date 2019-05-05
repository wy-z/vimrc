
" Vim-Gitgutter
set updatetime=250
let g:gitgutter_enabled = 1

" incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

" fzf
let g:fzf_buffers_jump = 1
nmap <leader>p :Files<cr>
nmap <leader>j :BTags<cr>
nmap <leader>s :BLines<cr>
nmap <leader>b :Buffers<cr>
nmap <leader><leader> :Commands<cr>
nmap <leader>/ :Rg<cr>

" ctrlsf.vim
nmap     <leader>ff <Plug>CtrlSFPrompt
vmap     <leader>ff <Plug>CtrlSFVwordPath
nnoremap <leader>fo :CtrlSFOpen<CR>
nnoremap <leader>ft :CtrlSFToggle<CR>

" ripgrep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" Vim sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1
nmap <leader>f <Plug>Sneak_s
nmap <leader>F <Plug>Sneak_s
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" indentline
let g:indentLine_enabled = 1
let g:indentLine_setColors = 1

" neomake
call neomake#configure#automake('w')
let g:neomake_open_list = 2

" neoformat
let g:neoformat_run_all_formatters = 1
augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END

" vim-gutentags
let g:gutentags_cache_dir = expand('~/.cache/tags')

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue EmmetInstall

" coc.vim
" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<C-k>"
