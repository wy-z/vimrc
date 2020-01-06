
let g:neomake_sh_enabled_makers=['sh', 'shellcheck']

let g:neoformat_enabled_sh = ['shfmt']

" enable bashls
call lsp#register_server({
    \ 'name': 'bash-language-server',
    \ 'cmd': {server_info->['bash-language-server', 'start']},
    \ 'whitelist': ['sh'],
    \ })

" go def mapping
nnoremap <buffer> <silent> gd :LspDefinition<CR>

