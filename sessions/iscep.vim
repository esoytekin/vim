let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/workspace/pozitron/config/MobilSubeSmart
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabrewind
edit /Users/Shared/Dropbox/SyncApps/Projects/iscep
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
exe 'vert 1resize ' . ((&columns * 61 + 211) / 423)
exe 'vert 2resize ' . ((&columns * 361 + 211) / 423)
argglobal
let s:l = 16 - ((15 * winheight(0) + 60) / 121)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
wincmd w
argglobal
if bufexists("mobilsubesmart.properties") | buffer mobilsubesmart.properties | else | edit mobilsubesmart.properties | endif
let s:l = 114 - ((68 * winheight(0) + 60) / 121)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
114
normal! 037|
lcd ~/workspace/pozitron/config/MobilSubeSmart
wincmd w
exe 'vert 1resize ' . ((&columns * 61 + 211) / 423)
exe 'vert 2resize ' . ((&columns * 361 + 211) / 423)
tabnext
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
lcd ~/workspace/pozitron/config/MobilSubeSmart
tabnext
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
exe 'vert 1resize ' . ((&columns * 211 + 211) / 423)
exe 'vert 2resize ' . ((&columns * 211 + 211) / 423)
argglobal
enew
lcd ~/workspace/pozitron/config/MobilSubeSmart
wincmd w
argglobal
enew
lcd ~/workspace/pozitron/config/MobilSubeSmart
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 211 + 211) / 423)
exe 'vert 2resize ' . ((&columns * 211 + 211) / 423)
tabnext
edit ~/workspace/pozitron/backend-logs/tomcat/api.log
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:l = 12 - ((0 * winheight(0) + 60) / 121)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
tabnext
edit ~/workspace/pozitron/backend-logs/tomcat/mobilsubesmart.log
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:l = 594 - ((21 * winheight(0) + 60) / 121)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
594
normal! 014|
tabnext
edit ~/.vimrc
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:l = 737 - ((119 * winheight(0) + 60) / 121)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
737
normal! 023|
lcd ~/workspace/pozitron/backend-logs/tomcat
tabnext
edit /private/etc/hosts
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:l = 10 - ((9 * winheight(0) + 60) / 121)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
tabnext 3
badd +76 ~/workspace/pozitron/config/MobilSubeSmart/mobilsubesmart.properties
badd +13 /private/etc/hosts
badd +2 ~/workspace/pozitron/loadcerts.sh
badd +54 ~/workspace/pozitron/backend-logs/tomcat/api.log
badd +10478 ~/workspace/pozitron/backend-logs/tomcat/mobilsubesmart.log
badd +206 ~/workspace/pozitron/backend-logs/tomcat/session.log
badd +1 ~/workspace/pozitron/backend-logs/tomcat/clienttime.log
badd +0 ~/.vimrc
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
