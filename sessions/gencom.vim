let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd D:\Development\GitRepos\fcs-jsl
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +466 \Users\emrahs\Dropbox\SyncApps\vim_configuration_files\vimrc
badd +156 \Users\emrahs\_vimrc
badd +1 \Users\emrahs\vimfiles\plugin\setup\yankfile.vim
badd +39 fcs-api\src\main\js\core.js
badd +7 \Users\emrahs\vimfiles\plugin\setup\ctrlp.vim
badd +115 fcs-api-tests\src\main\js\notificationTest.js
badd +50 fcs-api-tests\src\main\js\coreTest.js
badd +65 fcs-api-tests\src\main\js\facadeLoginTest.js
badd +275 fcs-api-tests\src\main\js\notificationManagerTest.js
badd +23 fcs-api\src\main\js\notification\notification.js
badd +678 fcs-api\src\main\js\notification\notificationManager.js
badd +42 fcs-api-tests\src\main\js\jqrestfullManagerTest.js
badd +138 fcs-api\src\main\js\globalBroadcaster.js
badd +23 fcs-api\src\main\js\jqrestfullManager.js
badd +125 fcs-api-tests\src\main\js\callManagerTest.js
badd +37 fcs-api-tests\src\main\js\wamnotificationTest.js
badd +0 pom.xml
silent! argdel *
edit \Users\emrahs\Dropbox\SyncApps\Projects\gencom
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 126 + 78) / 157)
argglobal
let s:l = 969 - ((968 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
969
normal! 0
lcd D:\Development\GitRepos\fcs-jsl
wincmd w
argglobal
edit D:\Development\GitRepos\fcs-jsl\pom.xml
let s:l = 85 - ((57 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
85
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 78) / 157)
exe 'vert 2resize ' . ((&columns * 126 + 78) / 157)
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
