return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
				untracked = { text = "▎" },
			},
			signs_staged = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
			},
		},
	},
	{
		'nvim-mini/mini-git',
		version = false,
		keys = {
			{
				"<leader>gc",
				"<cmd>Git commit<cr>",
				desc = "Git commit",
			},
			{
				"<leader>gc",
				"<cmd>Git add %<cr>",
				desc = "Git Add File",
			},

		}
	},
	{
		"f-person/git-blame.nvim",
		event = "VeryLazy",
	}
}
