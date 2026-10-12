return {
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {},
	}, 
	{
		'Bekaboo/dropbar.nvim',
		config = function()
			local dropbar_api = require('dropbar.api')
			vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
			vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
			vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
		end
	},
	{
		"oskarnurm/koda.nvim",
		lazy = false,
		priority = 1000, 
		config = function()
			require("koda").setup({ transparent = true })
			vim.cmd("colorscheme koda")
		end,
	}
}

