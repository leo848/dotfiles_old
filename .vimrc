let mapleader=","

autocmd vimenter * ++nested colorscheme gruvbox

set number
set relativenumber

set showcmd
set noshowmode

set autowrite

set wildmenu
set wildmode=list:longest
set wildignore=*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img
set wildignorecase

set showtabline=2
set tabstop=3
set shiftwidth=3


set ignorecase

" Code Folding
set foldmethod=indent

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 30, 4)<CR>

noremap <silent> <c-f> :FZF<CR>

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END


" statusbar ------ {{{

let g:lightline = {
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \ },
      \ }

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

" }}}


autocmd filetype python nnoremap <F3> :w <bar> exec '!python3.9 '.shellescape('%')<CR>
autocmd filetype c nnoremap <F3> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F3> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

autocmd filetype python Alias f !black\ --fast\ %

source ~/.vimrc.plug

autocmd VimEnter * :source ~/.vimrc.aliases

autocmd BufWritePre *.html :normal gg=G
