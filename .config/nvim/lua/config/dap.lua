local dap, dapui = require("dap"), require("dapui")
dapui.setup()
require("mason-nvim-dap").setup()

-- Adapters + configurations for Python, C#, Go, C
-- (same as your old config, just organized)
dap.adapters.python = function(cb, config)
  local home = os.getenv("HOME")
  if config.request == "attach" then
    local port = (config.connect or config).port
    local host = (config.connect or config).host or "127.0.0.1"
    cb({ type = "server", port = port, host = host, options = { source_filetype = "python" } })
  else
    cb({
      type = "executable",
      command = home .. "/.local/share/nvim/mason/packages/debugpy/debugpy-adapter",
      options = { source_filetype = "python" },
    })
  end
end
dap.configurations.python = {
  { type = "python", request = "launch", name = "Launch file", program = "${file}", pythonPath = "/usr/bin/python", console = "externalTerminal" }
}

dap.adapters.coreclr = { type = "executable", command = os.getenv("HOME") .. "/.local/share/nvim/mason/bin/netcoredbg", args = { "--interpreter=vscode" } }
dap.configurations.cs = {
  { type = "coreclr", request = "launch", name = "launch - netcoredbg", program = function() return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/", "file") end, console = "externalTerminal" }
}

dap.adapters.delve = { type = "server", port = "${port}", executable = { command = "dlv", args = { "dap", "-l", "127.0.0.1:${port}" } } }
dap.configurations.go = {
  { type = "delve", request = "launch", name = "Debug", program = "${file}", console = "externalTerminal" },
  { type = "delve", request = "launch", name = "Debug test", mode = "test", program = "${file}", console = "externalTerminal" },
  { type = "delve", request = "launch", name = "Debug test (go.mod)", mode = "test", program = "./${relativeFileDirname}", console = "externalTerminal" }
}

dap.adapters.gdb = { type = "executable", command = "gdb", args = { "-i", "dap" } }
dap.configurations.c = {
  { type = "gdb", request = "launch", name = "Launch", program = vim.fn.getcwd() .. "/bin/main", cwd = "${workspaceFolder}", stopAtBeginningOfMainSubprogram = false, console = "externalTerminal" }
}

dap.listeners.before.attach.dapui_config = function() require("nvim-tree.api").tree.close(); dapui.open() end
dap.listeners.before.launch.dapui_config = function() require("nvim-tree.api").tree.close(); dapui.open() end

-- Keymaps

vim.keymap.set("n", "<leader>dr", dap.continue)
vim.keymap.set("n", "<leader>ds", dap.step_over)
vim.keymap.set("n", "<leader>di", dap.step_into)
vim.keymap.set("n", "<leader>du", dap.step_out)
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dB", dap.set_breakpoint)
vim.keymap.set("n", "<leader>dl", dap.run_last)
vim.keymap.set("n", "<leader>dt", dap.terminate)
vim.keymap.set("n", "<leader>do", function() require("nvim-tree.api").tree.close(); dapui.open() end)
vim.keymap.set("n", "<leader>dc", dapui.close)
