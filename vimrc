let mapleader=' '

syntax on

filetype on
filetype plugin on
filetype indent on

set number
set autoindent	
set shiftwidth=4
set smartindent	
set smarttab
set softtabstop=4

set background=dark

call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

colorscheme jellybeans

nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>c :e ~/.vimrc<CR>

" Indent lines enable
let g:indent_guides_enable_on_vim_startup = 1

" Lsp Config
if executable('clangd19')
    au User lsp_setup call lsp#register_server({
		\ 'name': 'clangd',
		\ 'cmd': {server_info->['clangd19']},
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
