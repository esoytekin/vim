let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd D:\Development\GitRepos\spidr_core\wae
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +54 \Users\emrahs\_vimrc
badd +78 base\modules\common\apis\wae-api\src\main\java\com\genband\wae\types\InfrastructureServiceConstants.java
badd +1429 base\modules\mobicents\sip-servlets-impl\src\main\java\org\mobicents\servlet\sip\message\SipServletRequestImpl.java
badd +2107 callsvr\modules\services\wae-base-sipt-app-ejb\src\main\java\com\genband\wae\base\sipt\BaseSessionBean.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\AutoHotkey.ahk
badd +717 media\modules\services\wae-transcoder-app-ejb\src\main\java\com\genband\wae\apps\transcoder\service\TranscoderService.java
badd +1 __MRU_Files__
badd +43 \Users\emrahs\vimfiles\bundle\vim-codeoverview\plugin\CodeOverview.vim
badd +1747 callsvr\modules\webapps\wae-base-sipt-war\src\main\java\com\genband\wae\base\sipt\BaseSipTServlet.java
badd +223 media\modules\services\wae-transcoder-app-aop\src\main\java\com\genband\wae\media\transcoder\service\TranscoderServiceAspect.java
badd +17 apps\assemblies\wae-clicktocall-adm\src\main\conf\mysql\populate.sql
badd +39 Z:\scripts\prack.sh
badd +5 \Users\emrahs\vimfiles\plugin\setup\ctrlp.vim
badd +388 \\emre-og\Training\SPiDR_Links.txt
badd +1 \Users\emrahs\AppData\Local\Temp\7zE40AA.tmp\MANIFEST.MF
badd +1 \Users\emrahs\AppData\Local\Temp\7zE78CB.tmp\MANIFEST.MF
badd +1 \Users\emrahs\Applications\development\dt\MANIFEST.MF
badd +0 \Users\emrahs\AppData\Local\Temp\7zEFC8C.tmp\MANIFEST.MF
silent! argdel *
edit callsvr\modules\webapps\wae-base-sipt-war\src\main\java\com\genband\wae\base\sipt\BaseSipTServlet.java
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 1734 - ((16 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1734
normal! 0
lcd D:\Development\GitRepos\spidr_core\wae
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
