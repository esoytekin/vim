let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Volumes/MACHDD2/Development/tutorials/angular/todo-mvc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +20 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/index.html
badd +9 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/app.js
badd +19 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/view1/view1.js
badd +19 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/view1/view1.html
badd +19 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/view2/view2.js
badd +4 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/view2/view2.html
badd +57 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/components/util/totp.js
badd +106 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/components/util/totp-tin.js
badd +3 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/components/resources/keys.json
badd +3 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/components/core/keyresource/keyresource.js
badd +2 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/app/components/core/core.js
badd +14 /Volumes/MACHDD2/Development/tutorials/angular/angular-totp/bower.json
badd +1 server.js
argglobal
silent! argdel *
edit ~/.vimprojects
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 29 + 105) / 210)
exe 'vert 3resize ' . ((&columns * 149 + 105) / 210)
argglobal
let s:l = 1 - ((0 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
enew
file NERD_tree_1
wincmd w
argglobal
edit server.js
let s:l = 1 - ((0 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 29 + 105) / 210)
exe 'vert 3resize ' . ((&columns * 149 + 105) / 210)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
