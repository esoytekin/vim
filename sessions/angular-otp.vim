let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Volumes/MACHDD2/Development/tutorials/angular/angular-totp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +27 app/index.html
badd +9 app/app.js
badd +83 app/view1/view1.js
badd +26 app/view1/view1.html
badd +36 app/view2/view2.js
badd +11 app/view2/view2.html
badd +57 app/components/util/totp.js
badd +106 app/components/util/totp-tin.js
badd +3 app/components/resources/keys.json
badd +3 app/components/core/keyresource/keyresource.js
badd +2 app/components/core/core.js
badd +14 bower.json
badd +84 app/app.css
badd +1 app/main.js
argglobal
silent! argdel *
edit app/view1/view1.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 178 + 105) / 210)
argglobal
enew
file NERD_tree_1
lcd /Volumes/MACHDD2/Development/tutorials/angular/angular-totp
wincmd w
argglobal
let s:l = 26 - ((25 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0125|
lcd /Volumes/MACHDD2/Development/tutorials/angular/angular-totp
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 178 + 105) / 210)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
