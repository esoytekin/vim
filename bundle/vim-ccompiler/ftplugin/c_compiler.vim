if exists("g:loaded_ccompiler_plugin")
    finish
endif

let g:loaded_ccompiler_plugin = 1

"autocmd Filetype c let &l:makeprg=g:plantuml_executable_script . " " .  fnameescape(expand("%"))
"nnoremap <F9> :w<CR> :silent make<CR>

"command! CompC :!clear;gcc -c % -o %.o && gcc %.o -o %.p && ./%.p && find ! -name 'dht11.c' -type f -exec rm -f {} +<CR>
"find -regextype sed -regex '.*.[op]' -type f -exec rm -f {} +
"gcc -Wall -o blink blink.c -lwiringPi
"gpio readall
command! CompC       : !clear;gcc -c % -o %.o && gcc %.o -o %.p && %.p
command! CompCWiring : !clear;gcc -Wall -o %.p % -lwiringPi && ./%.p
command! DelC        : !find %:p:h -regex '.*\.[op]' -type f -exec rm -f {} +

nmap <buffer> <silent> <F9> :CompC<CR>:DelC<CR>
