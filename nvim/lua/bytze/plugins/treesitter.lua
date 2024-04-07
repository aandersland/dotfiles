require("nvim-treesitter.configs").setup({
  ensure_installed = { 
    "python","rust","javascript","bash", "lua", 
    "vim", "vimdoc", "query", "go", "markdown", 
    'markdown_inline', 'sql', 'regex' },

  sync_install = false,
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
})
