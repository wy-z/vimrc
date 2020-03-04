
let g:neomake_python_enabled_makers = ['flake8','mypy']

let g:neoformat_enabled_python = ['black', 'isort']

" enable pyls
call lsp#register_server({
    \ 'name': 'pyls',
    \ 'cmd': {server_info->['pyls']},
    \ 'whitelist': ['python'],
    \ })

" go def mapping
nnoremap <buffer> <silent> gd :LspDefinition<CR>

