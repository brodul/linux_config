"
set nohlsearch
filetype plugin on 
syntax on
"
"
"For python
"
"sw spaces on ai, ts spaces on tab, (sta is for tags), fo the comment char in
"next line and no line break, number enables numbers
"autocmd FileType python
set ai sw=4 ts=4 sta et fo=croql number 
autocmd FileType javascript set ai sw=2 ts=2 sta et fo=croql number 
autocmd FileType html set ai sw=2 ts=2 sta et fo=croql number 
"
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"
"
" Settings for tabs
autocmd FileType python map  <F2> <Esc>:tabp<Return>
autocmd FileType python map  <F3> <Esc>:tabn<Return>
autocmd FileType python map  <F4> <Esc>:tabnew<Return>
" General python settings
" Syntax check
autocmd FileType python map  <F5> <Esc>:make<Return>
" Pep8 check
autocmd FileType python map  <F6> <Esc>:%s/^\s*$// \| :call Pep8() <CR>
" Visual debuger TODO go to pdb
" autocmd FileType python map  <F7> <Esc>ggO<Backspace><Backspace>from pudb import set_trace; set_trace()<Esc>:w<CR>:!python -m pudb.run %<CR>ggdd
autocmd FileType python map  <F7> <Esc>:w <CR> :!python -m pdb %<Return>
" Start program
autocmd FileType python map  <F8> <Esc>:w <CR> : !python %<Return>
" Numbers on of
nnoremap  <f9> :set nu!<cr> <cr> <f9>  
" Nosetests
autocmd FileType python map  <F10> <Esc>:w <CR> : !nosetests --verbose --with-coverage <Return>
"
"
set softtabstop=4 " makes the spaces feel like real tabs
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict' 
"
"
autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
autocmd FileType python match OverLength /\%81v.*/

set mouse=a
set clipboard=unnamed " ,exclude:cons\|linux


autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
