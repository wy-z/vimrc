
" incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

" fzf
let g:fzf_buffers_jump = 1
nmap <leader>p :GFiles<cr>
nmap <leader>pp :Files<cr>
nmap <leader>j :BTags<cr>
nmap <leader>s :BLines<cr>
nmap <leader>b :Buffers<cr>
nmap <leader><leader> :Commands<cr>
nmap <leader>/ :Rg<cr>
" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

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
let g:gutentags_file_list_command = {
   \ 'markers': {
       \ '.git': 'git ls-files',
       \ },
   \ }

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" YCM
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" lsp configure
let g:ycm_language_server = 
  \ [ 
  \   {
  \     'name': 'bash-language-server',
  \     'cmdline': [ 'bash-language-server', "start" ],
  \     'filetypes': [ 'sh' ]
  \   }
  \ ]

