let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc2
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 \Development\GitRepos\fcs-ultimate\fcs-selenium-test\index.html
badd +141 \Development\GitRepos\fcs-ultimate\fcs-selenium-test\resources\js\master.js
badd +1 \Development\GitRepos\fcs-ultimate\fcs-selenium-test\.git\index
badd +28 \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\transLogs\messages_pcc_single.log
badd +0 \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\transLogs\messsages.log
badd +0 \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\transLogs\plog.log
badd +0 \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\plog.log
badd +503 plog_pcc_multi.log
badd +5143 messages_pcc_multi.log
badd +1 transcoder\plog_pcc_multi.log
badd +0 transcoder\messages_pcc_multi.log
badd +12 ..\jitsi\plog.log
badd +1 D:\Development\GitRepos\spidr_core\wae\base\modules\common\apis\wae-api\src\main\java\com\genband\wae\types\InfrastructureServiceConstants.java
silent! argdel *
edit \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\transLogs\messages_pcc_single.log
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 92 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 64 + 78) / 157)
argglobal
let s:l = 4811 - ((106 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4811
normal! 038|
wincmd w
argglobal
edit \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\transLogs\messsages.log
let s:l = 4777 - ((106 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4777
normal! 050|
wincmd w
exe 'vert 1resize ' . ((&columns * 92 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 64 + 78) / 157)
tabedit transcoder\messages_pcc_multi.log
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 5076 - ((40 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5076
normal! 055|
tabedit \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\transLogs\plog.log
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 658 - ((27 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
658
normal! 0
tabedit \Users\emrahs\Desktop\abe-11383\14.04.2016_16.15_fullLogs\pcc\plog.log
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 458 - ((25 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
458
normal! 022|
tabedit transcoder\plog_pcc_multi.log
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 83 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 73 + 78) / 157)
argglobal
let s:l = 136 - ((54 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
136
normal! 0
wincmd w
argglobal
edit ..\jitsi\plog.log
let s:l = 397 - ((3 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
397
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 83 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 73 + 78) / 157)
tabnew
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 83 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 73 + 78) / 157)
argglobal
enew
wincmd w
argglobal
enew
wincmd w
exe 'vert 1resize ' . ((&columns * 83 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 73 + 78) / 157)
tabedit transcoder\messages_pcc_multi.log
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 5069 - ((6 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5069
normal! 050|
tabnext 7
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
