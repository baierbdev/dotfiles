return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		keys = {
			{
				"<leader>e",
				"<cmd>lua Snacks.picker.explorer()<cr>",
				desc = "Open explorer",
			},
			{
				"<leader>/",
				"<cmd>lua Snacks.picker.grep()<cr>",
				desc = "Grep",
			},		
			{
				"<leader>b",
				"<cmd>lua Snacks.picker.buffers()<cr>",
				desc = "Buffers",
			},
			{
				"<leader>p",
				"<cmd>lua Snacks.picker.projects()<cr>",
				desc = "Open projects",
			},
			{
				"gd",
				"<cmd>lua Snacks.picker.lsp_definitions()<cr>",
				desc = "Goto Definition",
			},
			{
				"<Leader>gb",
				"<cmd>lua Snacks.picker.git_branches()<cr>",
				desc = "Git Branches",
			},
			{
				"<Leader>gl",
				"<cmd>lua Snacks.picker.git_log()<cr>",
				desc = "Git Log",
			},
			{
				"<Leader>gs",
				"<cmd>lua Snacks.picker.git_status()<cr>",
				desc = "Git status",
			},
			{
				"<Leader>gd",
				"<cmd>lua Snacks.picker.git_diff()<cr>",
				desc = "Git Diff",
			},
			{
				"gD",
				"<cmd>lua Snacks.picker.lsp_declarations()<cr>",
				desc = "Goto Declaration",
			},
			{
				"gr",
				"<cmd>lua Snacks.picker.lsp_references()<cr>",
				desc = "References",
			},			{
				"gI",
				"<cmd>lua Snacks.picker.lsp_implementations()cr>",
				desc = "Goto Implementation",
			},
			{
				"gy",
				"<cmd>lua Snacks.picker.lsp_type_definitions()cr>",
				desc = "Goto T[y]pe Definition",
			},
			{
				"gai",
				"<cmd>lua Snacks.picker.lsp_incoming_calls()<cr>",
				desc = "C[a]lls Incoming",
			},
			{
				"gao",
				"<cmd>lua Snacks.picker.lsp_outgoing_calls()<cr>",
				desc = "C[a]lls Outgoing",
			},
			{
				"<Leader>ss",
				"<cmd>lua Snacks.picker.lsp_symbols()<cr>",
				desc = "LSP Symbols",
			},
			{
				"<Leader>sS",
				"<cmd>lua Snacks.picker.lsp_workspace_symbols()<cr>",
				desc = "LSP Workspace Symbols",
			},
			{
				"<Leader>r",
				"<cmd>lua Snacks.rename.rename_file()<cr>",
				desc = "Rename file",
			},
			{
				"<Leader>t",
				"<cmd>lua Snacks.terminal()<cr>",
				desc = "Terminal",
			}
		},
		opts = {
			animate = { enabled = true },
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			indent = {
				enabled = true,
				only_scope = true,
			},
			input = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
	}
}
