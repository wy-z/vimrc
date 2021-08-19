
" neomake
let g:neomake_go_enabled_makers = ['govet']

" neoformat
let g:neoformat_enabled_go = ['goimports']

" go def mapping
nnoremap <buffer> <silent> gd :lua vim.lsp.buf.definition()<CR>
