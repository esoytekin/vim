let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /Users/Shared/workspace/uyapeditor_4.2.1/data
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
tabnew
tabrewind
edit /Users/Shared/Dropbox/SyncApps/Projects/uyap
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
exe 'vert 1resize ' . ((&columns * 30 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 206 + 118) / 237)
argglobal
let s:l = 19 - ((18 * winheight(0) + 36) / 72)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
argglobal
if bufexists("baslik/word/document.xml") | buffer baslik/word/document.xml | else | edit baslik/word/document.xml | endif
let s:l = 25 - ((15 * winheight(0) + 36) / 72)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 017|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 206 + 118) / 237)
tabnext
edit /usr/local/Cellar/macvim/8.1-156/MacVim.app/Contents/Resources/vim/runtime/doc/windows.txt
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:l = 905 - ((55 * winheight(0) + 36) / 72)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
905
normal! 071|
tabnext 1
badd +0 /usr/local/Cellar/macvim/8.1-156/MacVim.app/Contents/Resources/vim/runtime/doc/windows.txt
badd +1103 complete_document/word/styles.xml
badd +8 /Users/Shared/workspace/_go/src/scratch/uyap/content.xml
badd +7 complete_document/word/document.xml
badd +62 complete_document/docProps/app.xml
badd +20 complete_document/docProps/core.xml
badd +8 complete_document/docProps/custom.xml
badd +4 complete_document/\[Content_Types].xml
badd +33 complete_document/word/fontTable.xml
badd +37 complete_document/word/glossary/fontTable.xml
badd +44 complete_document/word/theme/theme1.xml
badd +2 complete_document/word/glossary/document.xml
badd +430 complete_document/word/glossary/styles.xml
badd +1 complete_document/word/webSettings.xml
badd +466 ~/.vimrc
badd +10 /Users/Shared/workspace/IdeaProjects/Onboarding-Server-EmrahSoytekin/src/main/java/com/commencis/adapter/FirstFactorLoginAdapter.java
badd +12 /Users/Shared/Dropbox/Public/CoverLetter/word/document.xml
badd +0 baslik/word/document.xml
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
