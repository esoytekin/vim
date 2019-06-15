let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\Dropbox\SyncApps\vim_configuration_files\vim\bundle
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 tagbar\README.md
badd +22 tagbar\autoload\tagbar.vim
badd +67 vim-sipindex\plugin\sipindex.vim
badd +1 vim-sipindex\syntax\sipindex.vim
badd +19 vim-sipindex\README.md
badd +9 vim-sipindex\README.md.html
badd +1 NERD_tree_2
badd +85 vim-sipindex\ftplugin\sipindex.vim
badd +1 vim-sipindex\ftdetect\sipindex.vim
badd +1 \Users\emrahs\_vimrc
badd +44 \Users\emrahs\Documents\GitHub\vim-sipindex\ftplugin\sipindex.vim
badd +2 \Users\emrahs\.gitconfig
badd +3 \Users\emrahs\Dropbox\SyncApps\vim_configuration_files\diary\2016\9\3.taskpaper
badd +7 vim-sipindex\autoload\sipindex.vim
silent! argdel *
edit ~\Dropbox\SyncApps\Projects\bundles
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 148 + 89) / 179)
argglobal
let s:l = 1 - ((0 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit vim-sipindex\autoload\sipindex.vim
let s:l = 8 - ((7 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 148 + 89) / 179)
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
