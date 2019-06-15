let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Volumes/MACHDD2/Filmler/game\ of\ thrones/Game.of.Thrones.S05E07.HDTV.x264-ASAP\[ettv]
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 Game.of.Thrones.S05E07.The.Gift.720p.HDTV.x264-IMMERSE.srt
badd +1 ~/.viminfo
badd +1 ~/.vim/bundle/Personal/plugin/Subtitle.vim
badd +1 ~/.vim/bundle/Personal/plugin/filter.vim
argglobal
silent! argdel *
edit Game.of.Thrones.S05E07.The.Gift.720p.HDTV.x264-IMMERSE.srt
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit ~/.viminfo
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 36 - ((7 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 03|
tabedit ~/.vim/bundle/Personal/plugin/Subtitle.vim
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 26 + 28) / 56)
exe '2resize ' . ((&lines * 27 + 28) / 56)
argglobal
let s:l = 5 - ((4 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 011|
wincmd w
argglobal
edit ~/.vim/bundle/Personal/plugin/filter.vim
let s:l = 3 - ((2 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
exe '1resize ' . ((&lines * 26 + 28) / 56)
exe '2resize ' . ((&lines * 27 + 28) / 56)
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
