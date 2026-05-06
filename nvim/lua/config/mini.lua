-- Mini config
local path_package = vim.fn.stdpath('data') .. '/site'
local mini_path = path_package .. '/pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    -- Uncomment next line to use 'stable' branch
    -- '--branch', 'stable',
    'https://github.com/nvim-mini/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
  vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

require("mini.notify").setup()
require("mini.pairs").setup()
require("mini.starter").setup()
require("mini.statusline").setup()
require("mini.deps").setup()
require("mini.icons").setup()
MiniIcons.mock_nvim_web_devicons()
require("mini.files").setup()
require('mini.tabline').setup()
