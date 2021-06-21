
let g:neomake_sh_enabled_makers=['sh', 'shellcheck']

let g:neoformat_enabled_sh = ['shfmt']

" go def mapping
nnoremap <buffer> <silent> gd :lua vim.lsp.buf.definition()<CR>
