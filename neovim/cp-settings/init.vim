set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set mouse=a
set number
set relativenumber
set expandtab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Smart way to move between windows
map <M-Down> <C-W>j
map <M-Up> <C-W>k
map <M-Left> <C-W>h
map <M-Right> <C-W>l

" Copy/paste from system clipboard
map <C-y> "+y<CR>
map <C-p> "+P<CR>

" Copy All
nmap c :%y+<CR>

set nocompatible              " required for Vundle
filetype off                  " required for Vundle

" PLUGINS

call plug#begin('~/.config/nvim/plugged')

Plug 'searleser97/cpbooster.vim'

call plug#end()

" Change Relative Numbers to NoRelativeNumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

function! Formatter()
  silent !clang-format -style=file -i %:p
endfunction

nmap nn :call NumberToggle()<CR>
nmap ff :call Formatter()<CR>

command! -nargs=0 FormatClang execute 'silent !clang-format -style=file -i ' . expand('%:p')
command! -nargs=0 Format execute 'FormatClang'

