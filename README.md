# termitr
Some vim terminal integration

## Installation

- Pathogen
  + `git clone https://github.com/morhetz/termit.git ~/.vim/bundle/termitr`  
- Vundle
  + Add `Bundle 'morhetz/termitr'` to your .vimrc and run `:BundleInstall`
- NeoBundle
  + Add `NeoBundle 'morhetz/termitr'` to your .vimrc and run `:NeoBundleInstall`
- vim-plug
  + Add `Plug 'morhetz/termitr'` to your .vimrc and run `:PlugInstall`

Build local terminfos  
`> tic termitr.terminfo`

Source `termitr.sh` at .bashrc//.zshrc//.profile  
`~/.vim/bundle/termitr/termitr.sh`

Put lines to the `.tmux.conf`  
`set-option -g default-terminal screen-256color-bce`

## Recommended addons

[vim-fixkey](https://github.com/drmikehenry/vim-fixkey)
