call plug#begin()
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'rktjmp/lush.nvim' 
Plug 'ellisonleao/gruvbox.nvim'
Plug 'gko/vim-coloresque'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'cohama/lexima.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier'
Plug 'mattn/emmet-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-lists',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-prettier',
  \ 'coc-vimlsp',
  \ ]

syntax enable
set number
set relativenumber
set mouse=a
set background=dark
colorscheme gruvbox
set termguicolors

" AIRLINE
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#show_buffers = 1 
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1 
let g:airline#extensions#tabline#tab_nr_type = 1 
let g:airline_theme='dracula'

" Configurações do CoC.nvim

 inoremap <silent><expr> <TAB> 
			 \ pumvisible() ? "\<C-n>" :
			 \ <SID>check_back_space() ? "\<TAB>" :
			 \ coc#refresh()
 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

 function! s:check_back_space() abort 
	 let col = col('.') - 1 
	 return !col || getline('.')[col - 1] =~# '\s' 
 endfunction 

 inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() 
			 \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
 
" Fim das configurações do CoC.nvim

" Configurações do Vim IndentGuides
let g:indentguides_spacechar = '▏' 
let g:indentguides_tabchar = '▏' 
" Fim das configurações do Vim IndentGuides

" Configurações do lexima.vim 
let g:indentguides_spacechar = '▏' 
let g:indentguides_tabchar = '▏' 
" Fim das configurações do lexima.vim
"
nnoremap <C-s> :w!<CR>
nnoremap <C-q> :qa<CR>
nnoremap <F1> :bprevious<CR> 
nnoremap <F2> :bnext<CR>
nnoremap <silent> <s-Down> :m +1<CR> 
nnoremap <silent> <s-Up> :m -2<CR>
vnoremap <C-c> "+y<CR>
"nnoremap <C-t> :split term://bash<CR>

" open new split panes to right and belows
set splitright
set splitbelow

" turn terminal to normal mode with escapet
noremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+nn
"
function! OpenTerminal() 
	split term://bash 
	resize 10
endfunction

nnoremap <c-b> :call OpenTerminal()<CR>


nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
\ 'ctrl-t': 'tab split',
\ 'ctrl-s': 'split',
\ 'ctrl-v': 'vsplit'
\}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
