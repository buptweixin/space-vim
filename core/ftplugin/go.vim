if exists('b:did_spacevim_go_ftplugin') || !spacevim#LayerLoaded('go')
  finish
endif
let b:did_spacevim_go_ftplugin = 1

nmap <buffer> <LocalLeader>b  :<C-U>call spacevim#lang#go#BuildGoFiles()<CR>
nmap <buffer> <LocalLeader>r  <Plug>(go-run)
nmap <buffer> <LocalLeader>t  <Plug>(go-test)
nmap <buffer> gi <Plug>(go-implements)

if g:spacevim_timer
 call timer_start(300, 'spacevim#defer#go')
endif
