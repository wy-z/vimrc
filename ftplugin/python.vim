
let g:neomake_python_enabled_makers = ['flake8','mypy']

let g:neoformat_enabled_python = ['black', 'isort']

" go def mapping
nnoremap <buffer> <silent> gd :lua vim.lsp.buf.definition()<CR>
