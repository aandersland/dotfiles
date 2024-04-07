require("tokyonight").setup({
	style="moon",
	transparency=true,
	terminal_colors=true,
	styles = {
		comments = {italic = false},
		keywords = {italic = true},
		sidbars = "dark",
		floats = "dark",
	},
	vim.cmd("colorscheme tokyonight")
})
