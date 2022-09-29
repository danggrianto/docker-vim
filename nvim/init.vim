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

  " Indentline
  Plug 'yggdroot/indentline'

  " Git
  " gitgutter
  Plug 'airblade/vim-gitgutter'
  "fugitive
  Plug 'tpope/vim-fugitive'

  "" LANGUAGE SPECIFIC

  " markdown
  Plug 'plasticboy/vim-markdown'

  " Jenkinsfile - groovy
  Plug 'martinda/Jenkinsfile-vim-syntax'

  " prettier https://github.com/prettier/vim-prettier
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

  " Javascript
  " syntax highlighter
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'

  " emmet 
  Plug 'mattn/emmet-vim'

call plug#end()

" CONFIGURATION
" Common
filetype plugin indent on    	" required

" map leader
let mapleader = ','

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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Indentation
set autoindent expandtab tabstop=2 shiftwidth=2

" Filetype
autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy

" Markdown syntax
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal_code_blocks = 0

" YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Autoformat JSX
autocmd BufWritePre *.js,*.jsx,*.json,*.css,*.scss,*.less,*.graphql Prettier

" Remap key
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Left> <C-w>h
map <C-Right> <C-w>l

