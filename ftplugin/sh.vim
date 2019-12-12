
let g:neomake_sh_enabled_makers=['sh', 'shellcheck']

let g:neoformat_enabled_sh = ['shfmt']

" enable bashls
lua require'nvim_lsp'.bashls.setup{}
" go def mapping
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
