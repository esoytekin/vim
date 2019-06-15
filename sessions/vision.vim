let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\Dropbox\SyncApps\AutoHotKey
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 houghAssign.cpp
badd +33 \Volumes\MACHDD2\Development\Vision\workspace\hough\houghLine.cpp
badd +1 \Volumes\MACHDD2\Development\Vision\workspace\hough\CMakeLists.txt
badd +1 \Volumes\MACHDD2\Development\Vision\artificial\puzzle8\breadh-first\bfs.c
badd +11 \Volumes\MACHDD2\Development\Vision\artificial\puzzle8\breadth-first\bfs.c
badd +1 houghline.cpp
badd +6 CMakeLists.txt
badd +48 \Volumes\MACHDD2\Development\Vision\artificial\puzzle8\breadth-first\dfs.c
badd +1 \Volumes\MACHDD2\Development\Vision\artificial\puzzle8\breadth-first\mdfs.c
badd +1 \Volumes\MACHDD2\Development\Vision\workspace\CVTutorial\CVTutorial\Hough.h
badd +103 \Volumes\MACHDD2\Development\Vision\workspace\CVTutorial\CVTutorial\main.cpp
badd +114 \Volumes\MACHDD2\Development\Vision\workspace\CVTutorial\CVTutorial\Hough.cpp
badd +0 \Volumes\MACHDD2\Development\Vision\workspace\assingment1\houghline.cpp
silent! argdel *
edit ~\Dropbox\SyncApps\Projects\vision
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
let s:l = 72 - ((71 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
72
normal! 0
wincmd w
argglobal
edit \Volumes\MACHDD2\Development\Vision\workspace\assingment1\houghline.cpp
let s:l = 1 - ((0 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
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
