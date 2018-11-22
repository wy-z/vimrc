
" vim-go
let g:go_fmt_autosave = 0
let g:go_def_mapping_enabled = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

" neomake
let g:neomake_go_golint_maker = {
	\ 'exe': 'revive',
	\ 'errorformat':
            \ '%I%f:%l:%c: %m,' .
            \ '%-G%.%#'
	\ }
let g:neomake_go_enabled_makers = ['go', 'golint', 'govet']

" neoformat
let g:neoformat_enabled_go = ['goimports']

