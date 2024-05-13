vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.guicursor = ""

opt.nu = true
opt.relativenumber = true

-- indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true --mixed case is now case-sensitive
opt.hlsearch = true
opt.incsearch = true

opt.cursorline = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8
opt.isfname:append("@-@")

opt.updatetime = 250

-- vim.opt.colorcolumn = "80"
