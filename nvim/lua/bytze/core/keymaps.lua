vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", { noremap = false })

keymap.set("n", "QQ", ":q!<enter>", { noremap = false })
keymap.set("n", "WW", ":w!<enter>", { noremap = false })

-- splits
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wq", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>ww", ":w!<enter>", { desc = "Save current split" })

keymap.set("n", "<leader>sqo", "<cmd>copen<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>sqc", "<cmd>cclose<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>sqn", "<cmd>cnext<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>sqp", "<cmd>cprev<CR>", { noremap = true, silent = true })

keymap.set("n", "<leader>fn", vim.cmd.Ex)

keymap.set("n", "B", "^", { noremap = false, desc = "start of line" })
keymap.set("n", "E", "$", { noremap = false, desc = "end of line" })

-- move rows
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<cr>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
--keymap.set("n", "n", "nzzzv")
--keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>fm", vim.lsp.buf.format, { desc = "Format file" })

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
