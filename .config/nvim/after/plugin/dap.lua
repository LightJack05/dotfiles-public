vim.keymap.set('n', '<leader>dr', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>ds', function() require('dap').step_over() end)
vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end)
vim.keymap.set('n', '<leader>du', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dB', function() require('dap').set_breakpoint() end)
--vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set("n", "<leader>dt", function() require("dap").terminate() end)

local home = os.getenv("HOME")


-- Python

local dap = require('dap')
dap.configurations.python = {
	{
		-- The first three options are required by nvim-dap
		type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
		request = 'launch',
		name = "Launch file",

		-- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

		program = "${file}", -- This configuration will launch the current file if used.
		pythonPath = function()
			-- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
			-- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
			-- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
			--local cwd = vim.fn.getcwd()
			--if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
			--  return cwd .. '/venv/bin/python'
			--elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
			--  return cwd .. '/.venv/bin/python'
			--else
			--  return '/usr/bin/python'
			--end
			return '/usr/bin/python'
		end,
		console = 'externalTerminal'
	},
}

local dap = require('dap')
dap.adapters.python = function(cb, config)
	if config.request == 'attach' then
		---@diagnostic disable-next-line: undefined-field
		local port = (config.connect or config).port
		---@diagnostic disable-next-line: undefined-field
		local host = (config.connect or config).host or '127.0.0.1'
		cb({
			type = 'server',
			port = assert(port, '`connect.port` is required for a python `attach` configuration'),
			host = host,
			options = {
				source_filetype = 'python',
			},
		})
	else
		cb({
			type = 'executable',
			command = home .. '/.local/share/nvim/mason/packages/debugpy/debugpy-adapter',
			options = {
				source_filetype = 'python',
			},
		})
	end
end

-- Dotnet

dap.adapters.coreclr = {
	type = 'executable',
	command = home .. '/.local/share/nvim/mason/bin/netcoredbg',
	args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
	{
		type = "coreclr",
		name = "launch - netcoredbg",
		request = "launch",
		program = function()
			return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
		end,
		console = 'externalTerminal'
	},
}

-- go

dap.adapters.delve = {
	type = 'server',
	port = '${port}',
	executable = {
		command = 'dlv',
		args = { 'dap', '-l', '127.0.0.1:${port}' },
	}
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
	{
		type = "delve",
		name = "Debug",
		request = "launch",
		program = "${file}",
		console = 'externalTerminal'
	},
	{
		type = "delve",
		name = "Debug test", -- configuration for debugging test files
		request = "launch",
		mode = "test",
		console = 'externalTerminal',
		program = "${file}"
	},
	-- works with go.mod packages and sub packages
	{
		type = "delve",
		name = "Debug test (go.mod)",
		request = "launch",
		mode = "test",
		program = "./${relativeFileDirname}",
		console = 'externalTerminal'
	}
}


-- C
local dap = require("dap")
dap.adapters.gdb = {
	type = "executable",
	command = "gdb",
	args = { "-i", "dap" }
}

local dap = require("dap")
dap.configurations.c = {
	{
		name = "Launch",
		type = "gdb",
		request = "launch",
		program = vim.fn.getcwd() .. "/bin/main",
		cwd = "${workspaceFolder}",
		stopAtBeginningOfMainSubprogram = false,
		console = 'externalTerminal'
	},
}


require("dapui").setup()
