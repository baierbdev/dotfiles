return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim',
			'nvim-tree/nvim-web-devicons',
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
		},
		version = '^1.0.0', 
		keys = {
			{
				"<A-.>",
				"<cmd>BufferNext<cr>",
				desc = "Buffer Next",
			},
			{
				"<A-,>",
				"<cmd>BufferPrevious<cr>",
				desc = "Buffer Previous",
			},
			{
				"<A-c>",
				"<cmd>BufferClose<cr>",
				desc = "Buffer Next",
			},
			{
				"<A-<>",
				"<cmd>BufferMovePrevious<cr>",
				desc = "Buffer Move Previous",
			},
			{
				"<A->>",
				"<cmd>BufferMoveNext<cr>",
				desc = "Buffer Move Next",
			}
		}
	},
}
