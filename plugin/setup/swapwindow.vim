" for swapping splited files location"{{{
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction"}}}

" Mark Window : '\mw'
nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
" Put Window : '\pw'
nmap <silent> <leader>pw :call DoWindowSwap()<CR>


" for switching between 2 splitted files"{{{
function! WindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    if curNum == 1
       let markedWinNum = 2
    endif

    if curNum==2
       let markedWinNum=1
    endif
    
    exe markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction"}}}

" Swap Windows : '\sw'
nmap <silent> <leader>sw :call WindowSwap()<CR>
