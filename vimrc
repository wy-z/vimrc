
let s:this_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let &rtp.=','.s:this_dir

"
" Plugins
"
call plug#begin('~/.cache/plugged')

for fpath in split(globpath(s:this_dir.'/plugins', '*.plug'), '\n')
  exe 'source' fpath
endfor

" Initialize plugin system
call plug#end()

"
" Settings
"
for fpath in split(globpath(s:this_dir.'/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
