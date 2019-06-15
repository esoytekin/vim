" For postgre sql
" set the PGPASSWORD environment variable.
" from powershell $env:PGPASSWORD='password'
if exists("g:loaded_dbext_configuration_plugin")"{{{
    finish
endif"}}}

let g:loaded_dbext_configuration_plugin = 1

" db connection profiles"{{{
"let g:dbext_default_profile_dev_mysql_local = 'type=MYSQL:user=root:passwd=@askb:dbname=@askb:host=localhost:port=8080'
"let g:dbext_default_profile_mysql_turknet_ipsla = 'type=MYSQL:user=ipsla:passwd=ipsla:dbname=ipsla:host=212.154.121.98'
"let g:dbext_default_profile_mysql_10_20_30_246_ipsla = 'type=MYSQL:user=ipsla:passwd=ipsla:dbname=ipsla:host=10.20.30.246'
"let g:dbext_default_profile_dev_oracle_202 = 'type=ORA:user=ipsla:passwd=kr10ipsla:srvname=10.20.40.202/ORADB:dbname=ipsla'
"let g:dbext_default_profile_dev_oracle_TTNET = 'type=ORA:user=ADSLOS:passwd=p_ad8108_32:srvname=localhost\:3333/PKONORA2'
"let g:dbext_default_profile_dev_oracle_SCAP_MTS = 'type=ORA:user=scap:passwd=scap:srvname=172.25.6.90/SCAPMTS'
"let g:dbext_default_profile_mysql_132_askdb = 'type=MYSQL:user=ipsla:passwd=ipsla:dbname=@askb:host=10.20.40.132'
"let g:dbext_default_profile_mysql_135_askdb = 'type=MYSQL:user=ipsla:passwd=ipsla:dbname=@askb:host=10.20.40.135'
let g:dbext_default_profile_postgre_local = 'type=PGSQL:user=aioc:dbname=@askb:host=localhost:port=5432'
"let g:dbext_default_profile_postgre_78 = 'type=PGSQL:user=aioc:dbname=aioc:host=10.20.40.78:port=5444'
let g:dbext_default_profile_postgre_x_aioc = 'type=PGSQL:user=aioc:dbname=aioc:passwd=aioc:host=@askb:port=5444'
"let g:dbext_default_profile_postgre_67_single_mon = "type=PGSQL:user=aioc:passwd=Q63NNP\@EHJmWKNka:dbname=aioc:host=10.20.40.67:port=5444"
let g:dbext_default_profile_postgre_67_single_mon = 'type=PGSQL:user=aioc:passwd=@askb:dbname=aioc:host=10.20.40.67:port=5444'
"let g:dbext_default_profile_postgre_251_aioc = 'type=PGSQL:user=aioc:dbname=aioc:host=10.20.40.251:port=5444'
"let g:dbext_default_profile_postgre_52_amazon = 'type=PGSQL:user=aioc:dbname=aioc:host=52.27.205.218:port=5444'
"let g:dbext_default_profile_mysql_wvm224 = 'type=MYSQL:user=emrahs:passwd=My5q!Mgr:dbname=wvm224:host=47.168.150.224'
let g:dbext_default_profile_mysql_raspberry = 'type=MYSQL:user=emrahs:passwd=emrah1234:dbname=bau:host=192.168.1.103'
"let g:dbext_default_profile_dev_oracle_LOCAL = 'type=ORA:user=system:passwd=emrah1234:srvname=10.20.50.146/XE'
"let g:dbext_default_profile_dev_oracle_250 = 'type=ORA:user=KRON_NPMTEST:passwd=KRON_NPMTEST:srvname=localhost\:5000/10.20.40.250\:1521\:NPM'
"let g:dbext_default_profile_proxy_local_ora = 'type=ORA:user=hr:passwd=hr:srvname=localhost\:5000/192.168.27.128\:1521\:XE'
"let g:dbext_default_profile_vm_ora = 'type=ORA:user=hr:passwd=hr:srvname=192.168.27.128\:1521/XE'
"let g:dbext_default_profile_92_ora = 'type=ORA:user=SYSTEM:passwd=1qaz2wsxtestdb:srvname=10.20.40.92\:1521/testdb'
let g:dbext_default_profile_sqlite_taskpaper = 'type=SQLITE:SQLITE_bin=/usr/local/bin/sqlite3:dbname=/Volumes/MACHDD2/Development/tutorials/rest/totp-nodejs/schema/taskpaper.db'
" let g:dbext_default_profile_postgre_istanbul_aioc = 'type=PGSQL:user=aioc:passwd=aioc:dbname=aioc:host=10.20.40.237'
"}}}


func! dbext#ShowCreateTable()
    let wordUnderCursor = expand("<cword>")
    let type = DB_listOption('type')

    if type == 'PGSQL'
        let dbname = DB_listOption('dbname')
        let user = DB_listOption('user')
     
        let command = "pg_dump -U ".user." -t ".wordUnderCursor." --schema-only --no-tablespaces ".dbname
        exec "new | setlocal buftype=nofile bufhidden=hide noswapfile | r  !".command
    else
        let command = "show create table " . wordUnderCursor
        exec "DBExecSQL " . command
    endif

endfunc

func! dbext#OpenSqlEditor()
    
    "check if profile is set before
    let selectedProfile = DB_listOption('profile')

    if (selectedProfile != "@askb")
        echo "can't open while profile is set.." . selectedProfile
        return
    endif

    echo selectedProfile



    "save current buffer so we can come back
    let s:save_bufnr = winnr()
    "list tables, put them in a new vertical buffer
    " set new buffes profile
    "
    execute "DBListTable %"

    let selectedProfile = DB_listOption('profile')

    "execute "0f"
    "file DB_Client

    execute "normal! \<C-W>\<C-J>"
    execute "normal! yG"
    bdelete
    vert belowright new
    setlocal modifiable
    setlocal buftype=nofile bufhidden=hide noswapfile
    vertical resize 40
    execute "normal! p"
    execute "1,3d"

    execute "DBSetOption profile=".selectedProfile
    setlocal nonu
    setlocal nomodifiable
    nnoremap <buffer> <silent> <Leader>f<Space> :call dbext#GetTableList(input("Table prefix: "))<CR>
    nnoremap <buffer> <silent> <Esc> :call dbext#GetTableList("%")<CR>
    nnoremap <buffer> <silent><CR> :DBSelectFromTable<CR>
    execute s:save_bufnr."wincmd w"
    AutoComplPopEnable
    DBCompleteTables
    setlocal ft=sql
    nmap <buffer> ? :call dbext#ShowSqlHelp()<CR>
    echo "use ? in main buffer to show help"



endfunc

function! dbext#GetTableList(pattern) abort
    "check if profile is set before
    let selectedProfile = DB_listOption('profile')

    "if (selectedProfile == "@askb")
        "echo "can't open while profile is set.." . selectedProfile
        "return
    "endif



    "save current buffer so we can come back
    let s:save_bufnr = winnr()
    "clear current buffer
    setlocal modifiable
    execute "normal! ggdG"
    "list tables, but them in a new vertical buffer
    " set new buffes profile
    "
    execute "DBListTable ". a:pattern

    execute "normal! \<C-W>\<C-J>"
    execute "normal! yG"
    bdelete

    execute s:save_bufnr."wincmd w"
    execute "normal! p"
    execute "1,3d"
    setlocal nonu
    setlocal nomodifiable
endfunction


function! dbext#ShowSqlHelp() abort
    echo "<leader>f<space> - filter tables"
    echo "<C-C>c - complete columns"
    echo "<C-C>a or s - complete statement"
    echo "<C-Space> complete tables"
    echo "resize 10"
    echo "vertical resize 30"
endfunction

nnoremap <silent> <leader>sct :call dbext#ShowCreateTable()<CR>

command! OpenSqlEditor :call dbext#OpenSqlEditor()

vmap <C-Enter> :DBExecRangeSQL<CR>
