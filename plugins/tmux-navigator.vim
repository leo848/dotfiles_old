Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'

let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1
let g:VtrClearBeforeSend = 0

" dp - debug pane commands
nnoremap <leader>dpa :VtrAttachToPane<cr>
nnoremap <leader>dpc :VtrSendCommandToRunner<cr>
nnoremap <leader>dpf :VtrFocusRunner<cr>
nnoremap <leader>dpo :VtrOpenRunner {'orientation': 'h', 'percentage': 40}<cr>
nnoremap <leader>dps :VtrSendLinesToRunner<cr>
nnoremap <leader>dpx :VtrKillRunner<cr>
