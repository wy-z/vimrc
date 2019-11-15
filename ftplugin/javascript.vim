
let g:neomake_javascript_enabled_makers = [executable('eslint_d') ? 'eslint_d' : 'eslint']

let g:neoformat_enabled_javascript = ['prettier']

" go def mapping
nnoremap <buffer> <silent> gd :YcmCompleter GoTo<cr>
nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>
