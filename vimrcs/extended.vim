
" YCM
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Vim-Gitgutter
set updatetime=250
let g:gitgutter_enabled = 1

" incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
imap fd <Esc>

" fzf
let g:fzf_buffers_jump = 1
nmap <leader>p :Files<cr>
nmap <leader>k :BTags<cr>
nmap <leader>j :BLines<cr>
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

" Vim expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Vim sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1
nmap <leader>s <Plug>Sneak_s
nmap <leader>S <Plug>Sneak_s
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" indentline
let g:indentLine_enabled = 1
let g:indentLine_setColors = 1

" neomake
call neomake#configure#automake('w')
let g:neomake_open_list = 1

" neoformat
augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END

 " vim-gutentags
 let g:gutentags_cache_dir = expand('~/.cache/tags')
