
let g:neomake_python_enabled_makers = ['flake8', 'mypy']

let g:neoformat_enabled_python = ['black', 'isort']

" enable pyls
lua require'nvim_lsp'.pyls.setup{}
" go def mapping
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>

