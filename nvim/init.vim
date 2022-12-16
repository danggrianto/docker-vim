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

  " show marks
  Plug 'kshenoy/vim-signature'

  " ack
  Plug 'mileszs/ack.vim'

  " tagbar
  Plug 'majutsushi/tagbar'

  " Git
  " gitgutter
  Plug 'airblade/vim-gitgutter'
  "fugitive
  Plug 'tpope/vim-fugitive'


  " Deoplete
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " ALE
  Plug 'dense-analysis/ale'

  " floaterm
  Plug 'voldikss/vim-floaterm'

  " snippet engine
  Plug 'SirVer/ultisnips'

  " Snippets 
  Plug 'honza/vim-snippets'

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

  " copilot
  Plug 'github/copilot.vim'

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
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" deoplete
let g:deoplete#enable_at_startup = 1

" ALE
let g:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'python': ['black'],
\}
let g:ale_completion_enabled = 1
nnoremap <leader>n :ALENextWrap<CR>

" Spacecamp
colorscheme spacecamp

" CtrlP
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
nnoremap <leader>r :CtrlPClearCache <CR>

" Emmet
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:user_emmet_leader_key=','

" floaterm
let g:floaterm_autoclose = 1
nnoremap <leader>f :FloatermToggle <CR>

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

" Save with  Ctrl s
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
nmap <c-q> :q<cr>
imap <c-q> <esc>:q<cr>a

" tagbar
nnoremap <leader>t :TagbarToggle <CR>

" Ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/snippets']
