" ~/Dropbox/SyncApps/vim_configuration_files/vim/sessions/restart.vim:
" Vim session script.
" Created by session.vim 2.4.9 on 07 Nisan 2019 at 00:07:33.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egrb
silent! set guifont=Anonymice\ Powerline\ Italic
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 0 | filetype indent off | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'wombat256modNonItalic' | colorscheme wombat256modNonItalic | endif
call setqflist([{'lnum': 3, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': 'src/main/java/com/emrah/hacker/BetweenTwoSets.java', 'text': 'class BetweenTwoSets {'}, {'lnum': 3, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': 'src/main/java/com/emrah/hacker/Birthday.java', 'text': 'public class Birthday {'}, {'lnum': 2, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': 'src/main/java/com/emrah/hacker/Kangroo.java', 'text': 'class Kangroo {'}, {'lnum': 6, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': 'src/main/java/com/emrah/hacker/Solution.java', 'text': 'public class Solution {'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/workspace/kangroo-project
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
" argglobal
%argdel
edit src/main/java/com/emrah/hacker/Solution.java
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
" argglobal
let s:l = 4 - ((3 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/Documents/workspace/kangroo-project
tabnext 1
badd +4 ~/Documents/workspace/kangroo-project/src/main/java/com/emrah/hacker/Solution.java
badd +1 ~/Documents/workspace/kangroo-project/src/test/java/com/emrah/hacker/BetweenTwoSetsTest.java
badd +1 ~/Documents/workspace/kangroo-project/src/test/java/com/emrah/hacker/DayOfProgrammerTest.java
badd +1 ~/.vimrc
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/bundle/neosnippet-snippets/neosnippets/java.snip
badd +1 ~/Documents/workspace/kangroo-project/__VCALC__
badd +1 ~/Documents/workspace/kangroo-project/src/test/java/com/emrah/hacker/DivisibileSumPairsTest.java
badd +1 ~/Documents/workspace/kangroo-project/src/test/java/com/emrah/hacker/MigrationBirdsTest.java
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/bundle/snipMate/snippets/java.snippets
badd +1 ~/Documents/workspace/kangroo-project/pom.xml
badd +1 ~/Dropbox/SyncApps/vim_configuration_files/vim/plugin/setup/ctrlp.vim
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

tabnext 1
1wincmd w
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
