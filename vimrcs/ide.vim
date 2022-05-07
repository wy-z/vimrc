
" telescope.nvim
nmap <leader>p :Telescope git_files<cr>
nmap <leader>pp :Telescope find_files<cr>
nmap <leader>j :Telescope treesitter<cr>
nmap <leader>s :Telescope current_buffer_fuzzy_find<cr>
nmap <leader>b :Telescope buffers<cr>
nmap <leader><leader> :Telescope commands<cr>
nmap <leader>/ :Telescope live_grep<cr>
nmap <leader>// :Telescope grep_string search="" only_sort_text=true<cr>

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
