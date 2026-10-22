vim.g.mapleader=" "

vim.o.termguicolors=true

vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.shiftwidth=4

vim.o.expandtab=true
vim.o.smartindent=true
vim.o.autoindent=true

vim.o.scrolloff=8

vim.o.number=true
vim.o.relativenumber=true
vim.o.cursorline=true
vim.o.signcolumn="yes"

local map = vim.keymap.set
vim.diagnostic.config({ visual_text = true })

vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
    { src = 'https://github.com/oskarnurm/koda.nvim', version = 'main' },
    { src = 'https://github.com/folke/which-key.nvim', version = 'main' },
    { src = 'https://github.com/Bekaboo/dropbar.nvim', version = 'master' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua', version = 'master' },
})


require('mini.statusline').setup()
require('mini.tabline').setup()
require("mini.pairs").setup()
require('mini.starter').setup()
require('mini.git').setup()
require('dropbar').setup()
require('which-key').setup()
require("nvim-tree").setup()

vim.cmd("colorscheme koda")


vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, {
                autotrigger = true,
            })
        end
    end,
})

vim.opt.complete:append('o')
vim.opt.complete:append('i')
vim.opt.completeopt={ 'menuone', 'noselect' }
vim.o.pumheight=5
vim.o.pumborder='rounded'

map('i', '<C-Space>', function()  vim.lsp.completion.get() end)
map('n', '<Leader>e','<cmd>NvimTreeToggle<CR>', { desc = "Explorer"})

vim.lsp.enable({ "clangd" , "typescript-language-server", "gopls", "texlab" })

