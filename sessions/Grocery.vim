let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/SyncApps/vim_configuration_files/vim/bundle/vim-misc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/bundle/vim-easytags/misc/easytags/why-so-slow.py
badd +2 ~/Dropbox/SyncApps/vim_configuration_files/vim/bundle/vim-easytags/autoload/xolox/easytags/filetypes.vim
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/bundle/vim-easytags/autoload/xolox/easytags/update.vim
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/bundle/vim-easytags/autoload/xolox/easytags/utils.vim
badd +1 autoload/xolox/misc/async.vim
badd +1 autoload/xolox/misc/buffer.vim
badd +1 autoload/xolox/misc/msg.vim
badd +1 autoload/xolox/misc/complete.vim
badd +1 autoload/xolox/misc/cursorhold.vim
badd +1 autoload/xolox/misc/escape.vim
badd +1 autoload/xolox/misc/format.vim
badd +1 autoload/xolox/misc/list.vim
badd +1 autoload/xolox/misc/open.vim
badd +1 autoload/xolox/misc/option.vim
badd +1 autoload/xolox/misc/os.vim
badd +1 autoload/xolox/misc/path.vim
badd +1 autoload/xolox/misc/perm.vim
badd +1 autoload/xolox/misc/persist.vim
badd +1 autoload/xolox/misc/str.vim
badd +1 autoload/xolox/misc/test.vim
badd +1 autoload/xolox/misc/tests.vim
badd +1 autoload/xolox/misc/timer.vim
badd +1 autoload/xolox/misc/version.vim
badd +1 autoload/xolox/misc.vim
badd +1 plugin/xolox/misc.vim
badd +1 addon-info.json
badd +10 INSTALL.md
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/sessions/VIA9F2.tmp
badd +26 app/app.component.ts
badd +1 app/app.css
badd +3 app/platform.ios.css
badd +18 app/pages/login/login-common.css
badd +1 platforms/ios/Groceries/app/pages/login/login.css
badd +1 app/pages/login/login.ios.css
badd +15 app/app.module.ts
badd +1 app/pages/login/login.android.css
badd +4 app/pages/login/login.html
badd +5 app/main.ts
badd +1 app/pages/list/list-common.css
badd +1 app/pages/list/list.ios.css
badd +1 ~/.vimrc
badd +1 Result
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/plugin/setup/dbext.vim
badd +2 app/shared/user/user.ts
badd +1 app/app.component.js
badd +1 /Volumes/MACHDD2/Development/tutorials/NativeScript/Groceries/app/app.component.ts
argglobal
silent! argdel *
edit ~/.vimprojects
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 206 + 118) / 237)
argglobal
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('/Volumes/MACHDD2/Development/tutorials/NativeScript/Groceries/app/app.component.ts') | buffer /Volumes/MACHDD2/Development/tutorials/NativeScript/Groceries/app/app.component.ts | else | edit /Volumes/MACHDD2/Development/tutorials/NativeScript/Groceries/app/app.component.ts | endif
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 206 + 118) / 237)
tabnext 1
if exists('s:wipebuf')
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
