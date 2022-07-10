
" Neovide
if exists("g:neovide")
    set guifont=Hack\ Nerd\ Font:h13
    let g:neovide_cursor_trail_length=0.2
    call timer_start(620, { -> execute('let g:neovide_fullscreen=v:true')})

    " system clipboard
    let g:neovide_input_use_logo=v:true
    nmap <d-c> "+y
    vmap <d-c> "+y
    nmap <d-v> "+p
    inoremap <d-v> <c-r>+
    cnoremap <d-v> <c-r>+
endif
