
autocmd BufEnter,BufRead *.vue set filetype=vue.typescript
let g:neomake_vue_enabled_makers=['eslint', 'standard']
let g:neoformat_enabled_vue = ['prettier']
