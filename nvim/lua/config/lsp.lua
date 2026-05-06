vim.diagnostic.enable = true
vim.diagnostic.config({
	virtual_lines = true,
})
vim.lsp.config('clangd', {
	cmd = { 'clangd19' },
	filetypes = { 'c', 'cpp' }
})

vim.lsp.config('gopls', {
	cmd = { 'gopls' },
	filetypes = { 'go', 'gomod' }
})
vim.lsp.config('tsgo',{
	cmd = {'tsgo', '--lsp', '--stdio'},
	filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact',}
})

vim.lsp.enable('clangd')
vim.lsp.enable('gopls')
vim.lsp.enable('tsgo')
