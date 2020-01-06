
let g:neoformat_enabled_javascript = ['prettier']

" enable tsserver
call lsp#register_server({
    \ 'name': 'typescript-language-server',
    \ 'cmd': {server_info->['typescript-language-server']},
    \ 'whitelist': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact'],
    \ })

" go def mapping
nnoremap <buffer> <silent> gd :LspDefinition<CR>

