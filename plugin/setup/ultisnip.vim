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
  let manualcomplete = neocomplete#start_manual_complete()
  return manualcomplete
endfunction

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=Tab_Snippet_Complete()\<CR>"
