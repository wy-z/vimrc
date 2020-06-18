
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

" deoplete.nvim
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<C-k>"


" vim-lsp
let g:lsp_diagnostics_enabled = 0 " disable diagnostics support
" close preview window after completion automatically
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
" close preview window with <esc>
autocmd User lsp_float_opened nmap <buffer> <silent> <esc>
  \ <Plug>(lsp-preview-close)
autocmd User lsp_float_closed nunmap <buffer> <esc>
" fix conflicts with 'multiple-cursors'
func! Multiple_cursors_before()
  if deoplete#is_enabled()
    call deoplete#disable()
    let g:deoplete_is_enable_before_multi_cursors = 1
  else
    let g:deoplete_is_enable_before_multi_cursors = 0
  endif
endfunc
func! Multiple_cursors_after()
  if g:deoplete_is_enable_before_multi_cursors
    call deoplete#enable()
  endif
endfunc
" language servers
if executable('jedi-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'jedi-language-server',
        \ 'cmd': {server_info->['jedi-language-server']},
        \ 'whitelist': ['python'],
        \ })
endif
if executable('bash-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'whitelist': ['sh'],
        \ })
endif

