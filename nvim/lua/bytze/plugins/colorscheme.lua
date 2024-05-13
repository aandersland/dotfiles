return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        local transparent = true

        require("tokyonight").setup({
            transparent = transparent,
    })
        vim.cmd("colorscheme tokyonight")
    end,
}
