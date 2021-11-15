
" incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

" telescope.nvim
nmap <leader>p :Telescope git_files<cr>
nmap <leader>pp :Telescope find_files<cr>
nmap <leader>j :Telescope treesitter<cr>
nmap <leader>s :Telescope current_buffer_fuzzy_find<cr>
nmap <leader>b :Telescope buffers<cr>
nmap <leader><leader> :Telescope commands<cr>
nmap <leader>/ :Telescope live_grep<cr>
lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
defaults = {
  mappings = {
    i = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      },
    },
  }
}
EOF

" ctrlsf.vim
let g:ctrlsf_case_sensitive = 'yes'
nmap     <leader>ff <Plug>CtrlSFPrompt
vmap     <leader>ff <Plug>CtrlSFVwordPath
nnoremap <leader>fo :CtrlSFOpen<CR>
nnoremap <leader>ft :CtrlSFToggle<CR>

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

" vim-localvimrc
let g:localvimrc_ask = 0

" vim-better-whitespace
let g:strip_whitespace_on_save = 1
let g:strip_whitelines_at_eof = 1
let g:strip_whitespace_confirm = 0

" nvim-lua/completion-nvim
" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <C-j>   pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c
let g:completion_sorting = "length"
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_trigger_keyword_length = 2
let g:completion_timer_cycle = 200
let g:completion_chain_complete_list = {
      \'default' : [
	\    {'complete_items': ['lsp', 'buffers', 'ts']},
	\    {'mode': '<c-p>'},
	\    {'mode': '<c-n>'}
	\],
	\'TelescopePrompt': []
	\}

" nvim-tree
lua <<EOF
require'nvim-tree'.setup {
  nvim_tree_gitignore = true,
  view = {
    -- if true the tree will resize itself after opening a file
    auto_resize = true,
    }
  }
EOF
nnoremap <leader>t :NvimTreeToggle<CR>
