vim.g.mapleader = " "

vim.keymap.set("i","jj", "<Esc>", { noremap = false })

vim.keymap.set("n", "QQ", ":q!<enter>", { noremap=false })
vim.keymap.set("n", "WW", ":w!<enter>", { noremap=false })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
