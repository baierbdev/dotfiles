local install_servers=vim.fs.joinpath(vim.fn.stdpath("data"), "mason")

require("lsp_lines").setup()
require("lsp_signature").setup()

require("mason").setup({
	indent = { enable = true }, 
	highlight = { enable = true }, 
	folds = { enable = true }, 
	ensure_installed = {
		"bash",
		"c",
		"diff",
		"html",
		"javascript",
		"jsdoc",
		"json",
		"lua",
		"luadoc",
		"luap",
		"markdown",
		"markdown_inline",
		"printf",
		"python",
		"query",
		"regex",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"vimdoc",
		"xml",
		"yaml",
	}
})

vim.lsp.config('clangd', {
	cmd = { install_servers..'/bin/clangd' },
	filetypes = { 'c', 'cpp'  },
	root_markers = { { 'makefile' }, '.git' },
})
vim.lsp.enable('clangd')

vim.lsp.config('gopls', {
	cmd = { install_servers..'/bin/gopls' },
	filetypes = { 'go', 'gomod', 'gosum'  },
	root_markers = { { 'go.mod', 'go.sum' }, '.git' },
})
vim.lsp.enable('gopls')


vim.lsp.config('typescript', {
	cmd = { install_servers..'/bin/typescript-language-server' ,'--stdio' },
	filetypes = { 'typescript', 'javascript'  },
	root_markers = { { 'package.json', 'package-lock.json' }, '.git' },
})
vim.lsp.enable('typescript')
