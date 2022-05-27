
" fzf.vim
let g:fzf_buffers_jump = 1
nmap <leader>p  :GFiles<cr>
nmap <leader>pp :Files<cr>
nmap <leader>j  :BTags<cr>
nmap <leader>s  :BLines<cr>
nmap <leader>b  :Buffers<cr>
nmap <leader><leader> :Commands<cr>
nmap <leader>/  :Rg<cr>

" ctrlsf.vim
let g:ctrlsf_case_sensitive = 'yes'
nmap     <leader>ff <Plug>CtrlSFPrompt
vmap     <leader>ff <Plug>CtrlSFVwordPath
nnoremap <leader>fo :CtrlSFOpen<CR>
nnoremap <leader>ft :CtrlSFToggle<CR>

" nvim-tree
nnoremap <leader>t :NvimTreeToggle<CR>

" neomake
call neomake#configure#automake('w')
let g:neomake_open_list = 2

" neoformat
let g:neoformat_run_all_formatters = 1
augroup fmt
    autocmd!
    au BufWritePre * try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry
augroup END
