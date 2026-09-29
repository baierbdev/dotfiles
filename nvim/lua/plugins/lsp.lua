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
		"ray-x/go.nvim",
		dependencies = {  
			"ray-x/guihua.lua",
		},
		opts = function()

			require("go").setup(opts)
			local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*.go",
				callback = function()
					require('go.format').goimports()
				end,
				group = format_sync_grp,
			})
			return {
			}
		end,
		event = {"CmdlineEnter"},
		ft = {"go", 'gomod'},
		build = ':lua require("go.install").update_all_sync()' 
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	}
}
