
" Neovide
if exists("g:neovide")
    set guifont=Hack\ Nerd\ Font:h13
    let g:neovide_cursor_trail_size=0.38
    let g:neovide_cursor_animation_length=0.038
    call timer_start(620, { -> execute('let g:neovide_fullscreen=v:true')})

    " system clipboard
    let g:neovide_input_use_logo=v:true
endif
