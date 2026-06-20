let mapleader=' '

set encoding=UTF-8

syntax on

filetype on
filetype plugin on
filetype indent on

set number
set relativenumber
set hlsearch
set autoindent	
set smartindent	
set smarttab
set softtabstop=4
set shiftwidth=4

set background=dark
set termguicolors

set laststatus=2

call plug#begin()

Plug 'huyvohcmc/atlas.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dadbod'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-buffer.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/nginx.vim'
Plug 'vim-scripts/grep.vim'

call plug#end()

colorscheme atlas

" Language config
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" General bidings
nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>c :e ~/.vimrc<CR>
nnoremap <Leader>/ :Grep 

" Bidings lsp
nnoremap <Leader>ga :LspCodeAction<CR>
nnoremap <Leader>gd :LspDeclaration<CR>
nnoremap <Leader>gD :LspDefinition<CR>

let g:lightline={}
let g:lightline.colorscheme = 'atlas'

" Vimtex
let g:vimtex_compiler_method = 'pdflatex'

" Lsp Config
if executable('clangd')
    au User lsp_setup call lsp#register_server({
		\ 'name': 'clangd',
		\ 'cmd': {server_info->['clangd']},
		\ 'allowlist': ['c', 'cpp'],
		\ })
endif
if executable('gopls')
    au User lsp_setup call lsp#register_server({
		\ 'name': 'gopls',
		\ 'cmd': {server_info->['gopls']},
		\ 'allowlist': ['go', 'gomod', 'gosum'],
		\ })
endif
if executable('tsgo')
    au User lsp_setup call lsp#register_server({
		\ 'name': 'tsgo',
		\ 'cmd': {server_info->['tsgo', '--lsp',  '--stdio']},
		\ 'allowlist': ['typscript', 'javascript', 'typescriptreact', 'javascriptreact'],
		\ })
endif
if executable('pylsp')
    au User lsp_setup call lsp#register_server({
		\ 'name': 'pylsp',
		\ 'cmd': {server_info->['pylsp']},
		\ 'allowlist': ['python'],
		\ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    autocmd! BufWritePre *.go call execute('LspDocumentFormatSync')

endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"Autocompletion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
