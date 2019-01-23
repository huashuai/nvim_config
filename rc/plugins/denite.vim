"设置使用ag与grep
call denite#custom#var('grep', 'command', ['ag'])
nnoremap <localLeader>p :call denite#start([{'name': 'grep', 'args': ['', '', '!']}])<cr>
"当前目录搜索使用ag
call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
"其他grep设置
call denite#custom#var('grep', 'default_opts',['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

"ESC结束
call denite#custom#map('insert', '<esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', '<esc>', '<denite:quit>', 'noremap')
"C-N,C-P上下移動
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
"C-J,C-K分屏
call denite#custom#map('insert', '<C-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:do_action:vsplit>', 'noremap')

"buffer列表
noremap <localleader>b :Denite buffer<CR>
" 文件列表
noremap <localleader>bn :Denite -buffer-name=file file<CR>
" 最近使用文件列表
noremap <localleader>fo :Denite file_old -winheight=10 -vertical-preview -auto-preview<CR>
" 当前目录
noremap <localleader>fr :Denite file_rec -default-action=vsplit<CR>

"Denite line
nnoremap  <localLeader>dl :<C-u>Denite line -auto-preview<CR>
nnoremap <silent> <expr><Space>l ":<C-u>DeniteWithCursorWord line<CR>"
" 指定显示字符
call denite#custom#option('default', 'prompt', 'λ')
" denite的起始位置
call denite#custom#option('default', 'direction',)

" coc seting 
" Show extension list
nnoremap <silent> <localLeader>ce  :<C-u>Denite coc-extension<cr>
" Show symbols of current buffer
nnoremap <silent> <localLeader>csb  :<C-u>Denite coc-symbols<cr>
" Search symbols of current workspace
nnoremap <silent> <localLeader>cw  :<C-u>Denite coc-workspace<cr>
" Show diagnostics of current workspace
nnoremap <silent> <localLeader>cd  :<C-u>Denite coc-diagnostic<cr>
" Show available commands
nnoremap <silent> <localLeader>cc  :<C-u>Denite coc-command<cr>
" Show available services
nnoremap <silent> <localLeader>cs  :<C-u>Denite coc-service<cr>
" Show links of current buffer
nnoremap <silent> <localLeader>cl  :<C-u>Denite coc-link<cr>
