return {
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
	},
	{
		'saghen/blink.cmp',
		dependencies = {
			'saghen/blink.lib',
			'rafamadriz/friendly-snippets',
		},
		build = function()
			require('blink.cmp').build():pwait()
		end,
		opts = {
			keymap = { preset = 'default' },
			completion = { documentation = { auto_show = true }},
			sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
			fuzzy = { implementation = "rust" }
		},
	},
	{
		"j-hui/fidget.nvim",
		opts = {
		},
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		config = function()
			require("tiny-inline-diagnostic").setup()
			vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
		end,
	}
}
