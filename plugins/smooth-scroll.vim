Plug 'terryma/vim-smooth-scroll'

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<cr>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<cr>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<cr>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<cr>
