
let g:neoformat_enabled_javascript = ['prettier']

" enable tsserver
lua require'nvim_lsp'.tsserver.setup{}
" go def mapping
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
