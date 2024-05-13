return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
	keys = {
		{ "<leader>tx", "<cmd>TroubleToggle<CR>", desc = "Open/close list" },
		{ "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "workspace diagnostics" },
		{ "<leader>td", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "document diagnostics" },
		{ "<leader>tq", "<cmd>TroubleToggle quickfix<CR>", desc = "quickfix list" },
		{ "<leader>tl", "<cmd>TroubleToggle loclist<CR>", desc = "location list" },
		{ "<leader>tt", "<cmd>TodoTrouble<CR>", desc = "todos list" },
	},
}
