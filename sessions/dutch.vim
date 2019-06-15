let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Google\ Drive/calismalar/Dutch\ Notlari
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit ~/Dropbox/SyncApps/Projects/dutch
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 179 + 105) / 210)
argglobal
let s:l = 2 - ((1 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/Google\ Drive/calismalar/Dutch\ Notlari
wincmd w
argglobal
if bufexists("~/Google\ Drive/calismalar/Dutch\ Notlari/hoofdstuk\ 8/hoofdstuk\ 8.md") | buffer ~/Google\ Drive/calismalar/Dutch\ Notlari/hoofdstuk\ 8/hoofdstuk\ 8.md | else | edit ~/Google\ Drive/calismalar/Dutch\ Notlari/hoofdstuk\ 8/hoofdstuk\ 8.md | endif
let s:l = 18 - ((17 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 01|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 179 + 105) / 210)
tabnext 1
badd +1 ~/Google\ Drive/calismalar/Dutch\ Notlari/readme.md
badd +1 ~/Google\ Drive/calismalar/Dutch\ Notlari/hoofdstuk\ 8/hoofdstuk\ 8.md
badd +0 ~/Google\ Drive/calismalar/Dutch\ Notlari
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
