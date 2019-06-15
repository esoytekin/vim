let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd D:\Development\GitRepos\spidr_core\wae\test-tools\mtaf\test
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 abe-10349\TC_basicCall.xml
badd +38 \Development\GitRepos\spidr_core\wae\test-tools\mtaf\lab-config.groovy
badd +1 abe-10349\test_suite.xml
badd +39 \Users\emrahs\Google\ Drive\calismalar\BAU\ Notlar\master\ thesis\suggestions.txt
badd +3 \Users\emrahs\Google\ Drive\calismalar\BAU\ Notlar\master\ thesis\notlar.txt
badd +10 \Users\emrahs\Dropbox\Public\eksiokutman.user.js
badd +7 \Development\GitRepos\spidr_core\wae\test-tools\mtaf\runme.bat
badd +1 \Users\emrahs\Desktop\callflow.uml
badd +1 Basic_Call\scenario\restOrig.xml
badd +1 Basic_Call\scenario\restOrig_WebSocket.xml
badd +1 Basic_Call\TC_basicCallGenericSip.xml
badd +25 Basic_Call\test_suite.xml
badd +7 Basic_Call\tc\TC_basicCallA2.xml
badd +56 Basic_Call\scenario\rest\restOrig_WebSocket.xml
badd +13 Subscribe\rest_Subscribe.xml
badd +7 \Users\emrahs\vimfiles\bundle\vim-sipindex\autoload\sipindex.vim
badd +1 abe-10349\TC_basicCall2.xml
badd +85 \Users\emrahs\_vimrc
badd +1 abe-10349\scenario\basicCall\basicCallB.xml
badd +1 [BreakPts]
badd +33 abe-10349\scenario\basicCall\basicCallA.xml
badd +272 \Users\emrahs\vimfiles\bundle\project-1.4.1\doc\project.txt
badd +13 abe-10349\TC_callCancel.xml
badd +2 abe-10349\scenario\callcancel\userA.xml
badd +10 DataChannel\TC\TC_Reject_Datachannel.xml
badd +80 DataChannel\scenario\Reject\DataChannelStart.xml
badd +19 DataChannel\scenario\Reject\DataChannelReject.xml
badd +23 DataChannel\test_suite.xml
badd +17 DataChannel\TC\TC_Start_DataChannel.xml
badd +1 NERD_tree_1
badd +1 NERD_tree_2
badd +20 Authorization\test_suite.xml
badd +27 Authorization\tc\TC_Send_IM_Wrong_User.xml
badd +21 Authorization\scenario\a2_create_infrastructure.xml
badd +13 Wsman\GenericSip\modifyGenericSipExtProvRegEvent.xml
badd +1 Wsman\GenericSip\createGenericSipExtProv_No_Domain.xml
badd +31 Wsman\GenericSip\deleteGenericSipExtProv.xml
badd +12 Registration\scenario\RegEventTrue\SipDialogRefreshRemoval_2xx_Login\restUac1_SipDialogRefreshRemoval_2xx_Login.xml
badd +46 Registration\TC\SipDialogRefreshRemoval\RegEventTrue\Generic_Sip\TC_2xx_Login.xml
silent! argdel *
edit \Users\emrahs\Dropbox\SyncApps\Projects\minitaf
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 30 + 89) / 179)
exe '2resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 148 + 89) / 179)
argglobal
let s:l = 1647 - ((51 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1647
normal! 0
wincmd w
argglobal
edit Wsman\GenericSip\deleteGenericSipExtProv.xml
let s:l = 23 - ((22 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 039|
wincmd w
exe '1resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 30 + 89) / 179)
exe '2resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 148 + 89) / 179)
tabnew
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
tabedit \Development\GitRepos\spidr_core\wae\test-tools\mtaf\lab-config.groovy
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 1 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 014|
tabnew
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
enew
wincmd w
argglobal
enew
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabnew
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
tabnext 5
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
