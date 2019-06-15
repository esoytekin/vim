func! OpenFileInBrowser()
    let fn = expand("%:p")
    execute "OpenBrowser file:///".fn
endfunc
" Yank file name to register
nmap <silent>Y :let @+=expand("%:p")<CR>:echo "File name yanked"<CR>
nmap <silent>YY :call OpenFileInBrowser()<CR>
