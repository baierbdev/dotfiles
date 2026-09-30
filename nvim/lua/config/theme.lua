require("catppuccin").setup({
    flavour = "mocha", 
    background = {  
        light = "latte",
        dark = "mocha",
    },
})

require("colorizer").setup({
  options = { parsers = { css = true } },
})

vim.cmd.colorscheme "catppuccin-nvim"
