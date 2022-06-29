
" fzf.vim
let g:fzf_buffers_jump = 1
nmap <leader>p  :FzfLua git_files<cr>
nmap <leader>pp :FzfLua files<cr>
nmap <leader>s  :FzfLua blines<cr>
nmap <leader>b  :FzfLua buffers<cr>
nmap <leader>j  :FzfLua lsp_document_symbols<cr>
nmap <leader><leader> :FzfLua commands<cr>
nmap <leader>/  :FzfLua grep_project<cr>

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
