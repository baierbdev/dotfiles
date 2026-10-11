require("fidget").setup()
require("lsp_signature").setup()

vim.lsp.config('clangd', {
	cmd = { 'clangd' },
	filetypes = { 'c', 'cpp'  },
	root_markers = { { 'makefile' }, '.git' },
})
vim.lsp.enable('clangd')

vim.lsp.config('gopls', {
	cmd = { 'gopls' },
	filetypes = { 'go', 'gomod', 'gosum'  },
	root_markers = { { 'go.mod', 'go.sum' }, '.git' },
})
vim.lsp.enable('gopls')

vim.lsp.config('typescript', {
	cmd = { 'typescript-language-server' ,'--stdio' },
	filetypes = { 'typescript', 'javascript'  },
	root_markers = { { 'package.json', 'package-lock.json' }, '.git' },
})
vim.lsp.enable('typescript')

vim.lsp.config('texlab', {
	cmd = { 'texlab' },
	filetypes = { 'tex'  },
	root_markers = { '.git' },
})
vim.lsp.enable('texlab')
