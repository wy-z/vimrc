
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

" coc.nvim
" Define extensions
let g:coc_global_extensions = ["coc-json", "coc-pairs", "coc-omni"]
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
" Use ctrl-j/k to navigate
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
" Correct JSON comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+
" Integration with lightline.vim
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status',
    \   'currentfunction': 'CocCurrentFunction'
    \ },
    \ }
