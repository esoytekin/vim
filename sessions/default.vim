let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Volumes/MACHDD2/Development/tutorials/rest/totp-nodejs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +64 app.js
badd +47 controller/totpController.js
badd +10 controller/userController.js
badd +33 dao/commons/daoCommon.js
badd +1 db/db.js
badd +7 server.js
badd +13 service/authService.js
badd +21 dao/appKeyDao.js
badd +30 dao/userDao.js
badd +1 model/appkey.js
badd +6 model/user.js
badd +1 NERD_tree_8
badd +31 app/components/core/keyresource/keyresource.js
badd +17 app/view2/view2.js
badd +5 app/components/resources/keys.json
badd +110 app/view1/view1.js
badd +1 app/components/core/keyresource/userresource.js
badd +50 app/view1/view1.html
badd +1 ~/.vimrc
badd +4 package.json
badd +20 app/login/login.js
badd +1 app/login/login.html
badd +10 app/components/core/keyresource/authenticationResource.js
badd +18 controller/loginController.js
argglobal
silent! argdel *
edit service/authService.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 38 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 171 + 105) / 210)
argglobal
enew
file NERD_tree_1
wincmd w
argglobal
let s:l = 13 - ((12 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 024|
lcd /Volumes/MACHDD2/Development/tutorials/rest/totp-nodejs
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 38 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 171 + 105) / 210)
tabnext 1
if exists('s:wipebuf') && s:wipebuf != bufnr('%')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
