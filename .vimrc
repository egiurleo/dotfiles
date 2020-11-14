set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
syntax on
set cursorcolumn

set hlsearch
set autochdir
set wrap!
set colorcolumn=80

" For vim-gitgutter
set updatetime=100
set statusline=%!getcwd()
set cursorline

set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

" Changes for lightline
set laststatus=2
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ 'colorscheme': 'ayu_light',
      \ }

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Remove whitespace
function! PreciseTrimWhiteSpace()
  " We need to save the view because the substitute command might
  " or might not move the cursor, depending on whether it finds
  " any whitespace.
  let saved_view = winsaveview()

  " Remove white space. Ignore "not found" errors. Don't change jumplist.
  keepjumps '[,']s/\s\+$//e

  " Move cursor back if necessary.
  call winrestview(saved_view)
endfunction

augroup PreciseTrimWhiteSpace
  autocmd!
  autocmd BufWritePost * call PreciseTrimWhiteSpace()
augroup end

set directory^=$HOME/.vim/tmp//   " store swap files here

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tomtom/tcomment_vim'
Plug 'vim-ruby/vim-ruby'
Plug 'itchyny/vim-gitbranch'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-rooter'

call plug#end()
