" -----------------------------------------------------------------------------
" File: termit.vim
" Description: Some vim terminal integration
" Author: morhetz <morhetz@gmail.com>
" Source: https://github.com/morhetz/termitr
" Last Modified: 2 Feb 2015
" -----------------------------------------------------------------------------

if has('gui_running')
  finish
endif

if $TERM_ITALICS != 'true'
   let g:gruvbox_italic=0
else
   " setting gnome-256color drops mouse
   set ttymouse=xterm2

   " tmux italics workaround
   let &t_ZH="\e[3m"
   let &t_ZR="\e[23m"
endif

if $COLORTERM == 'rxvt'
   " normal//input cursor shape
   if $TERM =~# '\v^screen(-\d*color|-bce|-it|-s)*$'
      let &t_SI = "\ePtmux;\e\e[5 q\e\\"
      let &t_EI = "\ePtmux;\e\e[1 q\e\\"
   else
      let &t_SI = "\e[5 q"
      let &t_EI = "\e[1 q"
   endif
endif

" vim: set sw=3 ts=3 sts=3 et tw=80 ft=vim fdm=marker:
