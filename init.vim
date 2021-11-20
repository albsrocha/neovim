call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'gko/vim-coloresque'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'cohama/lexima.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'ryanoasis/vim-devicons'
call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>


syntax enable
set number
set relativenumber
set mouse=a
set background=dark
set termguicolors

" AIRLINE
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#show_buffers = 1 
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1 
let g:airline#extensions#tabline#tab_nr_type = 1 
let g:airline_theme='dalton'

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
nnoremap <C-t> :split term://bash<CR>
