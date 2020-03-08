
let g:neomake_python_enabled_makers = ['flake8','mypy']

let g:neoformat_enabled_python = ['black', 'isort']

" enable pyls
call lsp#register_server({
    \ 'name': 'jedi-language-server',
    \ 'cmd': {server_info->['jedi-language-server']},
    \ 'whitelist': ['python'],
    \ })

" go def mapping
nnoremap <buffer> <silent> gd :LspDefinition<CR>

