require('catppuccin').setup({
    flavour = 'mocha',
    transparent_background = true,
    integrations = {
        harpoon = true,
        cmp = true,
        mason = true,
        treesitter = true,
        telescope = true,
    },
})

vim.cmd.colorscheme('catppuccin')
