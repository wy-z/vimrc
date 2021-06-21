let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_javascriptreact = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_typescriptreact = ['prettier']

let g:neomake_javascript_enabled_makers=['eslint']
let g:neomake_javascriptreack_enabled_makers=['eslint']
let g:neomake_typescript_enabled_makers=['eslint']
let g:neomake_typescriptreact_enabled_makers=['eslint']

" include node_modules bin dir
let $PATH .= ':'.$PWD.'/node_modules/.bin'

" go def mapping
nnoremap <buffer> <silent> gd :lua vim.lsp.buf.definition()<CR>
