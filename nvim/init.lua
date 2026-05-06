vim.g.mapleader=" "

require("config.mini")
require("config.treesitter")
require("config.lsp")
require("config.nvim-tree")
require("config.theme")
require("config.go")
require("config.keys")
require("config.completions")

vim.cmd[[colorscheme koda-dark]]
