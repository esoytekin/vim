function! s:check_back_space()
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:ulti_expand_res = 0 "default value, just set once
function! Tab_Snippet_Complete()
  let snippet = UltiSnips#ExpandSnippet()
  if g:ulti_expand_res > 0
    return snippet
  endif
  if <SID>check_back_space()
    return "\<TAB>"
  endif
  let manualcomplete = neocomplcache#start_manual_complete()
  return manualcomplete
endfunction

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=Tab_Snippet_Complete()\<CR>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-R>=Tab_Snippet_Complete()\<CR>"

" Vim's popup menu doesn't select the first completion item, but rather just
" inserts the longest common text of all matches; and the menu will come up
" even if there's only one match. (The longest setting is responsible for the
" former effect and the menuone is responsible for the latter.)
set completeopt=longest,menuone


"change the behavior of the <Enter> key when the popup menu is visible. In that
"case the Enter key will simply select the highlighted menu item, just as <C-Y>
"does.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"keeps a menu item always highlighted. This way you can keep typing characters
"to narrow the matches, and the nearest match will be selected so that you can
"hit Enter at any time to insert it.
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


" keep menu item always highlighted by simulating <Up> on pu visible
inoremap <expr> <C-p> pumvisible() ? '<C-p>' :
  \ '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'


"simulates <C-X><C-O> to bring up the omni completion menu, then it simulates
"<C-N><C-P> to remove the longest common text, and finally it simulates <Down>
"again to keep a match highlighted.
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

