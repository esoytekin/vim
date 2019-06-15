
"" Necesary  for lots of cool vim things
set nocompatible



set hidden

"" Always show statusline
set laststatus=2

"" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"" windows specific options "{{{
if has("unix")
    if has('gui_running')
    "language tr_TR.ISO8859-9
    set rtp+=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/


    "" Always show statusline
    "set laststatus=2

    "" Use 256 colours (Use this setting only if your terminal supports 256 colours)
    set t_Co=256
    
    endif
    "" Always show statusline
    set laststatus=2
elseif has("win32")
    

    let s:ruby_path = 'C:\Ruby192\bin'
    " hide menubar,toolbar, bottom scrollbar
    " hide menubar in windows
    set rtp+=$HOME/vimfiles/bundle/enabler_vim
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    "set shell=powershell
    "set shellcmdflag=-command
endif "}}}


if has('gui_running')
    set guioptions -=m
    " hide toolbar in windows
    set guioptions -=T

    " show bottom scrollbar
    set guioptions +=b

endif
"Try adding `set go-=L` to your .gvimrc.  See `:h 'go` for more information.
set go-=L

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
let g:pathogen_disabled = []


" for some reason the csscolor plugin is very slow when run on the terminal
" but not in GVim, so disable it if no GUI is running
if !has('gui_running')
    call add(g:pathogen_disabled, 'csscolor')
endif

" Gundo requires at least vim 7.3
if v:version < '703' || !has('python')
    call add(g:pathogen_disabled, 'gundo')
endif
if v:version < '703' || !has('ruby')
    call add(g:pathogen_disabled, 'command-t')
    call add(g:pathogen_disabled, 'LustyExplorer')
endif

if v:version < '702'
    call add(g:pathogen_disabled, 'AutoComplPop')
    call add(g:pathogen_disabled, 'fuzzyfinder')
    call add(g:pathogen_disabled, 'l9')
endif

call add(g:pathogen_disabled, 'MatchTag')
call add(g:pathogen_disabled, 'vim-codeoverview')
call add(g:pathogen_disabled, 'XML-Folding')
call add(g:pathogen_disabled, 'eclim')
"call add(g:pathogen_disabled, 'javacomplete')
"call add(g:pathogen_disabled, 'command-t')
call add(g:pathogen_disabled, 'DrawIt')
" call add(g:pathogen_disabled, 'evervim')
call add(g:pathogen_disabled, 'sqlcomplete.vim')
"call add(g:pathogen_disabled, 'sqlutil')
call add(g:pathogen_disabled, 'taglist_46')
call add(g:pathogen_disabled, 'vcscommand')
call add(g:pathogen_disabled, 'vim-arduino-ino')
call add(g:pathogen_disabled, 'vtreeexplorer')
"call add(g:pathogen_disabled, 'vim-log4j')
call add(g:pathogen_disabled, 'vim-taskwarrior')
" call add(g:pathogen_disabled, 'ack')
"call add(g:pathogen_disabled, 'powerline')
"call add(g:pathogen_disabled, 'terminus')
call add(g:pathogen_disabled, 'vim-airline')
"call add(g:pathogen_disabled, 'LustyExplorer')
"call add(g:pathogen_disabled, 'ack.vim')
" call add(g:pathogen_disabled, 'vim-syntastic')
" call add(g:pathogen_disabled, 'vim-easytags')
"call add(g:pathogen_disabled, 'BreakPts')
call add(g:pathogen_disabled, 'vim-speeddating')
" call add(g:pathogen_disabled, 'neocomplcache.vim')

if has('unix') && !has('macunix')
 "call add(g:pathogen_disabled, 'neosnippet.vim')
 "call add(g:pathogen_disabled, 'neocomplcache.vim')
endif


" has a dependency on codeoverview
"call add(g:pathogen_disabled, 'Mark')

execute pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"let g:acp_enableAtStartup=1

" change the mapleader from \ to ,
let mapleader=","
"nnoremap ;; :!
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :tabe $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

if has('gui_running')
    set background=dark
    colorscheme wombat256modNonItalic
    " colorscheme solarized
endif

let g:solarized_termcolors = 256

set nobackup
set noswapfile

set ruler
"" au BufRead *.html set filetype=htmlm4
set hlsearch
set incsearch
set nu
"hi Normal ctermfg=black ctermbg=white
"hi CursorLine ctermfg=green ctermbg=black
""disables notepad like wordwrap
set nowrap
" This shows what you are typing as a command.  I love this!
set showcmd

" turns off search wrapping
"set nowrapscan

" make backspace work like most other apps
set backspace=2

" Folding Stuffs
set foldmethod=marker

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=4
set softtabstop=4

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
" if you set smartcase: '\The' matches only 'The' not 'the'
set smartcase

" This is totaly awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>
inoremap JJ <Esc>
"nmap ê <C-E>
"nmap ë <C-Y>
nmap <A-j> :m .+1<CR>==
nmap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.

nnoremap <silent><C-u> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><C-i> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-u> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-i> :set paste<CR>m`O<Esc>``:set nopaste<CR>


" auto complete with tab key
imap <C-Space> <c-x><c-o>

" nnoremap JJJJ <Nop>


" this is superb - remap shift enter to insert line below in insert mode
inoremap <S-Enter> <Esc>o
nmap <S-Enter> i<CR><Esc>
" and this is  - remap cmd-shift enter to insert line up
inoremap <D-S-Enter> <Esc>O


" deletes a line and not copies it
nnoremap <C-d> "_d


"ctrl c to copy line
nnoremap <C-c> "+y
vnoremap <C-c> "+y
"ctrl v to paste line
nnoremap <C-v> "+p
"ctrl a to select all
inoremap <C-a> <Esc>ggVGii

"ctrl-z to undo
inoremap <C-z> <Esc>ui
"ctrl-shift-z to redo
"inoremap <C-S-z> <Esc><C-r>i

" Clear last search Highlighting 
nnoremap <space> :noh<CR>



set wildignore+=**/target/**
set wildignore+=**/build/**
" filetype plugin indent on
" syntax on

"" highlight current line
set cul
" hi CursorLine term=none cterm=none ctermbg=7
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

if has("autocmd") "{{{
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType c set omnifunc=ccomplete#Complete
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    " bunu asla setleme. completefunc neovim setliyor. bunu kullanmak icin
    " <c-x><c-o> yapabilirsin
    "autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
    autocmd Filetype sql setlocal omnifunc=sqlcomplete#Complete 

" To use auto command to set the compiler any time a pom or java file is opened (assuming the pom ftdetect script is used):
    autocmd Filetype pom compiler mvn
    autocmd Filetype plantuml let &l:makeprg=g:plantuml_executable_script . " " .  fnameescape(expand("%"))
endif "}}}

set showtabline=2

if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[4 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

" php syntax error searcher
" map <C-B> :!php -l %<CR>




" When F5 is pressed, a numbered list of file names is printed, and the user needs to type a single number based on the 'menu' and press enter. 
" The 'menu' disappears after choosing the number so it appears only when you need it. 

nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <S-F5> : buffers<CR>:bd<Space>

" execute sql commands with ctrl enter
inoremap <c-Enter> <Esc>:DBExecSQLUnderCursor<CR>
nnoremap <c-Enter> :DBExecSQLUnderCursor<CR>

" Search for selected text, forwards or backwards."{{{
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy
  \/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
"}}}

func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
iabbr <silent> sout System.out.println();<Left><Left><c-r>=Eatchar('\s*')<cr>
iabbr <silent> hexh 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F<c-r>=Eatchar('\s*')<cr><Esc>

"VSTreeExplore settings
let treeExplVertical=1
let treeExplWinSize=35
let treeExplDirSort=1
let treeExplNoList=1

"if has("unix")
    ""nmap <F2> :VSTreeExplore<cr
    "nmap <silent> <leader>nf :VSTreeExplore<CR>
"elseif has("win32")
    "nmap <silent> <leader>nf :NERDTreeFind<CR>
"endif
 

nmap <silent> <leader>nf :NERDTree<CR>
nmap <silent> <leader>nff :NERDTreeFind<CR>
nmap <F2> :VSTreeExplore<CR>



" Easier split navigations"{{{
" We can use different key mappings for easy navigation between splits to save a keystroke. So instead of ctrl-w then j, it's just ctrl-j:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Open new split panes to right and bottom, which feels more natural than Vim's default: 
set splitbelow
set splitright
"}}}

"nmap <silent> <leader>ctags :!(cd %:p:h;ctags *)&
"nmap <silent> <leader>t :TlistToggle<CR>
nmap <silent> <leader>t :TagbarToggle<CR>


"Project plugin settings
let g:proj_window_width=30
nmap <silent> <Leader>p <Plug>ToggleProject



"===========================================================================
"compile ederken dizine gitmene gerek yok
"ancak bin dizinini bulup dosyalari uygun package degerlerine gore
"yerlestirmesi icin
"cwd parametresinin root dizinine ayarlanmis olmasi gerekli
"nnoremap <silent> <leader>xj :!javac -d bin %<CR>
"nnoremap <silent> <leader>xr :!java -cp ./bin %<CR>
nnoremap <silent> <leader>xj :!javac -d bin %:p:h/*.java<CR>
nnoremap <silent> <leader>xr :call RunJava()<CR>
noremap <silent>imp :call JavaInsertImport()<CR>


"DiffFtp : vertically shows differens of viewing file"{{{
func! DiffFtp()
    let directory = expand('%:p')
    let directories = split(directory,"/")

    let changed = ""
    for dir in range(0,len(directories)-1)
        let word = directories[dir]
        if(word=="truthordare")
            let changed = dir
        endif

    endfor

    let result = "" 
    for wIndex in range(changed+1,len(directories)-1)
        let word = directories[wIndex]
        let result .= word."/" 
    endfor
    let result = strpart(result,0,strlen(result)-1)

    let command = "vert diffsplit ftp://sisecevi@ftp.sisecevir.net/public_html/".result
    execute command
endfunc

command! DiffFtp :call DiffFtp()<CR>"}}}


nmap ,rr :call ReloadSnippets()<CR>


"quick fix settings
nmap <silent> <leader>cco :copen<CR>
nmap <silent> <leader>ccn :cn<CR>
nmap <silent> <leader>ccp :cp<CR>
nmap <silent> <leader>ccc :ccl<CR>

" sessions
 :let g:session_autoload = 'no'
 :let g:session_autosave = 'no'



if has("win32")
    " temporarily disable evervim plugins
    "set runtimepath-=~\vimfiles\bundle\evervim
endif
"let g:evervim_devtoken='S=s192:U=15bbd5e:E=1500923de21:C=148b172b208:P=1cd:A=en-devtoken:V=2:H=58716fac85a81c59d936d30563ef5884'
"let g:evervim_devtoken="S=s192:U=15bbd5e:E=15e385d823e:C=156e0ac52c8:P=1cd:A=en-devtoken:V=2:H=6e1034d58aba320926c1732cd5942f97"
let g:evervim_devtoken="S=s192:U=15bbd5e:E=16a11d8b0f1:C=162ba278170:P=1cd:A=en-devtoken:V=2:H=730c03d69318214287be6857afe029c9"

"Open browser settings
nmap <silent> <leader>open <Plug>(openbrowser-open)
vmap <silent> <leader>open <Plug>(openbrowser-open)
nmap <silent> <leader>src <Plug>(openbrowser-search)
vmap <silent> <leader>src <Plug>(openbrowser-search)

function! MoshBookmark()
  redir >> ~/.vims
  echo
  echo strftime("%Y-%b-%d %a %H:%M")
  echo "cd ". $PWD
  echo "vim ". expand("%:p").':'.line('.')
  echo ' word='.expand("<cword>")
  echo ' cline='.getline('.')
  redir END
endfunction
:command! MoshBookmark :call MoshBookmark()
function! MoshBookmark2()
  redir >> ~/.zims
  echo
  echo expand("%:p")
  redir END
endfunction
:command! ZoshBookmark :call MoshBookmark2()
"nmap <silent> <leader>gb :e ~\.zims<CR>

 
 " formant json
 com! FormatJSON %!python -m json.tool



func! SvnShowDiff()
    let command = "!svn diff -r HEAD ". expand("%:p")
    exec command
endfunc

:command! SvnShowDiff :call SvnShowDiff()

func! SvnUpdateFile()

    let command = "!svn update ". expand("%:p")
    exec command
endfunc
:command! SvnUpdateFile :call SvnUpdateFile()



:set sessionoptions-=folds
:set sessionoptions-=options



func! FormatHTML()
   exec "s/<[^>]*>/\r&\r/g"
   exec "g/^$/d"
endfunc
command! FormatHTML :call FormatHTML()

" to hide comments
" hi! link Comment Ignore
" to show comments
" hi! link Comment Comment

" to fold comment lines 
" set foldmethod=marker
"set foldmarker=\/**,*\/
"set foldtext='\ '
"



func! GetFileName()
    let command = "let @\" = expand('%:p')"
    execute command
endfunc

command! GetFileName :call GetFileName()<CR>


" neocomplcache is completing camel cases, disable this
" Camel_Complete mappings
"inoremap <c-i> <c-x><c-u>
"imap <c-i> <c-x><c-u>
"setlocal completefunc=Camel_Complete

nnoremap <silent> <Leader>f :call Gather(input("Search for: "))<CR>
nnoremap <silent> <Leader>F :call Gather(@/)<CR>
nnoremap <silent> <Esc> :call CloseScratch()<CR>
nnoremap <F4> :GundoToggle<CR>

set fileformats=unix,dos
set fileformat=unix

function! GoToFile()
  let file = getline('.') 
  file = split(file," ")[1]
  let lineNum = split(file,":")[1]
  file = split(file,":")[0]
  let command = "e +".lineNum." ".file
  execute command
endfunction

nmap <silent><leader><leader>m @a
autocmd BufRead,BufNewFile *.log set syntax=log4j

nmap <Leader>1  <Plug>MarkSearchGroup1Next
nmap <Leader>!  <Plug>MarkSearchGroup1Prev
nmap <Leader>2  <Plug>MarkSearchGroup2Next
nmap <Leader>@  <Plug>MarkSearchGroup2Prev

let g:hardy_split_direction=1

nmap / /\v

map <A-S-L> 20zl
map <A-S-H> 20zh

map <A-Space> <S-L>zt
map <S-Space> <S-H>zb

command! -range CapitalizeTitle :s/\%V\v<(.)(\w*)/\u\1\L\2/g<BAR>noh
"nmap <C-B> m`b~`` 
"m` mark current position b- go to beginning, ~-capitilize
"letter, `` - go to previous cursor position


let g:calendar_file_type="taskpaper"
let g:calendar_diary ="~/Dropbox/SyncApps/vim_configuration_files/diary"
let g:plantuml_executable_script = "java -jar ".expand($HOME)."/Dropbox/Development/plantuml.8029.jar"

"if has("win32")
    "let g:plantuml_executable_script = "java -jar D:/Development/uml_files/plantuml.8028.jar"
"else
    "let g:plantuml_executable_script = "java -jar ~/Dropbox/Development/plantuml.8029.jar"
"endif

if has('win32') && has('gui_running')
    let g:plantuml_executable_viewer = "rundll32 \"C:\\Program Files\\Windows Photo Viewer\\PhotoViewer.dll\", ImageView_Fullscreen"
else
    let g:plantuml_executable_viewer = "feh"
endif

" opens file's containing folder
nnoremap <silent> <F11> :if has('win32') && has('gui_running') && expand('%:p:h') != "" \| exec "silent ! start " expand("%:p:h:S") \| endif<CR>

"nmap <C-L> :Matrix<CR>
set nosol

" Open markdown files with Chrome.

"autocmd BufEnter *.md exe 'noremaxpand('%:p'),'\\s','%20','g' ).'<CR>'
"autocmd BufEnter *.md execute 'noremap <F5> :!start C:\Program Files (x86)\Google\Chrome\Application\chrome.exe %:p<CR>'
"autocmd BufEnter *.md exe 'noremap <F5> :call FileMe()<CR>'

"set guifont=Consolas:h9:cANSI
if has('win32')
    let g:easytags_cmd = 'c:\ctags58\ctags.exe'
    let g:easytags_ctags_version="5.8"
    let g:tagbar_ctags_bin = 'c:\ctags58\ctags.exe'
endif

if has('macunix')
    set guifont=Anonymice\ Powerline\ Italic
    "set guifont=Inconsolata-dz\ for\ Powerline
    let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
elseif has('unix')
    let g:easytags_cmd = '/usr/bin/ctags'
    let g:easytags_ctags_version="5.9"
    let g:tagbar_ctags_bin = '/usr/bin/ctags'
endif


let g:airline_powerline_fonts=1
"set guifont=DejaVu\ Sans\ Mono\ Oblique\ for\ Powerline
"set guifont=Tinos\ Italic\ for\ Powerline
"set guifont=Inconsolata-dz\ for\ Powerline
""Strictly necessary for Powerline
set encoding=utf-8
"Set to whatever font you like.
"set guifont=Inconsolata\ for\ Powerline:h10
 
if has('win32')
    python from powerline.vim import setup as powerline_setup
    python powerline_setup()
    python del powerline_setup
endif
let g:bufExplorerDisableDefaultKeyMapping=1    " Disable mapping.

map <Esc>[B <Down>]

let g:easytags_async=1
set tags=./tags;
let g:easytags_dynamic_files = 1

nmap <Leader>b :CtrlPBuffer<CR>

set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/bin/**


let g:VCalc_WindowPosition = 'right'
let g:VCalc_Win_Size = 40

" open remote file
" e scp://pi@192.168.1.102//home/pi/.ssh/id_rsa.pub
"


if has('unix') && !has('macunix')
" linux specific options
    nmap <S-Insert> "+p
    imap <S-Insert> <Esc>"+p
endif

"au FileType java :so ~/Dropbox/SyncApps/vim_configuration_files/javakit/vim/javakit.vim"
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
