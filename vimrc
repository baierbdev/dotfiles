let mapleader=' '

syntax on

filetype on
filetype plugin on
filetype indent on

set number
set autoindent	
set smartindent	
set smarttab
set softtabstop=4
set shiftwidth=4

set background=dark
set termguicolors

set laststatus=2

call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'huyvohcmc/atlas.vim'
Plug 'itchyny/lightline.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'

call plug#end()

colorscheme atlas


nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>/ :Rg 
nnoremap <Leader>c :e ~/.vimrc<CR>

let g:lightline={}
let g:lightline.colorscheme = 'atlas'

" Indent lines enable
let g:indent_guides_enable_on_vim_startup = 1

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


function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
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
