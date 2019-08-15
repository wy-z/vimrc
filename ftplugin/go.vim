
" vim-go
let g:go_fmt_autosave = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_auto_type_info = 1
nmap <leader>j :GoDecls<cr>

" neomake
let g:neomake_go_enabled_makers = ['golangci_lint']

" neoformat
let g:neoformat_enabled_go = ['goimports']

" gutentags
let g:gutentags_enabled = 0

