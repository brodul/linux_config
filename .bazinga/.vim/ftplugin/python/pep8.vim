"
" Python filetype plugin for running pep8
" Language:     Python (ft=python)
" Maintainer:   Vincent Driessen <vincent@datafox.nl>
" Version:      Vim 7 (may work with lower Vim versions, but not tested)
" URL:          http://github.com/nvie/vim-pep8
"
" Only do this when not done yet for this buffer
if exists("b:loaded_pep8_ftplugin")
    finish
endif
let b:loaded_pep8_ftplugin = 1

let s:pep8_cmd="pep8"

if !exists("*Pep8()")
    function Pep8()
        if !executable(s:pep8_cmd)
            echoerr "File " . s:pep8_cmd . " not found. Please install it first."
            return
        endif

        set lazyredraw   " delay redrawing
        cclose           " close any existing cwindows

        " store old grep settings (to restore later)
        let l:old_gfm=&grepformat
        let l:old_gp=&grepprg

        " write any changes before continuing
        if &readonly == 0
            update
        endif

    " perform the grep itself
    let &grepformat="%f:%l:%c: %m"
    let &grepprg=s:pep8_cmd . " --repeat"
    silent! grep! %

        " restore grep settings
        let &grepformat=l:old_gfm
        let &grepprg=l:old_gp

        " open cwindow
        let has_results=getqflist() != []
        if has_results
            execute 'belowright copen'
            nnoremap <buffer> <silent> c :cclose<CR>
            nnoremap <buffer> <silent> q :cclose<CR>
        endif

        set nolazyredraw
        redraw!
	
        if has_results == 0
            " Show OK status
            hi Green ctermfg=green
            echohl Green
            echon "PEP8 safe"
            echohl
        endif
    endfunction
endif

