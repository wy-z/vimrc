
let g:neoformat_enabled_javascript = ['prettier']

" go def mapping
nnoremap <buffer> <silent> gd :YcmCompleter GoTo<cr>
nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>
