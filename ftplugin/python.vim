
let g:neomake_python_enabled_makers = ['mypy']

let g:neoformat_enabled_python = ['black', 'isort']

" enable pyls
call lsp#register_server({
    \ 'name': 'pyls',
    \ 'cmd': {server_info->['pyls']},
    \ 'whitelist': ['python'],
    \ 'workspace_config': {'pyls': {'configurationSources': ['flake8'], 'plugins': {'pyflakes': {'enabled': v:false}, 'flake8': {'enabled': v:true}}}},
    \ })

" go def mapping
nnoremap <buffer> <silent> gd :LspDefinition<CR>

