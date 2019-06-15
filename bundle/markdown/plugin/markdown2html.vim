if !has('python')
	finish
endif
 
function! Markdown2HTML()
        pyfile ~/markdown2html.py
endfunc
 
function! s:pyt() abort
    let paths = substitute(escape(&runtimepath, ' '), '\(,\|$\)', '/**\1', 'g')
    let s:markdown2html = fnamemodify(findfile('markdown2html.py', paths), ':p')

    if !filereadable(s:markdown2html)
        echohl WarningMsg
        echom 'Warning: could not find markdown2html.py on your path or in your vim runtime path.'
        echohl None
        unlet s:markdown2html
        return
    endif
    "python s:sipindex
    exec 'pyfile '.s:markdown2html
    "python expand(s:sipindex)
    "exec '.!python '.s:sipindex
endfunc
 
command! MKD2HTML call s:pyt()
