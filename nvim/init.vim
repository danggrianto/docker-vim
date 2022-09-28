call plug#begin()
  " nerd tree https://github.com/preservim/nerdtree
  Plug 'preservim/nerdtree'

  " color scheme https://github.com/jaredgorski/SpaceCamp
  Plug 'jaredgorski/spacecamp'

  " fzf https://github.com/junegunn/fzf.vim
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " commenter https://github.com/tpope/vim-commentary
  Plug 'tpope/vim-commentary'

  " CtrlP https://github.com/kien/ctrlp.vim
  Plug 'kien/ctrlp.vim'

  " airline - statusbar in vim
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Jenkinsfile - groovy
  Plug 'martinda/Jenkinsfile-vim-syntax'
  " prettier https://github.com/prettier/vim-prettier
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

  " syntax highlighter
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'

  " emmet 
  Plug 'mattn/emmet-vim'

call plug#end()

" CONFIGURATION
" Common
filetype plugin indent on    	" required

" turn on line numbering
set number
" set line numbers to 4 spaces
set numberwidth=4
" turn relative line numbers on
set relativenumber
" scroll offset
set scrolloff=3
" turn on syntax highlight
syntax on
" open every file you open in a vertical split on the right side
set splitright


" Nerd Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Spacecamp
colorscheme spacecamp

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
