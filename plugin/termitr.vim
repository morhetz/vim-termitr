" -----------------------------------------------------------------------------
" File: termit.vim
" Description: Some vim terminal integration
" Author: morhetz <morhetz@gmail.com>
" Source: https://github.com/morhetz/termitr
" Last Modified: 12 Mar 2015
" -----------------------------------------------------------------------------

if has('gui_running')
  finish
endif

if !exists('g:termitr_insert_cursor')
   let g:termitr_insert_cursor=5
endif

if !exists('g:termitr_normal_cursor')
   let g:termitr_normal_cursor=1
endif


if $TERM_ITALICS == 'true'
   " setting gnome-256color drops mouse
   set ttymouse=xterm2

   " tmux italics workaround
   let &t_ZH="\e[3m"
   let &t_ZR="\e[23m"
endif

if $COLORTERM == 'rxvt'
   " normal//input cursor shape
   if $TERM =~# '\v^screen(-\d*color|-bce|-it|-s)*$'
      let &t_SI = "\ePtmux;\e\e[" . g:termitr_insert_cursor . " q\e\\"
      let &t_EI = "\ePtmux;\e\e[" . g:termitr_normal_cursor . " q\e\\"
      " reset on quit
      autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[2 q\033\\"
   else
      let &t_SI = "\e[" . g:termitr_insert_cursor . " q"
      let &t_EI = "\e[" . g:termitr_normal_cursor . " q"
      " reset on quit
      autocmd VimLeave * silent !echo -ne "\033[2 q"
   endif
endif

" vim: set sw=3 ts=3 sts=3 et tw=80 ft=vim fdm=marker:
