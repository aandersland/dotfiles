return {
	"mfussenegger/nvim-dap",
	"nvim-neotest/nvim-nio",
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		config = function()
			local dap, dapui, daptext = require("dap"), require("dapui"), require("nvim-dap-virtual-text")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			dapui.setup()
			daptext.setup()

			vim.fn.sign_define(
				"DapBreakpoint",
				{ text = "🔴", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
			)

			-- Debugger
			vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", { noremap = true })
			vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
			vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>dr",
				":lua require('dapui').open({reset = true})<CR>",
				{ noremap = true }
			)
			vim.api.nvim_set_keymap("n", "<leader>m", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>ht",
				":lua require('harpoon.ui').toggle_quick_menu()<CR>",
				{ noremap = true }
			)
		end,
	},
}, {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap-python",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dappy = require("dap-python")
		dappy.test_runner = "pytest"
		dappy.setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")

		local keymap = vim.keymap

		keymap.set("n", "<leader>dn", function()
			require("dap-python").test_method()
		end, { desc = "Run test method" })
		keymap.set("n", "<leader>df", function()
			require("dap-python").test_class()
		end, { desc = "Run test class" })
		keymap.set("n", "<leader>ds", function()
			require("dap-python").debug_selection()
		end, { desc = "Run selection" })
	end,
}
