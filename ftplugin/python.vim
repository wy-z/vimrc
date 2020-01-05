
let g:neomake_python_enabled_makers = ['flake8', 'mypy']

let g:neoformat_enabled_python = ['black', 'isort']

" enable pyls
lua <<EOF
require'nvim_lsp'.pyls.setup{
  settings = {
    pyls = {
      configurationSources = {'flake8'};
      plugins = {
        pyflakes = {
          enabled = false;
        };
      }
    }
  }
}
EOF
" go def mapping
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>

