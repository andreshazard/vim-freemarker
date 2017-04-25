" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
runtime! indent/html.vim
let s:htmlindent = &indentexpr
setlocal indentexpr=FreemarkerIndent()

let s:tags = [] 
let s:closetags = []
let s:special= []

" Conditional and block tags.
call add(s:tags, 'if')
call add(s:tags, 'elseif')
call add(s:tags, 'else')
call add(s:tags, 'attempt')
call add(s:tags, 'recover')
call add(s:tags, 'list')
call add(s:tags, 'break')
call add(s:tags, 'macro')
call add(s:tags, 'nested')
call add(s:tags, 'switch')
call add(s:tags, 'case')
call add(s:tags, 'default')
call add(s:tags, 'items')

" Conditional and block ending tags.
call add(s:closetags, 'if')
call add(s:closetags, 'attempt')
call add(s:closetags, 'list')
call add(s:closetags, 'macro')
call add(s:closetags, 'switch')
call add(s:closetags, 'items')

" Special tags that indent back.
call add(s:special, 'elseif')
call add(s:special, 'else')
call add(s:special, 'recover')

let s:tag_expr = join(s:tags, '\|')
let s:tag_close_expr = join(s:closetags, '\|')
let s:special = join(s:special, '\|')

function! FreemarkerIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)

  " Hit the start of the file, use zero indent.
  if previousNum == 0
    return 0
  endif

  let previous = getline(previousNum)

  if previous =~'<#\('.s:tag_expr.'\)'
    return indent(previousNum) + &tabstop
  endif

  if line =~'</#\('.s:tag_close_expr.'\)' || line =~'<#\('.s:special.'\)'
    return indent(previousNum) - &tabstop
  endif

  " Special handling for html
  if s:htmlindent == ''
    return cindent(previousNum)
  else
    execute 'let ind = ' . s:htmlindent
    return ind
  endif
endfunction
