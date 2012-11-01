set nu

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:.
set list

set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
set colorcolumn=100

let mapleader=','

set hlsearch
" Press space bar to toggle highlighting on/off, and show current value.
noremap <silent> <Space> :set hlsearch! hlsearch?<CR>

autocmd VimEnter * NERDTree workspace
let NERDTreeIgnore = ['\.pyc$']

syntax on
filetype on
au BufNewFile,BufRead *.spv set filetype=php
au BufNewFile,BufRead *.vcl set filetype=c
au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source ~/.vim/plugin/json.vim

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set background=dark

:command FrameworksFormat retab | %s/\s\+$

nmap <Tab> <C-w>w

" ================ PHPDoc Plugin Settings ========================
nmap <leader>p :exe PhpDoc()<CR>

" Disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" ============= Toggle relative and absolute line numbers =======
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
