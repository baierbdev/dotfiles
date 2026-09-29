vim.opt.number=true
vim.opt.relativenumber=true

vim.opt.background=light
vim.opt.termguicolors = true

vim.opt.cursorline=true

require("config.lazy")
require("config.line")
require("config.lsp")
require("config.mini")
require("config.theme")
require("config.treesitter")
require("config.ui")
