
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 0
let g:go_def_mapping_enabled = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

let g:neomake_go_golint_maker = {
	\ 'exe': 'revive',
	\ 'errorformat':
            \ '%I%f:%l:%c: %m,' .
            \ '%-G%.%#'
	\ }
let g:neomake_go_enabled_makers = ['go', 'golint', 'govet']