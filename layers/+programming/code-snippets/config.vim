scriptencoding utf-8

" ultisnips {
  " Set ultisnips triggers
  let g:UltiSnipsSnippetDirectories=['UltiSnips']
  exe 'set rtp+=' . expand(g:spacevim_dir . '/private/UltiSnips')
  let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

  let g:UltiSnipsListSnippets = '<C-l>'
  " let g:UltiSnipsJumpForwardTrigger = '<C-j>'
  " let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

  " Fix tab conflict with YCM
  let g:UltiSnipsExpandTrigger       = "<tab>"
  let g:UltiSnipsJumpForwardTrigger  = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
  map <LocalLeader>us :UltiSnipsEdit<CR>
  " ctrl+j/k 进行选择
  func! g:JInYCM()
      if pumvisible()
          return "\<C-n>"
      else
          return "\<c-j>"
      endif
  endfunction

  func! g:KInYCM()
      if pumvisible()
          return "\<C-p>"
      else
          return "\<c-k>"
      endif
  endfunction
  inoremap <c-j> <c-r>=g:JInYCM()<cr>
  au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
  let g:UltiSnipsJumpBackwordTrigger = "<c-k>"
  " let g:ulti_expand_or_jump_res = 0
  function! ExpandSnippetOrCarriageReturn()
    let l:snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
      return l:snippet
    else
      return "\<CR>"
    endif
  endfunction
  inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>"
" }
