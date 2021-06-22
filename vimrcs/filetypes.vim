
" python
lua << EOF
require'lspconfig'.jedi_language_server.setup{}
EOF

" sh
lua << EOF
require'lspconfig'.bashls.setup{}
EOF

" typescript
lua << EOF
require'lspconfig'.tsserver.setup{}
EOF
