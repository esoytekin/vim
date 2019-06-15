let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\workspaces\general\TaskPaper
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +54 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\pom.xml
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\cookie.js
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\index.html
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\login.html
badd +23 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\login.js
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\task.js
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\META-INF\MANIFEST.MF
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\WEB-INF\mvc-dispatcher-servlet.xml
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\WebContent\WEB-INF\web.xml
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\resources\log4j.properties
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\resources\security-context.xml
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\rebel.xml
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\LoginRest.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\TodoRest.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\CategoryDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\SubTaskDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\TaskDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\UserDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\UserRoleDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\impl\CategoryHibernateDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\impl\SubTaskHibernateDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\impl\TaskHibernateDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\impl\UserHibernateDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\dao\impl\UserRoleHibernateDAO.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\entity\Category.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\entity\SubTask.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\entity\Task.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\entity\User.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\entity\UserRole.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\pojo\Category.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\pojo\Role.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\pojo\SignElement.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\pojo\Task.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\pojo\TaskEnum.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\security\RestAuthenticationEntryPoint.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\service\TaskpaperServices.java
badd +1 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\src\com\bau\rest\service\impl\TaskpaperServicesImpl.java
badd +1 \Users\emrahs\Dropbox\SyncApps\vim_configuration_files\vim\bundle\XML-Folding\plugin\XMLFolding.vim
badd +0 \Users\emrahs\Dropbox\SyncApps\AutoHotKey\NERD_tree_1
badd +1 \Users\emrahsoytekin\Documents\workspace\REST\TaskPaper\pom.xml
badd +1 \Users\emrahsoytekin\workspaces\General\TaskPaper\pom.xml
badd +154 pom.xml
badd +1 WebContent\cookie.js
badd +12 WebContent\index.html
badd +1 WebContent\login.html
badd +1 WebContent\login.js
badd +1 WebContent\task.js
badd +1 WebContent\META-INF\MANIFEST.MF
badd +27 WebContent\WEB-INF\mvc-dispatcher-servlet.xml
badd +1 WebContent\WEB-INF\web.xml
badd +1 resources\log4j.properties
badd +1 resources\security-context.xml
badd +1 src\rebel.xml
badd +1 src\com\bau\rest\LoginRest.java
badd +1 src\com\bau\rest\TodoRest.java
badd +1 src\com\bau\rest\dao\CategoryDAO.java
badd +1 src\com\bau\rest\dao\SubTaskDAO.java
badd +1 src\com\bau\rest\dao\TaskDAO.java
badd +1 src\com\bau\rest\dao\UserDAO.java
badd +1 src\com\bau\rest\dao\UserRoleDAO.java
badd +1 src\com\bau\rest\dao\impl\CategoryHibernateDAO.java
badd +1 src\com\bau\rest\dao\impl\SubTaskHibernateDAO.java
badd +1 src\com\bau\rest\dao\impl\TaskHibernateDAO.java
badd +1 src\com\bau\rest\dao\impl\UserHibernateDAO.java
badd +1 src\com\bau\rest\dao\impl\UserRoleHibernateDAO.java
badd +1 src\com\bau\rest\entity\Category.java
badd +1 src\com\bau\rest\entity\SubTask.java
badd +1 src\com\bau\rest\entity\Task.java
badd +1 src\com\bau\rest\entity\User.java
badd +1 src\com\bau\rest\entity\UserRole.java
badd +1 src\com\bau\rest\pojo\Category.java
badd +1 src\com\bau\rest\pojo\Role.java
badd +1 src\com\bau\rest\pojo\SignElement.java
badd +1 src\com\bau\rest\pojo\Task.java
badd +1 src\com\bau\rest\pojo\TaskEnum.java
badd +1 src\com\bau\rest\security\RestAuthenticationEntryPoint.java
badd +1 src\com\bau\rest\service\TaskpaperServices.java
badd +1 src\com\bau\rest\service\impl\TaskpaperServicesImpl.java
badd +1 src\main\java\rebel.xml
badd +51 src\main\java\com\bau\rest\LoginRest.java
silent! argdel *
edit \Users\emrahs\Dropbox\SyncApps\Projects\TaskPaperRest
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
let s:l = 25 - ((24 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 0
wincmd w
argglobal
edit WebContent\index.html
let s:l = 36 - ((0 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 014|
lcd ~\workspaces\general\TaskPaper
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
