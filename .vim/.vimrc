"
filetype plugin on 
syntax on
"
"
"For python
"
"sw spaces on ai, ts spaces on tab, (sta is for tags), fo the comment char in
"next line and no line break, number enables numbers
autocmd FileType python set ai sw=4 ts=4 sta et fo=croql number 
"
"
"
autocmd FileType python map  <F6> <Esc>:w<CR>:!python % <CR>
autocmd FileType python map  <F7> <Esc>ggO<Backspace><Backspace>from pudb import set_trace; set_trace()<Esc>:w<CR>:!python -m pudb.run %<CR>ggdd
"
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd FileType python map  <F4> <Esc>:make<Return>
nnoremap  <f9> :set nu!<cr> <cr> <f9>  
"
"
set softtabstop=4 " makes the spaces feel like real tabs
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict' 
"
