"nnoremap <C-W>O :call MaximizeToggle()<CR>
"nnoremap <C-W>o :call MaximizeToggle()<CR>
"nnoremap <C-W><C-O> :call MaximizeToggle()<CR>
"
"no code is needed
" :tab sp "opens buffer in a new tab
" C_w c " closes tab
"
"nnoremap zm :call MaximizeToggleNew()<CR>
silent nnoremap <silent>zm :call ZoomToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

function! MaximizeToggleNew()
    let wins = winnr('$')

    if wins==1
      execute "tabc"
    else
        let l:currentPos = getpos(".")
        execute "tab sp"
        call setpos(".", l:currentPos)
    endif


endfunction


function! ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction

