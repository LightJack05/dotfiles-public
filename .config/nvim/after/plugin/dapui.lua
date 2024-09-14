require("dapui").setup()

local nvimtree = require("nvim-tree.api")
local dap, dapui = require("dap"), require("dapui")

vim.keymap.set("n", "<leader>do", function ()
	nvimtree.tree.close()
	dapui.open()
end)
vim.keymap.set("n", "<leader>dc", function ()
	dapui.close()
end)

dap.listeners.before.attach.dapui_config = function()
	nvimtree.tree.close()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	nvimtree.tree.close()
	dapui.open()
end
--dap.listeners.before.event_terminated.dapui_config = function()
--	dapui.close()
--end
--dap.listeners.before.event_exited.dapui_config = function()
--	dapui.close()
--end
