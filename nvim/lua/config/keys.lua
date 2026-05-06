local map = vim.api.nvim_set_keymap

-- Nvimtree
map('n', '<Leader>e','<Cmd>NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Explorer"})
