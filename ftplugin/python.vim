
let g:neomake_python_enabled_makers = ['flake8','mypy']

let g:neoformat_enabled_python = ['black', 'isort']

" enable pyls
call lsp#register_server({
    \ 'name': 'pyls',
    \ 'cmd': {server_info->['pyls']},
    \ 'whitelist': ['python'],
    \ 'workspace_config': {'pyls': {'configurationSources': ['flake8']}},
    \ })

" go def mapping
nnoremap <buffer> <silent> gd :LspDefinition<CR>

