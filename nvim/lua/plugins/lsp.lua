return {
	{
		"mason-org/mason.nvim",
		opts = {}
	},
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
			completion = { documentation = { auto_show = true } },
			sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
			fuzzy = { implementation = "rust" }
		},
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	}
}
